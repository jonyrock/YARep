<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Cice.Models.Question>" %>

<% 
	var question = Model;
	var dateStr = Html.RenderDate(question.CreationTime);
%>
	<span><%= question.AuthorName %></span>|
	<% if (Request.IsAuthenticated) { %>
		<% if (!String.IsNullOrEmpty(question.AuthorEmail)) { %> 
			<span><%= question.AuthorEmail %></span>| 
		<% } %>
		<% if (!String.IsNullOrEmpty(question.AuthorPhone)) {
		 
		  %> 
			<span><%= question.AuthorPhone %></span>| 
		<% } %>
	<% } %> 
	<time datetime="<%= dateStr %>"><%= dateStr %></time>					
