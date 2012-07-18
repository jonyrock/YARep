<%@ Page Language="C#" MasterPageFile="~/Views/Shared/MasterPage.master" Inherits="System.Web.Mvc.ViewPage<Cice.Models.LogOnModel>" %>


<asp:Content ID="loginContent" ContentPlaceHolderID="PagePlaceHolder" runat="server">
	
	<div style="padding:20px;">
	<h2>Log On</h2>
	<p>
		Please enter your username and password.
	</p>

	<% using (Html.BeginForm()) { %>
		<%= Html.ValidationSummary(true, "Login was unsuccessful. Please correct the errors and try again.") %>
		<div>
			<fieldset style="text-align:center">
				<legend>Account Information</legend>
				
				<div class="editor-label">
					<%= Html.LabelFor(m => m.UserName) %>
				</div>
				<div class="editor-field">
					<%= Html.TextBoxFor(m => m.UserName) %>
					<%= Html.ValidationMessageFor(m => m.UserName) %>
				</div>
				
				<br />
				<div class="editor-label">
					<%= Html.LabelFor(m => m.Password) %>
				</div>
				<div class="editor-field">
					<%= Html.PasswordFor(m => m.Password) %>
					<%= Html.ValidationMessageFor(m => m.Password) %>
				</div>
				
				<br />
				<div class="editor-label">
					<%= Html.CheckBoxFor(m => m.RememberMe) %>
					<%= Html.LabelFor(m => m.RememberMe) %>
				</div>
				<br />
				<p>

					<input type="submit" value="Log On" />
				</p>
			</fieldset>
		</div>
	<% } %>

	</div>

</asp:Content>
