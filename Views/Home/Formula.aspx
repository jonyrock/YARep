﻿<%@ Page Language="C#" MasterPageFile="~/Master/MasterPage.master" %>
<%@ Register Src="~/Tools/SliderStatic.ascx" TagPrefix="Cice" TagName="SliderStatic" %>
<%@ Register Src="~/Tools/HexMenu.ascx" TagPrefix="Cice" TagName="HexMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PagePlaceHolder" Runat="Server">
    
    <asp:PlaceHolder runat="server" ID="metaPageDescription" Visible="false">
        <span runat="server" id="pageNum">4</span>
        <span runat="server" id="title">Формула S+A+F+E</span>
        <span runat="server" id="keywords">Формула S+A+F+E</span>
        <span runat="server" id="description">Формула S+A+F+E</span>        
    </asp:PlaceHolder>

    <Cice:SliderStatic runat="server" BackgroundUrl="/images/slide4.jpg" />

    <div id="pageTextHolder" class="innerpage">
        
        <div style="width:461px; text-align:justify; float:left" >
            
            <div style="background:url('/images/formula_title.jpg') no-repeat right; height:83px">            
                
            <h2 class="violet" style="line-height:70px">Формула 
                <span class="violet">S</span>+<span class="lettuce">A</span>+<span class="sky">F</span>+<span class="olive">E</span>
            </h2>
            </div>
        
            <p>Доверять хорошо, контролировать лучше! Именно поэтому мы работаем с S+A+F+E формулой, которая гарантирует безопасность и качество Наших продуктов - поэтому Вы можете быть уверенны в том, что продукты Cice будут оказывать только безопасный и благоприятный уход за Вашей кожей.       
</p>
     <p><b><font color="#7b0055">Scientific (Научный)</font></b> - чтoбы Вы могли добиваться потрясающих результатов, управляя своей внешностью, наши ученые исследовали десятки тысяч природных компонентов. В лабораториях Cicé рождаются  исключительные продукты,  не содержащие бесполезных или опасных  веществ. Надежда многих поколений людей на то, что косметические средства когда-нибудь  помогут им восстанавливать и сохранять молодость кожи, обрела воплощение! </p>
     <p><b><font color="#a8b700">Airless (Безвоздушный)</font></b> - для того, что бы Вы  наслаждались процессом и плодами  действия по уходу за собой, с помощью продуктов Cicé, мы разработали уникальную упаковку, сохраняющую биологически активные вещества, очень чувствительные к воздействиям окружающей среды.    Упаковка с системой "airless" предотвращает контакт с кислородом и бактериями, сохраняя   только благотворные для Вашего здоровья вещества. Что бы получать наилучшие результаты, все упаковки наших продуктов снабжены дозаторами, обеспечивающими разумную порцию вещества, необходимую для одного сеанса косметического ухода за кожей.</p>
     <p><b><font color="#005960">Forceful (Сильный)</font></b> - Высочайшая концентрация биологически активных веществ в продуктах Cicé, дает человеческому организму необходимую энергию для достижения здоровой, восхитительной кожи. Это подтверждается  известным из биохимии правилом «уклона концентрации», которое гласит, что только в случае, если концентрация какой-либо субстанции на поверхности кожи очень высока,  она компенсируется, и биологически активные вещества проникают глубоко внутрь кожи.</p>
     <p><b><font color="#595c16">Effective (Эффективный)</font></b> - волшебное действие продуктов Сicé основано на передовых научных идеях и высокотехнологичном производстве. Миллионы людей во всем мире осуществили свое заветное желание: возможность самим приостанавливать процессы старения , обретая великолепную, здоровую кожу.  Приглашаем и Вас познать  сияющий мир Сicé!</p>   
</div>

        <div style="float:left; width:212px; margin:179px 0px 0px 75px">
            
            <div style="width:255px; height:653px; margin:auto; background:url('/images/formulapic.jpg')">
                
            </div>

        </div>

        <div style="clear:both"></div>

    </div>

    <Cice:HexMenu runat="server" BackgroundUrl="/images/grad4.jpg" />

</asp:Content>
