using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cice.Controllers
{
	public class CapController : Controller
	{
		//
		// GET: /Cap/

		public ActionResult Index()
		{
			return View();
		}

		[HttpPost]
		public ActionResult Index(string recaptcha_challenge_field, string recaptcha_response_field) {

			recaptcha_challenge_field = "03AHJ_VuvJBQlhMar-B8qvXZB0Ys4eYkMMKR2jEXlwMe40SBIoBwA4h-68WDkRVi4qdVRMEUrSkLR3fPiYfzwfd_qQf5yECSI8-36suQinyA0qVfEXHvRy_v9cGH6bUU36J-LcrCekovUIYeYcWL1u57y3qSs-zXv7-g";
			recaptcha_response_field = "rtiamin graves";

			Recaptcha.RecaptchaValidator validator = new Recaptcha.RecaptchaValidator();
			validator.PrivateKey = "6LdyJ9QSAAAAAKs_KEn1ARmTtNJJeJY7eEAZ_SXt";
			validator.RemoteIP = Request.UserHostAddress;
			validator.Challenge = recaptcha_challenge_field;
			validator.Response = recaptcha_response_field;

			var b = validator.Validate();
			return View();
		}


	}
}
