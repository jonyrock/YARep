<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Cice.Models.Question>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%= Model.Title %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	
	<% var question = Model; %>

	<div class="img_block">
		<a class="logo" href="#">сicé<span>safer skincare</span></a>
		<img src="/Content/Images/qaa_saver.png" alt="Вопросы и ответы"/>
	</div>
	<div class="content_container">
		<div class="title_qaa">
			<h1>Вопросы и ответы</h1>
			<img src="/Content/Images/title_qaa.png" alt=""/>
		</div>
	</div>
	<div class="latest_com">
		<a class="latest" href="index.html">< Назад к списку</a>
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
							<span class="admin_title"></span>|<time datetime="2012-05-15">15 мая 2012, 17:00</time>
						</div>
						<div class="com_content">
							<div class="answer"> Ответ </div>
							<p>
								Ощущение «тяжести» на лице совершенно не означает, что кожа перегружена. Вы можете спокойно использовать тональные средства даже максимального покрытия - они не способны оказать негативное воздействие на кожу. В редких случаях косметические продукты с высоким уровнем SPF или водостойкие тональные средства могут вызвать ощущение «тяжести» на коже, потому что они содержат компоненты, которые поглощают УФ-лучи, или обладают водостойкими свойствами. При появлении каких-либо проблем с кожей немедленно прекратите использование продукта.При появлении акне рекомендуется прекратить использование тональных средств, которые могут только осложнить ситуацию.
							</p>
						</div>
					</article>
				</li>
				<% } %>

				<% if (Request.IsAuthenticated) { %>
				<li>
					<% using (Html.BeginForm()) { %>
						<%= Html.Hidden("Id", Model.Id) %>
						<%= Html.TextArea("Response", Model.Response) %>
						<p> <button class="b_answer" type="submit" title="Пустой ответ - удаление ответа." >Ответить</button> </p>
					<% } %>
				</li>
				<% } %>

				</ul>

				
			</div>
			
		</div>

	</div>

</asp:Content>
