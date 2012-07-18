<%@ Page Language="C#" MasterPageFile="~/Master/MasterPage.master" %>
<%@ Register Src="~/Tools/SliderStatic.ascx" TagPrefix="Cice" TagName="SliderStatic" %>
<%@ Register Src="~/Tools/HexMenu.ascx" TagPrefix="Cice" TagName="HexMenu" %>
<%@ Register Src="~/Tools/TheoryMenu.ascx" TagPrefix="Cice" TagName="TheoryMenu"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="PagePlaceHolder" Runat="Server">
    
    <asp:PlaceHolder runat="server" ID="metaPageDescription" Visible="false">
        <span runat="server" id="title">Партнеры</span>
        <span runat="server" id="keywords">Партнеры</span>
        <span runat="server" id="description">Партнеры</span>        
    </asp:PlaceHolder>

    <Cice:SliderStatic runat="server" BackgroundUrl="/images/slide8.jpg" />

<div id="pageTextHolder" class="innerpage">
        
        <div style="width:461px; text-align:justify; float:left" >
            
            <div style="background:url('/images/cice_title.jpg') no-repeat center; height:75px">            
                <h2 class="violet" style="line-height:70px">Партнеры</h2>
            </div>
        
            <p> <br />
           <strong>Aachen</strong> DOMHOF Klinik, Katschhof 3 
           <strong>Bad Neuenahr:</strong> KOSMAS Klinik, Felix-Riitten-Str. 11 
           <strong>Bad Reichenhall:</strong> Praxisklinik Dr. Obermeier, Kaiserplatz 1 
           <strong>Bergisch Gladbach:</strong> Parkklinik Schloss Bensberg, Im Schlosspark 1 
           <strong>Berlin:</strong> Praxis Dres. Czech und Kauder, Hohenzollerndamm 28A; Praxis Dr. Witzel & Dr. Kauder, Kurfurstendamm 47;<a href="http://www.esteticabeauty.de/"><u>ESTETICABEAUTY</u></a>, Linienstr. 83A 
           <strong>Bielefeld:</strong> Praxisklinik Dr. Blesse, Welle 20 
           <strong>Birkenwerder:</strong> Asklepios Klinik, Hubertusstr. 12-22 
           <strong>Bonn:</strong><a href="http://www.beauty-concept-bonn.de/"><u>beauty concept</u></a>. Reichsstr. 37A; Nofretete Klinik, Koblenzer Str. 63 
           <strong>Braunschweig:</strong> Klinik Campestral3e, Campestr. 7 
           <strong>Dortmund:</strong> Clinic im Centrum, Luisenstr. 14 
           <strong>Dresden:</strong> Praxis fur Plastische und Asthetische Chirurgie, Forststr. 1 
           <strong>Freiburg:</strong> PRAXISKLINIK 2000, Wirthstr. 11A 
           <strong>Hamburg:</strong> Praxisklinik AlsterCity, Weidestr. 122A; Praxisklinik Brahmsallee, Brahmsallee 9;<a href="http://www.east-hamburg.de/"><u>EAST Hotel Hamburg</u></a>. Simon-von-Utrecht-Stra(3e 31,<a href="http://www.fraeulein-bob.de/"><u>Fraulein Bob Friseure</u></a>. Poolstr. 41 
           <strong>Hannover:</strong> Chirurgische Gemeinschaftspraxis/ Dr. Axmann, Peiner Str. 2;<a href="http://www.misburger-apotheke-1001nacht.de/"><u>Misburger-Apotheke 1001 Nacht</u></a>. Buchholzer Str. 4 
           <strong>Karlsruhe:</strong> Klinik am Stadtgarten, Beiertheimer Allee 18B 
           <strong>Kassel:</strong><a href="http://www.koeko.eu"><u>KOEKO beauty system</u></a>. Theaterstr. 3 
           <strong>Leipzig:</strong> Praxisklinik am Markt, Markt 16 
           <strong>Ludwigsburg:</strong> Schlosspark Klinik, Stuttgarter Str. 35 
           <strong>Magdeburg:</strong> Praxis fur Plastische und Asthetische Chirurgie Dr. Netzler, Olvenstedter Str. 14 
           <strong>Mannheim:</strong> Mannheimer Klinik fiir Plastische Chirurgie, Mollstr. 45 
           <strong>Miinster:</strong> Clinic im Centrum, Hohenzollernring 57 
           <strong>Niedergosgen (CH):</strong><a href="http://www.manjakosmetik.ch/"><u>Mania Kosmetik</u></a>. Neufeldstr. 24 
           <strong>Prien:</strong> Klinik fur Asthetisch-Plastische Chirurgie, Harasser Str. 55 
           <strong>Rostock:</strong> Privatklinik Dr. Brunkow, Kropeliner Str. 21 
           <strong>Starnberg:</strong> Praxis in den Seearkaden, Wittelsbacherstr. 2A 
           <strong>Ulm:</strong> Klinik Rosengasse, Rosengasse 19 
           <strong>Westerland/Sylt:</strong><a href="http://www.sylthotel.de"><u>LONG ISLAND HOUSE SYLT</u></a>. Eidumweg 13.
</p>
            

</div>
  <div style="float:left; width:212px; margin:112px 0px 0px 75px">
            
            <div style="width:222px; height:400px; margin:auto; background:url('/images/partners.jpg')">
                
            </div>
             </div>
        <div style="clear:both"></div>

    </div>

    <Cice:HexMenu runat="server" BackgroundUrl="/images/grad4.jpg" />

</asp:Content>

