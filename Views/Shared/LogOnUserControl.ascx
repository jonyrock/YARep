<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<% if (Request.IsAuthenticated) { %>
      <span style="margin-left:70px">  <b>Administrator</b> | <%= Html.ActionLink("Log Off", "LogOff", "Account") %> </span>
<% } %> 
