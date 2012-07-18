using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cice.Controllers {
	[HandleError]
	public class HomeController : Controller {
		public ActionResult Index() { return View();}
		public ActionResult About() { return View(); }
		public ActionResult Active() { return View(); }
		public ActionResult Formula() { return View(); }
		public ActionResult Goods() { return View(); }
		public ActionResult Partners() { return View(); }
		public ActionResult Theory() { return View(); }
	}
}
