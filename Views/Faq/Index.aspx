<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterPage.master" 
	Inherits="System.Web.Mvc.ViewPage<List<Cice.Models.Question>>" %>

<asp:Content ID="Content2" ContentPlaceHolderID="PagePlaceHolder" runat="server">


<div id="faqContent">

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
			<% if(ViewData["saveStatus"] != null && (bool)ViewData["saveStatus"]  == true) { %>
				<div class="form_sent">
					<h2>Спасибо за Ваш интерес к косметике Сicé</h2>
					<p>
						Наши специалисты постараются ответить<br>
						на Ваш вопрос как можно скорее
					</p>
					<span>Постоянная ссылка на вопрос:</span> <br /><br />
					<!-- <button class="copy_btn" type="button">Скопировать ссылку</button> -->
					<div class="your_link">
						<% var link = Url.Action("Question", new { id = ViewData["newQId"] }); %>
						<a href="<%= link %>"><%= link %></a>
					</div>
					<span class="bottom_text">Перейдите по ней, чтобы проверить статус вашего вопроса</span>
				</div>
			<% } else { using (Html.BeginForm()) { %>
			<%  foreach (ModelState modelState in ViewData.ModelState.Values) {
						foreach (ModelError error in modelState.Errors) { %>
					<strong style="color:red; font-size:larger; line-height:18px; margin-left: 90px"> <%= error.ErrorMessage %> </strong> <br/>
				<% }} %>
			
				<label for="name"> Имя: </label>
				<input name="name" id="name" type="text" required="required" value="<%= ViewData["postName"] %>" /> <span class="star">*</span>
				<label for="email"> E-mail: </label>
				<input name="email" id="email" type="email" value="<%= ViewData["postEmail"] %>" /> <span class="star"></span>
				<label for="phone"> Телефон: </label>
				<input name="name" id="phone" type="text" value="<%= ViewData["postPhone"] %>" /> <span class="star"></span>
				<label for="question"> Вопрос: </label>
				<input name="title" id="question" type="text" maxlength="160" required="required" value="<%= ViewData["postTitle"] %>"  /> <span class="star">*</span>
				<p class="rest">Максимальное количество символов - <span>160</span></p>
				
				<label class="l_area" for="area">
					Дополнительные комментарии к вопросу:
				</label>
				<textarea name="text" id="area" required="required"><%= ViewData["postText"] %></textarea><span class="star"> *</span>
				<p class="pole"><span class="star">*</span> обязательные для заполнения поля</p> <br />
				<script type="text/javascript">
					$(function () {
						$("#captchaHolder").hide();
						$("#prePostFormButton").click(function () {
							$(this).hide();
							$("#postFormButton").show();
							$("#captchaHolder").fadeToggle();
						})
					});
				</script>
				<div id="captchaHolder" style="height:166px; padding-left:84px; display:none">
					<% var publicKey = ConfigurationManager.AppSettings["recaptha_public_key"]; %>
					<script type="text/javascript" src="https://www.google.com/recaptcha/api/challenge?k=<%=publicKey %>"> </script>
					<noscript><iframe src="https://www.google.com/recaptcha/api/noscript?k=<%=publicKey %>" height="300" width="500" frameborder="0"></iframe><br></noscript>
				</div>
				<button type="button" id="prePostFormButton">Задать вопрос</button>
				<button type="submit" id="postFormButton" style="display:none; margin-top:20px">Отправить</button>
			<% }} %>
		</li>
	</ul>

	</div>
<% Html.RenderPartial("Pages", ViewData); %>
<div class="comments">
	<div class="content_container">
		<ul>
	<% foreach (Cice.Models.Question question in ViewData.Model) {
		 string link = Url.Action("Question", new { id = question.Id });
		 string cuttedResponse = "";
		 if (!String.IsNullOrEmpty(question.Response)) {
			 cuttedResponse = Html.TakeLimitedText(question.Response);
		 }
	%>
			<li>
				<article>
				<a href="<%= link %>" class="other_com"></a>
				<h2> <%= Html.ActionLink(question.Title, "Question", new { id = question.Id }) %> </h2>
				<div class="com_info"> 
					<% Html.RenderPartial("QuestionInfoLine", question); %> 
				</div>
				<p>
					<%= Html.TakeLimitedText(question.Text) %>
				</p>
				<div class="com_content">
					<% if (String.IsNullOrEmpty(question.Response)) { %>
						<div class="no_answer"> Ответа пока нет </div>
					<% } else {  %>
						<div class="answer"> Ответ </div>
						<p><%= cuttedResponse %> </p>
					<% } %>
				</div>

				

				<div class="more_info">
					<a href="<%= link %>">Подробнее</a>
				</div>
				</article>
			</li>
		<% } %>
		</ul>
	</div>
</div>
<% Html.RenderPartial("Pages", ViewData); %>

</div>

</asp:Content>
