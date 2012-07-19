<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<%@ Import Namespace="System.Linq" %>
<% 
	var linksBase = new string[][] { 
		new string[] { "h1", "/About.aspx", "О Cice" }, 
		new string[] { "h2", "/About.aspx", "Активные элементы" }, 
		new string[] { "h3", "/Formula.aspx", "Формула S+A+F+E" }, 
		new string[] { "h4", "/About.aspx", "Продукция cicé" }, 
		new string[] { "h6", "/About.aspx", "Теория и практика" } 
	};

	// R.A.Fisher and F. Yates algorithm
	var rand = new Random();
	for (int i = 0; i <= linksBase.Length - 1; i++) {
		int j = rand.Next(linksBase.Length - 1);
		if (i != j) {
			var t = linksBase[i];
			linksBase[i] = linksBase[j];
			linksBase[j] = t;
		}
	}
	
	var linksToOutput = linksBase.Take(3);
	
%>


<div id="bottomHexMenu" style="background:url('<%= Model %>')">

	<% foreach (var link in linksToOutput) { %>
		<a href="<%= link[1] %>" class="<%= link[0] %>" id="<%= link[0] %>" > <%= link[2] %> </a>
	<% } %>
	
</div>
