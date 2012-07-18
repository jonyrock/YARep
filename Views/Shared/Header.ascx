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
		
		<a href="/" class="c1" id="c1" runat="server">Главная</a>
		<a href="<%= Url.Action("About", "Home") %>" class="c2" id="c2">О cicé</a>
		<a href="<%= Url.Action("Active", "Home") %>" class="c3" id="c3">Активные вещества</a>
		<a href="<%= Url.Action("Formula", "Home") %>" class="c4" id="c4">Формула</a>
		<a href="<%= Url.Action("Goods", "Home") %>" class="c5" id="c5">Продукты</a>
		<a href="<%= Url.Action("Index", "Faq") %>" class="c6" id="c6">Вопрорсы и ответы</a>
		<a href="<%= Url.Action("Index", "Theory") %>" class="c7" id="c7">Теория и практика</a>
				
	</div>

	<div class="grCo grl"></div><div class="grCo grr"></div>

</div>

