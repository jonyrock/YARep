<%@ Page Language="C#" MasterPageFile="~/Views/Shared/MasterPage.master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="TitleHolderContent" ContentPlaceHolderID="TitleHolder" runat="server"> 
	Контакты Сice
</asp:Content>

<asp:Content ID="contentId" ContentPlaceHolderID="PagePlaceHolder" runat="server">

	<%= Html.SliderStatic("/Content/images/slide8.jpg")%>
	
<div id="pageTextHolder" class="innerpage">
		
		<div style="width:461px; text-align:justify; float:left" >
			
			<div style="background:url('/Content/Images/cice_title.jpg') no-repeat center; height:75px">            
				<h2 class="violet" style="line-height:70px">Контакты</h2>
			</div>
		
			<p> <br />
			<strong>Санкт-Петербург</strong> <br />
			190068, ул. Садовая 54, офис 112 <br />
			Контактный телефон: +7(911) 720-19-18 <br />
			<br />

			<strong>Москва</strong> <br />
			Контактный телефон: +7(905) 754-10-65 <br />

			<br /><strong>Астана</strong> <br />
			Контактный телефон: +7(705) 547-17-58<br />

			<br /><strong>Сахалин</strong> <br />
			Контактный телефон: +7(914) 649-90-05<br />
		   
<br /><br />
 <strong>Email:</strong> 
	<script language="javascript"> document.write("cice" + "cosmetics@" + "gmail.com"); </script>


</p>
			

</div>

		<div style="clear:both"></div>

	</div>

	<% Html.RenderPartial("HexMenu", "/Content/images/grad4.jpg"); %>

</asp:Content>

