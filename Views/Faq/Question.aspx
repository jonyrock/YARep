<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Cice.Models.Question>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%= Model.Title %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	
	<% var question = Model; %>

	<div class="img_block">
			<img src="/Content/Images/qaa_saver.jpg" alt="Вопросы и ответы"/>
	</div>
	<div class="content_container">
		<div class="title_qaa">
			<h1>Вопросы и ответы</h1>
			<img src="/Content/Images/title_qaa.png" alt=""/>
		</div>
	</div>
	<div class="latest_com">
		<script type="text/javascript">
			var prevLink = '<%= Url.Action("Index") %>';
			if (document.referrer.indexOf(window.location.hostname) != -1) {
				prevLink = "javascript: history.back()";
			}
			document.write("<a class=\"latest\" href=\"" + prevLink + "\">< Назад к списку</a>");
		</script>
	</div>
	<div class="comments">
		<div class="content_container">
			
			<div class="talk">
				
				<ul>
				<li>
					<article>
						<a href="#" class="other_com"></a>
						<h2>Как мне подобрать правильные средства ухода и декоративную косметику?</h2>
						<div class="talk_req com_info ">
							<% Html.RenderPartial("QuestionInfoLine", question); %>
						</div>
						<p>
							<%= question.Text %>
						</p>
						
						<% if (String.IsNullOrEmpty(question.Response)) { %>
							<div class="com_content"> <div class="no_answer"> Ответа пока нет </div> </div>
						<% } %>
						
					</article>
				</li>
				
				<% if (!Request.IsAuthenticated && !String.IsNullOrEmpty(question.Response)) { %>
				<li>
					<article class = "art_admin_comment">
						<div class="com_info talk_req">
							<span class="admin_title"></span>|
							<time datetime="<%= Html.RenderDate(question.ResponseCreationTime) %>"> 
								<%= Html.RenderDate(question.ResponseCreationTime) %> 
							</time>
						</div>
						<div class="com_content">
							<div class="answer"> Ответ </div>
							<p>
								<%= Model.Response %>
							</p>
						</div>
					</article>
				</li>
				<% } %>

				<% if (Request.IsAuthenticated) { %>
				<li>
					<% if (ViewData["saved"] != null) { %> <strong style="color:Green; font-size:smaller"> Ответ изменен. </strong>  <% } %>
					<% using (Html.BeginForm()) { %>
						<%= Html.TextArea("response", Model.Response) %>
						<p> <button class="b_answer" type="submit" title="Пустой ответ - удаление ответа." >Ответить</button> </p>
					<% } %>
				</li>
				<% } %>

				</ul>

				
			</div>
			
		</div>

	</div>

</asp:Content>
