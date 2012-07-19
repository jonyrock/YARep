<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<div id="topHolder">

	<div id="topLinksLine">
		
		<span id="logosHolder"></span>
		<a class="m_question" href="<%= Url.Action("Index", "Faq") %>"> Задать вопрос специалисту </a>
		<div id="topLittleTinks"> 
			<a href="<%= Url.Action("About", "Home") %>">О нас</a> | 
		   
			<a href="<%= Url.Action("Cice", "Home") %>">Контакты</a>   
		</div>

	</div>
	

	<div id="topMenuLine">

<% Html.RenderPartial("MaybeSelectedLink", new ViewHelpers.MaybeSelectedLinkModel() {
	   Index = 1,
	   Text = "Главная",
	   Url = "/"
   });
%>
<% Html.RenderPartial("MaybeSelectedLink", new ViewHelpers.MaybeSelectedLinkModel() {
	   Index = 2,
	   Text = "О cicé",
	   Url = Url.Action("About", "Home")
   });
%>
<% Html.RenderPartial("MaybeSelectedLink", new ViewHelpers.MaybeSelectedLinkModel() {
	   Index = 3,
	   Text = "Активные вещества",
	   Url = Url.Action("Active", "Home")
   });
%>
<% Html.RenderPartial("MaybeSelectedLink", new ViewHelpers.MaybeSelectedLinkModel() {
	   Index = 4,
	   Text = "Формула",
	   Url = Url.Action("Formula", "Home")
   });
%>
<% Html.RenderPartial("MaybeSelectedLink", new ViewHelpers.MaybeSelectedLinkModel() {
	   Index = 5,
	   Text = "Продукты",
	   Url = Url.Action("Goods", "Home")
   });
%>
<% Html.RenderPartial("MaybeSelectedLink", new ViewHelpers.MaybeSelectedLinkModel() {
	   Index = 6,
	   Text = "Вопросы и ответы",
	   Url = Url.Action("Index", "Faq")
   });
%>
<% Html.RenderPartial("MaybeSelectedLink", new ViewHelpers.MaybeSelectedLinkModel() {
	   Index = 7,
	   Text = "Теория и практика",
	   Url = Url.Action("Index", "Theory")
   });
%>
				
	</div>

	<div class="grCo grl"></div><div class="grCo grr"></div>

</div>

