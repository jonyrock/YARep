<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
	<title>Index</title>
</head>
<body>
	<div>
	<% Html.BeginForm(); %>
	  <script type="text/javascript" src="https://www.google.com/recaptcha/api/challenge?k=6LdyJ9QSAAAAAOu4edeDUbpX-JOAkfDBwGUoA2dZ"> 
	  </script>
	<noscript>
	<iframe src="https://www.google.com/recaptcha/api/noscript?k=6LdyJ9QSAAAAAOu4edeDUbpX-JOAkfDBwGUoA2dZ"
	   height="300" width="500" frameborder="0"></iframe><br>
	</noscript>

	<input type="submit" value="Send" />
	<% Html.EndForm(); %>

	</div>
</body>
</html>
