<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<div class="page_navigation">
<ul>
		
	<% for (int i = 1; i <= (int)ViewData["countPages"]; i++) { %>
		<li <%= (i == (int)ViewData["currentPage"]) ? "class=\"active_page\"" : "" %>>
			<%= (i == 1) ? 
				Html.ActionLink(i.ToString(), "", "Faq") :
				Html.ActionLink(i.ToString(), "Index", new { id = i })
			%>
		</li>
	<% } %> 
	
</ul>
</div>
