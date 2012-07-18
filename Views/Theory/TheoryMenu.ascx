<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<p runat="server" id="l1"> <a href="<%= Url.Action("Index", "Theory") %>" class="olive" style="display:block"><span class="arrowText">►</span>Теория и практика управления внешностью</a></p>
<p runat="server" id="l2"> <a href="<%= Url.Action("Daily", "Theory") %>" class="olive" style="display:block"><span class="arrowText">►</span>Суточная Программа <br/> «Побалуй свою кожу» </a></p>
<p runat="server" id="l3"> <a href="<%= Url.Action("Manual", "Theory") %>" class="olive" style="display:block"><span class="arrowText">►</span>Применение и дозировка <br/> продуктов Cicé</a></p>
<p runat="server" id="l4"> <a href="<%= Url.Action("Homecare", "Theory") %>" class="olive" style="display:block"><span class="arrowText">►</span>Домашний уход</a></p>
