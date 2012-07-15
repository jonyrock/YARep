using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Cice.Models;

namespace Cice.Controllers
{
	public class FaqController : Controller
	{
		//
		// GET: /Faq/

		public ActionResult Index(int page = 1) {
			// TODO : вернуть список вопросов

			var questions = new List<Question>();


			return View();
		}

		public ActionResult Question(int id) {
			if (id < 0) {
				throw new ArgumentException("Id can't be negative");
			}

			var q = new Question();
			q.Title = "Как мне подобрать правильные средства ухода и декоративную косметику?";
			q.AuthorName = "Татьяна";
			q.CreationTime = DateTime.Parse("03/01/2009 05:42:00");
			q.Text = "Ощущение «тяжести» на лице совершенно не означает, что кожа перегружена. Вы можете спокойно использовать тональные средства даже максимального покрытия - они не способны оказать негативное воздействие на кожу. В редких случаях косметические продукты с высоким уровнем SPF или водостойкие тональные средства могут вызвать ощущение «тяжести» на коже, потому что они содержат компоненты, которые поглощают УФ-лучи, или обладают водостойкими свойствами. При появлении каких-либо проблем с кожей немедленно прекратите использование продукта.При появлении акне рекомендуется прекратить использование тональных средств, которые могут только осложнить ситуацию.";
			q.AuthorPhone = "8 911 299 16 15";
			q.AuthorEmail = "gmpota@gmail.com";
			ViewData.Model = q;
			

			return View();
		}

	}
}
