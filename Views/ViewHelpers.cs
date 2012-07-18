using System;
using System.Web.Mvc;

public static class ViewHelpers {

	static string[] mounths = { "января", "февраля", "марта", "апреля", "мая", "июня", "июля", 
						 "августа", "сентября", "октября", "ноября", "декабря" };

	public static string RenderDate(this HtmlHelper html, DateTime date) {
		return date.ToString("dd * yyyy, HH:mm").Replace("*", mounths[date.Month - 1]);
	}

	public static string TakeLimitedText(this HtmlHelper html, string text) {

		if (text == null) return "";
		int limit = 255;
		if (text.Length > limit)
			return text.Substring(0, limit - 3) + "...";
		else
			return text;

	}

	public static string SliderStatic(this HtmlHelper html, string backgroundUrl) {

		return
			"<div id=\"topSliderHolder\" class=\"SliderHolder\" style=\"background:url('" + backgroundUrl+ "')\">"
			+ "<div id=\"logoBack\"></div>"
			+ " <span id=\"logo\" style=\"background:url('/Content/Images/logo.png')\"></span></div>";
	}

}
