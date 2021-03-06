﻿<%@ Page Language="C#" MasterPageFile="~/Views/Shared/MasterPage.master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="TitleHolderContent" ContentPlaceHolderID="TitleHolder" runat="server"> 
	О косметике Сice
</asp:Content>

<asp:Content ID="aboutContent" ContentPlaceHolderID="PagePlaceHolder" runat="server">
	
	<%= Html.SliderStatic("/Content/images/slide2.jpg")%>

	<div id="pageTextHolder" class="innerpage">
		
		<div style="width:461px; text-align:justify; float:left" >
			
			<div style="background:url('/Content/images/about_cice_title.jpg') no-repeat right; height:70px">            
				<h2 class="sky" style="line-height:70px">Эффект научно доказан</h2>
			</div>
		
			<p>
			«Cossana AG» - предприятие, производящее косметику «Сicé»  и входящее в  клуб 
мировых лидеров индустрии красоты.
</p><p>
«Cossana AG» - дочерняя компания швейцарской «Athenion AG», 
разрабатывающая новые технологии и продукты для фармацевтической 
промышленности с 2005 г. </p><p>
Рождению уникальной  продукции по уходу за внешностью  «Сicé»  
предшествовало тесное сотрудничество ведущих специалистов сети немецких  
клиник пластической хирургии «Clinic  im Centrum» и ученых предприятия 
«Athenion AG». </p><p>
Эстетическая хирургия в начале 21 века развивалась мощными темпами и врачей 
перестали удовлетворять  линейки косметических препаратов, представленных на  
европейском рынке. Наступало время новых  и эффективных продуктов для 
ухода за пациентами после пластических операций.</p><p>
  В 2007 году специалисты компании  «Athenion AG», приступили к разработкам 
косметики, соответствовавшей требованиям хирургов «Clinic  im Centrum» и 
ожиданиям пациентов. В 2008 году в свет вышли три первых продукта новейшего 
поколения: «дневной уход», «ночной уход» и «забота о глазах». Косметика была 
доступна только пациентам  «Clinic  im Centrum» до 2009 года. Ученые и врачи 
плодотворно работали, чтобы  косметика «Сicé» стала доступна все большему 
числу нуждающихся в ней людей, прежде всего клиентам крупных институтов 
красоты Германии и Швейцарии.</p><p>
В настоящее время учеными группы  «Athenion AG», разработано семь 
инновационных продуктов. Два новых препарата Сicé проходят заключительные 
испытания и готовятся выйти на рынок к началу 2012 года.</p><p>
К счастью, эти великолепные кремы, сыворотки и маски, пользующиеся 
заслуженной любовью европейцев, узнали теперь и в России. Вы имеете 
возможность приобрести уникальные средства Сicé в нашем интернет - магазине.

</p>
		</div>

		<div style="float:left; width:212px; margin:75px 0px 0px 75px">
			
			<div style="width:206px; height:77px; margin:auto; background:url('/Content/images/clinic_centrum.jpg')">
				
			</div>

			<p>
				Рождению уникальной продукции по уходу за внешностью «Сicé» 
				предшествовало тесное сотрудничество ведущих специалистов сети немецких клиник
			</p>

		   

<br/>
  <h2 class="sky" >Статьи по теме</h2>
<br/>

<p> <a href="http://www.peptidebio.ru/news/110222.aspx" class="sky" ><span class="arrowText">►</span>«Нанопитание, или как прожить до 120 лет?»</a></p>
<p> <a href="http://www.vesti.ru/videos?vid=332106&cid=1000" class="sky" ><span class="arrowText">►</span>«Перспективы развития геронтологии в России и мире. Пептидная регуляция старения.»</a></p>
 
</div>

	</div>

		<div style="clear:both"></div>
	
	<% Html.RenderPartial("HexMenu", "/Content/images/grad2.jpg"); %>

</asp:Content>
