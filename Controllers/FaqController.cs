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

		
		public ActionResult Index(int id = 1) {
			int p = (id - 1) * ItemsPerPage;
			if (p > QuestionService.QuestionsCount || p < 0) throw new HttpException(404, "Page doesn't exist");
			int q = p + ItemsPerPage;
			ViewData.Model = QuestionService.GetQuestionsRange(p, q);
			ViewData["currentPage"] = id;
			ViewData["countPages"] = (QuestionService.QuestionsCount - 1) / ItemsPerPage + 1;
			return View();
		}

		public ActionResult AddQuestion(string name, string email, string phone, string title, string text) {
			if (String.IsNullOrEmpty(name)) ModelState.AddModelError("name", "Empty name");
			if (String.IsNullOrEmpty(title)) ModelState.AddModelError("name", "Empty name");

			if (ModelState.IsValid) {
				var q = new Question();
				q.AuthorName = name;
				q.AuthorEmail = email;
				q.AuthorPhone = phone;
				q.Title = title;
				q.Text = text;
				ViewData["saveStatus"] = QuestionService.SaveQuestion(q);
			}

			return RedirectToAction("Index");
		}

		public ActionResult Question(Guid id) {
			// TODO: null check
			ViewData.Model = QuestionService.GetFullQuestion(id);
			return View();
		}

		[HttpPost]
		public ActionResult Question(Guid id, string response) {
			ViewData["saved"] = true;
			return Question(id);
		}

	}
}
