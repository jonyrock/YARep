
using System;
using System.Web.Mvc;



public static class ViewHelpers {

	static string[] mounths = { "января", "февраля", "марта", "апреля", "мая", "июня", "июля", 
						 "августа", "сентября", "октября", "ноября", "декабря" };

	public static string RenderDate(this HtmlHelper html, DateTime date) {
		return date.ToString("dd * yyyy, HH:MM").Replace("*", mounths[date.Month - 1]);
	}

}
