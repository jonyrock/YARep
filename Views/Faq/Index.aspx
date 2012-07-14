<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

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
<div class="page_navigation">
		<ul>
			<li class="active_page"><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
		</ul>
		<a class="next" href="#">Следующая</a>
	</div>
<div class="comments">
		<div class="content_container">
			<ul>
				<li>
					<article>
					<a href="/quastions.html" class="other_com"></a>
					<h2><%= Html.ActionLink("Как мне подобрать правильные средства ухода и декоративную косметику?", "Question", new { id = 1 })%></h2>
					<div class="com_info">
						<span>Татьяна</span>|<time datetime="2012-05-15">15 мая 2012, 16:00</time>
					</div>
					<div class="com_content">
						<div class="no_answer">
							Ответа пока нет
						</div>

					</div>
					<div class="more_info">
						<a href="quastions.html">Подробнее</a>|<a href="quastions.html">Комментарии (1)</a>
					</div>
					</article>
				</li>
				<li>
					<article>
					<a href="quastions.html" class="other_com"></a>
					<h2>Как мне подобрать правильные средства ухода и декоративную косметику?</h2>
					<div class="com_info">
						<span>Татьяна</span>|<time datetime="2012-05-15">15 мая 2012, 16:00</time>
					</div>
					<div class="com_content">
						<div class="answer">
							Ответ
						</div>
						<p>
							Начните с диагностики кожи для определения ее типа и состояния. Зарегистрируйтесь в Клубе Clinique
							и сохраните в своем профиле результаты диагностики кожи вместе с рекомендуемыми Вам продуктами
							и оттенками. Вы также можете Задать вопрос нашему Эксперту, чтобы получить рекомендации по ...
						</p>
					</div>
					<div class="more_info">
						<a href="quastions.html">Подробнее</a>|<a href="quastions.html">Комментарии (0)</a>
					</div>
					</article>
				</li>
				<li>
					<article>
					<a href="quastions.html" class="other_com"></a>
					<h2>Как мне подобрать правильные средства ухода и декоративную косметику? Можете ли вы отправить мне пробники косметики Cice</h2>
					<div class="com_info">
						<span>Татьяна</span>|<time datetime="2012-05-15">15 мая 2012, 16:00</time>
					</div>
					<div class="com_content">
						<div class="answer">
							Ответ
						</div>
						<p>
							Начните с диагностики кожи для определения ее типа и состояния. Зарегистрируйтесь в Клубе Clinique
							и сохраните в своем профиле результаты диагностики кожи вместе с рекомендуемыми Вам продуктами
							и оттенками. Вы также можете Задать вопрос нашему Эксперту, чтобы получить рекомендации по ...
						</p>
					</div>
					<div class="more_info">
						<a href="quastions.html">Подробнее</a>|<a href="quastions.html">Комментарии (0)</a>
					</div>
					</article>
				</li>
				<li>
					<article>
					<a href="quastions.html" class="other_com"></a>
					<h2>Как мне подобрать правильные средства ухода и декоративную косметику?</h2>
					<div class="com_info">
						<span>Татьяна</span>|<time datetime="2012-05-15">15 мая 2012, 16:00</time>
					</div>
					<div class="com_content">
						<div class="no_answer">
							Ответа пока нет
						</div>
						<textarea></textarea>
						<button class="b_answer" type="submit">Ответить</button>
					</div>
					<div class="more_info">
						<a href="quastions.html">Подробнее</a>|<a href="quastions.html">Комментарии (1)</a>
					</div>
					</article>
				</li>
			</ul>
		</div>
	</div>
<div class="page_navigation">
		<ul>
			<li class="active_page"><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
		</ul>
		<a class="next" href="#">Следующая</a>
</div>	

</asp:Content>
