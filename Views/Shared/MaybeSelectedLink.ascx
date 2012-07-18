<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<ViewHelpers.MaybeSelectedLinkModel>" %>
<% 
	var link = Model.Url;
	var path = Request.Path;
	bool isPrePath = path.IndexOf(link) != -1;
	int i = 10;
%>

<% if (!isPrePath || (link.Equals("/") && !path.Equals("/"))) { %>
<a href="<%= link %>" class="c<%= Model.Index %>" id="c<%= Model.Index %>">
	<%= Model.Text %>
</a>
<% } %>

<% if ((isPrePath && !link.Equals("/")) || (link.Equals(path))) { %>
	<h1 class="c<%= Model.Index %>"><%= Model.Text %></h1>
<% } %>