<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<div id="topHolder">

	<div id="topLinksLine">
		
		<span id="logosHolder">            
			
		</span>
		<div id="topLittleTinks"> 
			<a href="<%= Url.Action("About", "Home") %>">О нас</a> | 
		   
			<a href="<%= Url.Action("Cice", "Home") %>">Контакты</a>   
		</div>

	</div>
	

	<div id="topMenuLine">
		
		<a href="/" class="c1" id="c1" runat="server">главная</a>
		<a href="<%= Url.Action("About", "Home") %>" class="c2" id="c2">о cicé</a>
		<a href="<%= Url.Action("Active", "Home") %>" class="c3" id="c3">активные вещества</a>
		<a href="<%= Url.Action("Formula", "Home") %>" class="c4" id="c4">формула</a>
		<a href="<%= Url.Action("Goods", "Home") %>" class="c5" id="c5">продукты</a>
		<a href="<%= Url.Action("Index", "Faq") %>" class="c5" id="c5">Вопрорсы и ответы</a>
		<a href="<%= Url.Action("Index", "Theory") %>" class="c6" id="c6">теория и практика</a>
				
	</div>

	<div class="grCo grl"></div><div class="grCo grr"></div>

</div>

