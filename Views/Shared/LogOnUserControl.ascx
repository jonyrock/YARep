<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<% if (Request.IsAuthenticated) { %>
        <b>Administrator</b> | <%= Html.ActionLink("Log Off", "LogOff", "Account") %>
<% } %> 
     
