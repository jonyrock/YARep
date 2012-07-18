<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>


<div id="bottomHexMenu" style="background:url('<%= Model %>')">

    <a href="/About.aspx" class="h1" runat="server" id="h1" > О Cice </a>
    <a href="/Active.aspx" class="h2" runat="server" id="h2" > Активные элементы </a>
    <a href="/Formula.aspx" class="h3" runat="server" id="h3" > Формула S+A+F+E</a>
   <%-- <a href="/Goods.aspx" class="h4" runat="server" id="h4" > Продукция cicé </a>
    <%-- <a href="/Shop.aspx" class="h5" runat="server" id="h5" > Магазин </a> 
    <a href="/Theory.aspx" class="h6" runat="server" id="h5" > Теория и практика </a>--%>

</div>
