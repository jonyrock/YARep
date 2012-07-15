<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Cice.Models.Question>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	<%= Model.Title %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

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
			<ul>
				<li>
					<article>
					<a href="#" class="other_com"></a>
					<h2>Как мне подобрать правильные средства ухода и декоративную косметику?</h2>
					<div class="com_info">
						<span>Татьяна</span>|<time datetime="2012-05-15">15 мая 2012, 16:00</time>
					</div>
					<div class="com_content">
						<div class="no_answer">
							Ответа пока нет
						</div>
						<div class="addthis_toolbox addthis_default_style ">
							<a class="addthis_counter"></a>
						</div>
					</div>
					</article>
				</li>
			</ul>
			<div class="talk">
				<ul>
					<li>
						<article>
						<div class="com_info talk_req">
							<span>Татьяна</span>|<time datetime="2012-05-15">15 мая 2012, 16:00</time>
						</div>
						<p>
							Ощущение «тяжести» на лице совершенно не означает, что кожа перегружена. Вы можете спокойно использовать тональные средства даже максимального покрытия - они не способны оказать негативное воздействие на кожу.
							В редких случаях косметические продукты с высоким уровнем SPF или водостойкие тональные средства могут 	вызвать ощущение «тяжести» на коже, потому что они содержат компоненты, которые поглощают УФ-лучи, или обладают водостойкими свойствами. При появлении каких-либо проблем с кожей немедленно прекратите использование продукта.При появлении акне рекомендуется прекратить использование тональных средств, которые могут только осложнить ситуацию.
						</p>
						</article>
					</li>
					
					<li>
						<article class = "art_admin_comment">
						<div class="com_info talk_req">
						<span class="admin_title">cicé</span>|<time datetime="2012-05-15">15 мая 2012, 17:00</time>
					</div>
					<p class="admin_comment">
						Ощущение «тяжести» на лице совершенно не означает, что кожа перегружена. Вы можете спокойно использовать 	тональные средства даже максимального покрытия - они не способны оказать негативное воздействие на кожу.
						В редких случаях косметические продукты с высоким уровнем SPF или водостойкие тональные средства могут вызвать ощущение «тяжести» на коже, потому что они содержат компоненты, которые поглощают УФ-лучи, или обладают водостойкими свойствами. При появлении каких-либо проблем с кожей немедленно прекратите использование продукта.При появлении акне рекомендуется прекратить использование тональных средств, которые могут только осложнить ситуацию.
					</p>
					</article>
					</li>
				</ul>
			</div>
			
		</div>
		<div class="com_form">
			<div class="content_container">
				<a href="#" class="other_com_q"></a>
				<h2>Комментировать</h2>
				<form method="get" action="#">
					<label for="name">Имя:</label>
					<input name="name" id="name" type="text" required="required"/> <span class="star">*</span>
					<label class="l_area" for="area">Сообщение:</label>
					
					<textarea id="area" required="required"></textarea> <span class="star">*</span>
					<a href="http://html12.mdlv.ru/5/capcha.html" class="iframe">Отправить</a>
					<p class="pole"><span class="star">*</span> обязательные для заполнения поля</p>
					
				</form>
			</div>
		</div>
	</div>

</asp:Content>
