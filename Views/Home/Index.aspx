<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MasterPage.master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="TitleHolderContent" ContentPlaceHolderID="TitleHolder" runat="server"> 
	Cice Cosmetics
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="PagePlaceHolder" runat="server">

	<script type="text/javascript" src="/Scripts/jquery.timers-1.2.js"></script>
	<script type="text/javascript" src="/Scripts/index_slider.js"></script>

		<div id="topSliderHolder" class="SliderHolder" style="background:url('/Content/images/slide1.jpg')">
	<span id="logo" style="background:url('/Content/images/logo.png')"></span>

		<div id="slidesContentHolder"> 
			
			<div class="slidePanel">
				Разработано совместно с врачами ведущей клиники 
				пластической и эстетической хирургии в Германии
				<div style="background:url('/Content/Images/logo_cetrum.png') right no-repeat; width:95%; height:30px; margin-top:10px" ></div>
			</div>

			<div class="slidePanel">
				Сicé - пептидная косметика, основанная на научных разработках
			   
			</div>

			<div class="slidePanel">
				Идеально подходят для всех типов кожи
			   
			</div>

			<div class="slidePanel">
				Сicé - легкая, не содержащие гормонов косметика
			</div>

			<div class="slidePanel">
				Безопасность и качество Наших продуктов с формулой S+A+F+E
			</div>

			<div class="slidePanel">
				Уникальная упаковка с системой "airless"
			   
			</div>

			<div class="slidePanel">
				Высокоэффективность продуктов Cicé клинически доказана
				
			</div>

			<div id="sliderPoints">
				<span id="p1" class="hover">●</span>
				<span id="p2">●</span>
				<span id="p3">●</span>
				<span id="p4">●</span>
				<span id="p5">●</span>
				<span id="p6">●</span>
				<span id="p7">●</span>
			</div>

		</div>

	</div>

	<div style="background:url('/Content/images/slide_shadow.gif'); height:20px"></div>

	<div id="pageTextHolder">
		
		<div style="background:url('/Content/images/text1Effect.jpg') no-repeat 0px 11px; height:240px">
			
			<h2 style="margin-left:325px" class="sky">Эффект научно доказан</h2>

			<p style="margin-left:325px; text-align:justify;" >
				Совместная работа ученых в области молекулярной цитологии и врачей эстетической 
				хирургии clinic-im-centrum произвела революцию в косметологическом уходе, 
				благодаря исключительно высокоэффективным биологически активным веществам высокой 
				концентрации содержащихся в продуктах Сice.
			</p>

			<p style="text-align:justify; margin-left:485px">
				После большого успеха в эстетической хирургии 
				сегодня Вы можете быть уверенны в Вашей красоте 
				вместе с Cicé.
			</p>

			<p style="text-align:right;"  >
				<a href="<%= Url.Action("About", "Home") %>" class="sky"><span class="arrowText">►</span>Подробнее</a>
			</p>

		</div>

		<div style="background:url('/Content/images/text2Natural.jpg') no-repeat right; height:226px; margin-top:65px">
			
			<h2 class="yellow">Натуральный живой состав</h2>

			<p style="text-align:justify; width:366px">
				Сicé полна природы: основой всех кремов Сicé являются 
				высокоэффективные биологически активные вещества. Они предают упругусть, увлажняют и защищают вашу кожу.
				Каждое вещество само по себе маленькое научное чудо и все они в совокупности создали инновационную линию Сicé по уходу за кожей.
			 </p>

			<p style="text-align:right; width:315px; margin-top:12px"  >
				<a href="<%= Url.Action("Active", "Home") %>" class="yellow" ><span class="arrowText">►</span>Подробнее</a>
			</p>

		</div>

		<div style="background:url('/Content/images/text3Safe.jpg') no-repeat left; margin-top:65px; height:224px">
			
			<h2 style="margin-left:430px">Формула 
				<span class="violet">S</span>+<span class="lettuce">A</span>+<span class="sky">F</span>+<span class="olive">E</span>
			</h2>

			<p style="text-align:justify; margin-left:430px">
				<span class="violet" >scientific</span> –  Cicé, косметика рассматриваемая с научной стороны <br />
				<span class="lettuce">airless</span> – специальная система дозирования<br />
				<span class="sky">forceful</span> – высокоэффективность всех продуктов Сicé  
				является высокая концентрация биологически активных веществ<br />
				<span class="olive">effective</span> – действие Сicé это не волшебство, а современная наука:
				уже после нескольких применений Сicé кожа выглядит моложе,
				живительней и устойчивей
			</p>

			<p style="text-align:right; width:760px; margin-top:20px"  >
				<a href="<%= Url.Action("Formula", "Home") %>" class="violet"><span class="arrowText">►</span>Подробнее</a>
			</p>

		</div>

		<div style="background:url('/Content/images/text4Cice.jpg') no-repeat right; margin-top:65px">
			
			<h2 class="sea">Продукты Cicé</h2>

			<p style="text-align:justify; width:390px">
				Продукты сicé являются настоящими мультиталантами: они объединяют в себе принципы формулы S+A+F+E и предоставляют защиту, 
				регенерацию, влагу и активный антивозрастной уход <br />
			</p>

			<p>
				<a href="<%= Url.Action("Goods", "Home") %>#item1" class="sea"><span class="arrowText">►</span>Дневной крем</a><br />
				<a href="<%= Url.Action("Goods", "Home") %>#item2" class="sea"><span class="arrowText">►</span>Ночной крем</a><br />
				<a href="<%= Url.Action("Goods", "Home") %>#item3" class="sea"><span class="arrowText">►</span>Крем для контура глаз</a><br />
				<a href="<%= Url.Action("Goods", "Home") %>#item4" class="sea"><span class="arrowText">►</span>Лосьон для тела</a><br />
				<a href="<%= Url.Action("Goods", "Home") %>#item5" class="sea"><span class="arrowText">►</span>Пена для очистки кожи</a><br />
				<a href="<%= Url.Action("Goods", "Home") %>#item6" class="sea"><span class="arrowText">►</span>Гидромаска</a><br />
				<a href="<%= Url.Action("Goods", "Home") %>#item7" class="sea"><span class="arrowText">►</span>Омолаживающая сыворотка</a>
			</p>
			

		</div>

	</div>

</asp:Content>
