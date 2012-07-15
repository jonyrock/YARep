<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" 
	Inherits="System.Web.Mvc.ViewPage<List<Cice.Models.Question>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="img_block">
	
	<img src="/Content/Images/qaa_saver.jpg" alt="Вопросы и ответы"/>
</div>
<div class="content_container">
	<div class="title_qaa">
		<h1>Вопросы и ответы</h1>
		<img src="/Content/Images/title_qaa.png" alt=""/>
	</div>
</div>
<div class="qaa_content">
	<ul>
		<li>
			<p>
				Добро пожаловать на страницу Вопросов и ответов. 
				Здесь Вы найдете все ответы о средствах CICE.
				Вы также можете задать вопрос специалисту 
				заполнив форму для справа. 
				
			</p>
			<p>	
				Наши специалисты с радостью ответят на все
				Ваши вопросы.
			</p>
			<span class="qaa_admin">С уважением CICE cosmetics !</span>
		</li>
		<li>
			<form method="get" action="#">
				<label for="name">
					Имя:
				</label>
				<input name="name" id="name" type="text" required="required"/> <span class="star">*</span>
				<label for="email">
					E-mail:
				</label>
				<input name="name" id="email" type="email"/> <span class="star"></span>
				<label for="phone">
					Телефон:
				</label>
				<input name="name" id="phone" type="phone" /> <span class="star"></span>
				<label for="question">
					Вопрос:
				</label>
				<input name="question" id="question" type="text" maxlength="160" required="required" value="Напишите кратко свой вопроc" onfocus="if(this.value=='Напишите кратко свой вопроc'){this.value=''}" onblur="if(this.value==''){this.value='Напишите кратко свой вопроc'}"/> <span class="star">*</span>
				<p class="rest">Максимальное количество символов - <span>160</span></p>

				<label class="l_area" for="area">
					Дополнительные комментарии к вопросу:
				</label>
				<textarea id="area" required="required" value="Опишите вашу проблему более подробно " onfocus="if(this.value=='Опишите вашу проблему более подробно'){this.value=''}" onblur="if(this.value==''){this.value='Опишите вашу проблему более подробно'}"></textarea>
				<p class="pole"><span class="star">*</span> обязательные для заполнения поля</p>
				<button type="submit">Задать вопрос</button>
			</form>
		</li>
	</ul>

	</div>
<% Html.RenderPartial("Pages", ViewData); %>
<div class="comments">
	<div class="content_container">
		<ul>
	<% foreach (Cice.Models.Question question in ViewData.Model) {
		 string link = Url.Action("Question", new { id = question.Id });
		 string commentsCount = question.Comments.Count().ToString();
		 string cuttedResponse = "";
		 if (!String.IsNullOrEmpty(question.Response)) {
			if (question.Response.Length > 255)
				cuttedResponse = question.Response.Substring(0, 252) + "...";
		 }
	%>
			<li>
				<article>
				<a href="<%= link %>" class="other_com"></a>
				<h2><%= Html.ActionLink(question.Title, "Question", new { id = question.Id }) %></h2>
				<div class="com_info">
					<span><%= question.AuthorName %></span>|
					<% if (Request.IsAuthenticated) { %>
						<% if (!String.IsNullOrEmpty(question.AuthorEmail)) { %> 
							<span><%= question.AuthorEmail %></span>| 
						<% } %>
						<% if (!String.IsNullOrEmpty(question.AuthorPhone)) { %> 
							<span><%= question.AuthorPhone %></span>| 
						<% } %>
					<% } %> 
					<time datetime="<%= question.CreationTime.ToShortDateString() %>">
						<%= question.CreationTime.ToShortDateString() %></time>					
				</div>
				<div class="com_content">
					<% if (String.IsNullOrEmpty(question.Response)) { %>
						<div class="no_answer"> Ответа пока нет </div>
					<% } else {  %>
						<div class="answer"> Ответ </div>
						<p><%= cuttedResponse %> </p>
					<% } %>
				</div>
				<div class="more_info">
					<a href="<%= link %>">Подробнее</a>|<a href="<%= link %>">Комментарии (<%= commentsCount %>)</a>
				</div>
				</article>
			</li>
		<% } %>
		</ul>
	</div>
</div>
<% Html.RenderPartial("Pages", ViewData); %>

</asp:Content>
