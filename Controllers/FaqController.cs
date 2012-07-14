using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Cice.Controllers
{
    public class FaqController : Controller
    {
        //
        // GET: /Faq/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Question(int id) {
            return View();
        }

    }
}
