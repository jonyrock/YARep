﻿using System;
using System.Collections.Generic;
using System.Diagnostics.CodeAnalysis;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using System.Web.Security;
using Cice.Models;
using System.Configuration;

namespace Cice.Controllers {

	[HandleError]
	public class AccountController : Controller {

		public IFormsAuthenticationService FormsService { get; set; }
		public IMembershipService MembershipService { get; set; }

		protected override void Initialize(RequestContext requestContext) {
			if (FormsService == null) { FormsService = new FormsAuthenticationService(); }
			if (MembershipService == null) { MembershipService = new AccountMembershipService(); }

			base.Initialize(requestContext);
		}

		// **************************************
		// URL: /Account/LogOn
		// **************************************

		public ActionResult Index() {
			return View();
		}

		[HttpPost]
		public ActionResult Index(LogOnModel model, string returnUrl) {
			if (ModelState.IsValid) {
				if (MembershipService.ValidateUser(model.UserName, model.Password, 
					ConfigurationManager.AppSettings["admin_password_double_hash"])) {
					FormsService.SignIn(model.UserName, model.RememberMe);
					if (!String.IsNullOrEmpty(returnUrl)) {
						return Redirect(returnUrl);
					} else {
						return RedirectToAction("Index", "Faq");
					}
				} else {
					ModelState.AddModelError("", "The user name or password provided is incorrect.");
				}
			}

			// If we got this far, something failed, redisplay form
			return View(model);
		}

		// **************************************
		// URL: /Account/LogOff
		// **************************************

		public ActionResult LogOff() {
			FormsService.SignOut();

			return RedirectToAction("Index", "Faq");
		}

	}
}
