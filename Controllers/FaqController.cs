using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using Cice.Models;

namespace Cice.Controllers {
	public class FaqController : Controller {

		public const int ItemsPerPage = 10;

		public IQuestionsService QuestionService { get; set; }

		protected override void Initialize(RequestContext requestContext) {
			if (QuestionService == null) QuestionService = new XmlQuestionService();
			base.Initialize(requestContext);
		}

		[HttpGet]
		public ActionResult Index(int id = 1) {
			int p = (id - 1) * ItemsPerPage;
			if (p > QuestionService.QuestionsCount || p < 0) throw new HttpException(404, "Page doesn't exist");
			int q = p + ItemsPerPage;
			ViewData.Model = QuestionService.GetQuestionsRange(p, q);
			ViewData["currentPage"] = id;
			ViewData["countPages"] = (QuestionService.QuestionsCount - 1) / ItemsPerPage + 1;
			return View();
		}

		[HttpPost]
		[ValidateInput(false)]
		public ActionResult Index(string name, string email, string phone, string title, 
			string text, string recaptcha_challenge_field, string recaptcha_response_field) {

			if (String.IsNullOrEmpty(name)) ModelState.AddModelError("name", "Необходимо ввести имя");
			if (String.IsNullOrEmpty(title)) ModelState.AddModelError("title", "Необходимо ввести вопрос");
			if (String.IsNullOrEmpty(text)) ModelState.AddModelError("text", "Необходимо ввести текст вопроса");

			Recaptcha.RecaptchaValidator validator = new Recaptcha.RecaptchaValidator();
			validator.PrivateKey = "6LdyJ9QSAAAAAKs_KEn1ARmTtNJJeJY7eEAZ_SXt";
			validator.RemoteIP = Request.UserHostAddress;
			validator.Challenge = recaptcha_challenge_field;
			validator.Response = recaptcha_response_field;

			if (!validator.Validate().IsValid) {
				ModelState.AddModelError("text", "Неверный код");
			}

			var q = new Question();
			q.AuthorName = Server.HtmlEncode(name);
			q.AuthorEmail = Server.HtmlEncode(email);
			q.AuthorPhone = Server.HtmlEncode(phone);
			q.Title = Server.HtmlEncode(title);
			q.Text = Server.HtmlEncode(text);
			q.CreationTime = DateTime.Now;

			ViewData["postName"] = q.AuthorName;
			ViewData["postEmail"] = q.AuthorEmail;
			ViewData["postPhone"] = q.AuthorPhone;
			ViewData["postTitle"] = q.Title;
			ViewData["postText"] = q.Text;

			if (ModelState.IsValid) {
				ViewData["saveStatus"] = QuestionService.SaveQuestion(q);
				ViewData["newQId"] = q.Id;
			}
			return Index();
		}

		[HttpGet]
		public ActionResult Question(Guid id) {
			// TODO: null check
			ViewData.Model = QuestionService.GetFullQuestion(id);
			return View();
		}

		[HttpPost]
		[Authorize]
		[ValidateInput(false)]
		public ActionResult Question(Guid id, string response) {
			var q = QuestionService.GetFullQuestion(id);
			q.Response = response;
			q.ResponseCreationTime = DateTime.Now;
			QuestionService.UpdateQuestion(q);
			ViewData["saved"] = true;
			return Question(id);
		}

	}
}
