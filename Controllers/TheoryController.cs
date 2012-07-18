using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cice.Controllers
{
	public class TheoryController : Controller
	{
		
		public ActionResult Index() { return View(); }
		public ActionResult Daily() { return View(); }
		public ActionResult Manual() { return View(); }
		public ActionResult Homecare() { return View(); }

	}
}
