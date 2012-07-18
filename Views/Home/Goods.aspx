<%@ Page Title="" Language="C#" MasterPageFile="~/Master/MasterPage.master" %>
<%@ Register Src="~/Tools/SliderStatic.ascx" TagPrefix="Cice" TagName="SliderStatic" %>
<%@ Register Src="~/Tools/HexMenu.ascx" TagPrefix="Cice" TagName="HexMenu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="PagePlaceHolder" Runat="Server">

<script type="text/javascript">

    var slidesStares = new Object();
    var slidesLinks = new Object();

    function toggleSlide(slideName) {

        if (!getSlideState(slideName))
            $(slidesLinks[slideName]).find("span").text("▲ Скрыть состав ингридиентов");
        else
            $(slidesLinks[slideName]).find("span").text("▼ Показать состав ингридиентов");

        $(slideName).slideToggle();
        slidesStares[slideName] = !slidesStares[slideName];

        

    }

    function getButtonClick(button, slideName) {
        linkButtonAndSlide(button, slideName);
        toggleSlide(slideName);
    }

    function linkButtonAndSlide(button, slideName) {
        slidesLinks[slideName] = button;
    }
    
    function getSlideState(slideName) {

        if (slidesStares[slideName] == null) {
            slidesStares[slideName] = false;
        }
        return slidesStares[slideName];

    }


</script>

<asp:PlaceHolder runat="server" ID="metaPageDescription" Visible="false">
        <span runat="server" id="pageNum">5</span>
        <span runat="server" id="title">Продукты Cicé</span>
        <span runat="server" id="keywords">Продукты Cicé</span>
        <span runat="server" id="description">Продукты Cicé</span>        
    </asp:PlaceHolder>

    <Cice:SliderStatic runat="server" BackgroundUrl="/images/slide5.jpg" />

    <div id="pageTextHolder" class="innerpage activePage">
        

<!-- Продукты Cicé -->
<div>

    <div style="float:left; width:461px; ">
        <div style="background:url('/images/goods_title.jpg') no-repeat right; height:89px;
                    position:relative; top:-10px">

        <h2 class="sea" style="line-height:89px">Продукты Cicé</h2>

    </div>
        
        <p style="margin-top:0px">
        Давайте говорить человечеству  правду. В чем отличие  продукции Сicé от многочисленных средств по уходу за кожей?
<br/>Многие существующие  косметические «омолаживающие кремы» содержат такие компоненты, что существует риск просто не дожить до старости. Вместе с морщинами они убирают и защитный слой кожи.  Потребление этих «продуктов» провоцирует различные заболевания, в том числе и онкологические. 
<br/>«Чудо» - средства,  такие как минеральные масла, лимонен (сильнейший канцероген), парафины, гормоны, альфа-оксикислоты, силиконные масла, коллаген и «отщепления формальдегида»  не входят в состав  продуктов Сicé.
<br/>Коллаген-это благо? Да, когда он вырабатывается собственной кожей, например под воздействием пептидов, содержащихся в составе продукции Сicé. Но когда Вы просто наносите «крем содержащий коллаген», то должны понимать - наша кожа так устроена, что просто  не может пропустить через свой верхний слой  и переработать столь огромные по ее масштабам  молекулы. В результате, весь «чудо-крем» остается на поверхности, и в лучшем случае не принося вреда, просто смывается водой,  вместе с надеждой на улучшение Вашей кожи.
<br/>Сicé -пептидная косметика, не содержащая гормонов и парфюмированных отдушек, легкая, быстро проникающая в кожу   заботится обо всех: зрелых и молодых,  о  женщинах и   мужчинах! 
        </p>

    </div>

    <div style="float:left; width:212px; margin:170px 0px 0px 75px">            
        <div style="width:195px; height:224px; margin:auto; background:url('/images/shop_all.jpg')">      
        </div>
    </div>

</div>
<div style="clear:both"></div>
<!-- /Продукты Cicé -->

<!-- Cicé дневной крем -->
<div>
    
    <div style="float:left; width:461px">
        <h2 class="sky" id="item1">Cicé дневной крем</h2>
        <p>
        
В течение дня  Ваша кожа подвергается воздействиям  ультрафиолетового излучения и загрязнения воздуха. Сicé - дневной крем защищает и омолаживает  кожу. Высокоэффективная формула из антиоксидантов, витаминов и биоактивных пептидов работает для Вас. Увлажняющие биологически активные вещества, комбинированные с ценными натуральными маслами обеспечивают в течение всего дня реновацию и питание кожи. Мужчины могут использовать его для ухоженного внешнего вида и после бритья.
</p>
<p>Содержимое 30 мл достаточно для 70 - 90 применений.


        </p>
    </div>
    
    <div style="float:left; width:212px; margin:0px 0px 0px 75px">            
        <div style="width:79px; height:249px; margin:auto; background:url('/images/shop_item_1.jpg')">      
        </div>
    </div>

    <div style="clear:both"></div>

    <a class="doubleButton skyButton" href="#1" onclick="getButtonClick(this, '#slide1')" 
    title="Показать состав ингридиентов">
        <b class="crb crbl"></b><b class="crb crbr"></b>
        <span>▼ Показать состав ингридиентов</span></a>

    <div style="width:100%; display:none;" id="slide1">
         
        <p style="width:461px; float:left">Aqua, Simmondsia Chinensis Oil, Glycerin, Cetearyl Alcohol, Vitis Vinifera Seed Oil, Butyrospermum Parkii, Tocopheryl Acetate, Niacinamide, Cetearyl Wheat Bran Glycosides, Panthenol, Ascorbyl Glucoside, Squalane, Butylene Glycol, Saccharide Isomerate, Montmorillonite, Phenoxyethanol, Xanthan Gum, Sodium Benzoate, Sodium Hydroxide, Allantoin, Sodium Hyaluronate, Helianthus Annuus Oil, Carbomer, Titanium Dioxide, Coco-Glucoside, Citric Acid, Rosmarinus Officinalis Extract, Palmitoyl Oligopeptide, Fragrance.

        </p>        
        
        <div style="float:left; width:212px; margin:0px 0px 0px 75px">            
            <div style="width:88px; height:82px; margin:35px auto auto; background:url('/images/garant.jpg')"></div>      
        </div>

        <div style="clear:both"></div>
        <p><a href="#1" class="sea" onclick="toggleSlide('#slide1')"><span class="arrowText">▲</span>Скрыть</a></p>

    </div>

    

</div>
<div style="clear:both"></div>
<!-- /Дневной крем -->

<!-- Cicé ночной крем -->
<div>
        
        <div style="float:left; width:461px">
            <h2 class="sea" id="item2">Cicé ночной крем</h2>
            <p>
           В ночное время организм требует отдыха, кожа тоже заслуживает покоя. Ночной крем Cicé поддерживает её, стирая следы дневного стресса. Биологически активные вещества успокаивают и  способствуют восстановлению кожи, в тоже время концентрированные витамины и питательные вещества образуют запас для следующего дня. Биоактивные пептиды уплотняют кожу и при регулярном употреблении сглаживают   морщины. Высокая концентрация коэнзима Q10 дает коже энергию жизни, обеспечивает естественное дыхание клеток. 
</p>
<p>Содержимое 30 мл достаточно для 70 - 90 применений.

            </p>
        </div>
        <div style="float:left; width:212px; margin:0px 0px 0px 75px">            
        <div style="width:79px; height:249px; margin:auto; background:url('/images/shop_item_2.jpg')"></div>
        </div>
        <div style="clear:both"></div>

        <a class="doubleButton skyButton" href="#1" onclick="getButtonClick(this, '#slide2')" 
        title="Показать состав ингридиентов">
            <b class="crb crbl"></b><b class="crb crbr"></b>
        <span>▼ Показать состав ингридиентов</span></a>

        <div style="width:100%; display:none;" id="slide2">            
            <p style="width:461px; float:left">Aqua, Vitis Vinifera, Simmondsia Chinensis Oil, Glycerin, Prunus Dulcis, Butyrospermum Parkii, Glyceryl Stearate SE, Panthenol, Squalane, Tocopheryl Acetate, Oenothera Biennis Oil, Butylene Glycol, Cetearyl Wheat Bran Glycosides, Propylene Glycol, Bisabolol, Cetearyl Alcohol, Ubiquinone, Phenoxyethanol, Sodium Benzoate, Allantoin, Calendula Officinalis Flower Extract, Citric Acid, Retinyl Palmitate, Helianthus Annuus Oil, Carbomer, Coco-Glucoside, Rosmarinus Officinalis Extract, Sodium Hyaluronate, Tocopherol, Ascorbyl Palmitate, Palmitoyl Oligopeptide, Farnesol, Fragrance.
</p>        
        
        <div style="float:left; width:212px; margin:0px 0px 0px 75px">            
            <div style="width:88px; height:82px; margin:35px auto auto; background:url('/images/garant.jpg')"></div>      
        </div>

        <div style="clear:both"></div>
        <p><a href="#1" class="sea" onclick="toggleSlide('#slide2')"><span class="arrowText">▲</span>Скрыть</a></p>

    </div>

    

</div>
<div style="clear:both"></div>
<!-- /Cicé ночной крем -->

<!-- Сicé крем для контура глаз -->
<div>
        
        <div style="float:left; width:461px">
            <h2 class="olive" id="item3">Сicé крем для контура глаз</h2>
            <p>
            Кожа вокруг глаз особенно чувствительна и нуждается в особо бережном уходе.  Крем для контура глаз Cicé  обладает мощным омолаживающим действием: комбинация витаминов, оптимизированная для кожи вокруг глаз, защищает от образования морщин вызванных ультрафиолетовым излучением. Инновационный пептидный состав  крема (компонент Eyeliss)  активно  укрепляет стенки капилляров нежной кожи вокруг глаз, стимулирует лимфатический дренаж, останавливает появление «мешков» под глазами и удаляет  уже образовавшиеся.
</p>
<p>Содержимое 15 мл достаточно для 100 - 120 применений.

            </p>
        </div>
        <div style="float:left; width:212px; margin:0px 0px 0px 75px">            
        <div style="width:79px; height:249px; margin:auto; background:url('/images/shop_item_3.jpg')"></div>
        </div>
        <div style="clear:both"></div>
        <a class="doubleButton skyButton" href="#1" onclick="getButtonClick(this, '#slide3')" 
        title="Показать состав ингридиентов">
            <b class="crb crbl"></b><b class="crb crbr"></b>
            <span>▼ Показать состав ингридиентов</span></a>

    <div style="width:100%; display:none;" id="slide3">           
            <p style="width:461px; float:left">Aqua, Simmondsia Chinensis Oil, Caprylic/Capric Triglyceride, Vitis Vinifera Seed Oil, Tocopheryl Acetate, Glyceryl Stearate SE, Glycerin, Niacinamide, Butyrospermum Parkii, Ascorbyl Glucoside, Squalane, Panthenol, Sodium PCA, Oenothera Biennis Oil, Montmorillonite, Cetearyl Wheat Bran Glycosides, Cetearyl Alcohol, Phenoxyethanol, Sodium Benzoate, Sodium Hydroxide, Xanthan Gum, Allantoin, Hesperidin Methyl Chalcone, Steareth-20, Sodium Hyaluronate, Disodium EDTA,  Helianthus Annuus Oil, Titanium Dioxide, Chlorhexidine Digluconate, Rosmarinus Officinalis Extract, Potassium Sorbate, Dipeptide-2, Tocopherol, Ascorbyl Palmitate, Palmitoyl Tetrapeptide-7, Fragrance.
</p>        
        
        <div style="float:left; width:212px; margin:0px 0px 0px 75px">            
            <div style="width:88px; height:82px; margin:35px auto auto; background:url('/images/garant.jpg')"></div>      
        </div>

        <div style="clear:both"></div>
        <p><a href="#1" class="sea" onclick="toggleSlide('#slide3')"><span class="arrowText">▲</span>Скрыть</a></p>

    </div>

    

</div>
<div style="clear:both"></div>
<!-- /Сicé крем для контура глаз -->

<!-- Сicé лосьон для тела -->
<div>
        
        <div style="float:left; width:461px">
            <h2 class="yellow" id="item4">Сicé лосьон для тела</h2>
            <p>
            Ласкающий и предающий коже упругость, продукт для ухода за телом, содержащий  масла австралийского ореха макадамии, жожоба и  масло из виноградных косточек, обеспечивает основу ухода.  Высококонцентрированная гиалуроновая кислота поддерживает уровень влажности кожи, придавая ей  гладкость и бархатистость. Ретинол, одно из малочисленных веществ, чьё действие против целлюлита научно доказано, содержится в жирорастворимой форме в продукте для ухода за телом. Этот крем  увеличивает образование коллагена и укрепляет соединительную ткань, создавая потрясающее тело!
</p>
<p>Содержимое 150 мл достаточно для 20 - 30 применений.

            </p>
        </div>
        <div style="float:left; width:212px; margin:0px 0px 0px 75px">            
        <div style="width:79px; height:249px; margin:auto; background:url('/images/shop_item_4.jpg')"></div>
        </div>
        <div style="clear:both"></div>
        <a class="doubleButton skyButton" href="#1" onclick="getButtonClick(this, '#slide4')" 
        title="Показать состав ингридиентов">
            <b class="crb crbl"></b><b class="crb crbr"></b>
            <span>▼ Показать состав ингридиентов</span></a>

    <div style="width:100%; display:none;" id="slide4">           
            <p style="width:461px; float:left">Aqua,Isopropyl Palmitate, Simmondsia Chinensis Oil,Sorbitol, Methyl Glucose Sesquistearate,Isopropyl Myristate,Macadamia Ternifolia  Seed Oil,Squalane,Vitis Vinifera Seed Oil,Panthenol,Sorbital Stearate, Glycerin, Tocopheryl Acetate,Cetearyl Alcohol,Allantoin,Salvia Officinalis,Sodium Hyaluronate, Retinyl Palminate, Helianthus Annus Seed Oil, Rosmarinus Officinalis Extract, Tocopherol,Citric Acid, Xanthan Gum, Butelene Glycol, Ascorbyl Palmitate, Phenoxyethanol, Ethylhexylglycerin,Parfum.
</p>        
        
        <div style="float:left; width:212px; margin:0px 0px 0px 75px">            
            <div style="width:88px; height:82px; margin:35px auto auto; background:url('/images/garant.jpg')"></div>      
        </div>

        <div style="clear:both"></div>
        <p><a href="#1" class="sea" onclick="toggleSlide('#slide4')"><span class="arrowText">▲</span>Скрыть</a></p>

    </div>

    

</div>
<div style="clear:both"></div>
<!-- /Сicé лосьон для тела -->

<!-- Сicé пена для очистки кожи -->
<div>
        
        <div style="float:left; width:461px">
            <h2 class="lettuce" id="item5">Сicé пена для очистки кожи</h2>
            <p>
            Пена для очищения кожи Сicé, предназначена  для ежедневного удаления макияжа и вредных веществ. После ее  применения  кожа хорошо дышит и Вы не испытываете ощущение сухости. Эффективный комплекс натуральных биологически активных веществ  успокаивает кожу, одновременно интенсивно увлажняя и очищая её. Эффект от применения комбинируется с  действием  кремов и гидромаски.
</p>
<p>Содержимое 150 мл достаточно для 70 - 90 применений.

            </p>
        </div>
        <div style="float:left; width:212px; margin:0px 0px 0px 75px">            
        <div style="width:79px; height:249px; margin:auto; background:url('/images/shop_item_5.jpg')"></div>
        </div>
        <div style="clear:both"></div>
        <a class="doubleButton skyButton" href="#1" onclick="getButtonClick(this, '#slide5')" 
        title="Показать состав ингридиентов">
            <b class="crb crbl"></b><b class="crb crbr"></b>
            <span>▼ Показать состав ингридиентов</span></a>

    <div style="width:100%; display:none;" id="slide5">           
            <p style="width:461px; float:left">Aqua, Sodium Cocoamphoacetate, Coco-Glucoside, Panthenol, Polyglyceryl-10 Laurate, Sodium Cocoyl Glutamate, Sodium Chloride, Citric Acid, Sodium PCA, PCA Glyceryl Oleate, Sodium Lauroyl Lactylate, Allantoin, Bisabolol, Phenoxyethanol, Phytic Acid, Ethylhexylglycerin.
</p>        
        
        <div style="float:left; width:212px; margin:0px 0px 0px 75px">            
            <div style="width:88px; height:82px; margin:35px auto auto; background:url('/images/garant.jpg')"></div>      
        </div>

        <div style="clear:both"></div>
        <p><a href="#1" class="sea" onclick="toggleSlide('#slide5')"><span class="arrowText">▲</span>Скрыть</a></p>

    </div>

    

</div>
<div style="clear:both"></div>
<!-- /Сicé пена для очистки кожи -->



<!-- Сicé гидромаска -->
<div>
        
        <div style="float:left; width:461px">
            <h2 class="purple" id="item6">Сicé гидромаска</h2>
            <p>
Содержит увлажняющую формулу из высококонцентрированной гиалуроновой кислоты, «воды из клеток лотоса» (Lotoszellwasser),  огуречного экстракта и пантеола. Уже после десятиминутного действия - гидромаска Cicé возвращает коже,  неповторимое чувство свежести и подтянутости! Это маска – праздник!  Побалуйте себя : нанесите гидромаску перед сном под ночной крем и оставьте эти два продукта стирать следы времени. Утро удивит Вас потрясающим результатом.
</p>
<p>Содержимое 50 мл достаточно для 30 - 40 применений.

            </p>
        </div>
       <div style="float:left; width:212px; margin:0px 0px 0px 75px">            
        <div style="width:79px; height:249px; margin:auto; background:url('/images/shop_item_6.jpg')"></div>
        </div>
        <div style="clear:both"></div>
        <a class="doubleButton skyButton" href="#1" onclick="getButtonClick(this, '#slide6')" 
        title="Показать состав ингридиентов">
            <b class="crb crbl"></b><b class="crb crbr"></b>
            <span>▼ Показать состав ингридиентов</span></a>

    <div style="width:100%; display:none;" id="slide6">           
            <p style="width:461px; float:left">Aqua, Propylene Glycol, Nelumbo Nucifera Root Water, Saccharide Isomerate, Cucumis Sativus Juice, Glycerin, Panthenol, Sodium Citrate, Sodium Hyaluronate, Palmitoyl Tripeptide-3, Sodium Carboxymethyl Betaglucan, Xanthan Gum, Sclerotium Gum, Citric Acid, Phenoxyethanol, Benzoic Acid, Dehydroacetic Acid, Sodium Benzoate, Potassium Sorbate, Sodium Sulphite.
</p>        
        
        <div style="float:left; width:212px; margin:0px 0px 0px 75px">            
            <div style="width:88px; height:82px; margin:5px auto auto; background:url('/images/garant.jpg')"></div>      
        </div>

        <div style="clear:both"></div>
        <p><a href="#1" class="sea" onclick="toggleSlide('#slide6')"><span class="arrowText">▲</span>Скрыть</a></p>

    </div>

    

</div>
<div style="clear:both"></div>
<!-- /Сicé гидромаска -->


<!-- Сicé Омолаживающая сыворотка -->
<div>
        
        <div style="float:left; width:461px">
            <h2 class="violet" id="item7">Сicé Омолаживающая сыворотка</h2>
            <p>
            Oмолаживающая сыворотка Cicé это - смесь биологически активных веществ из Avena Sativa (протеин овса) и регенерирующих морских солей, убирает  маленькие морщинки. Кoжа вокруг глаз, зона лба и носогубные складки становятся моложе. Моментальное преображение! Сывoротка дает продолжительный антивозрастной эффект, благодаря комбинации Avena Sativa с  эссенцей эдельвейса. Экстракт из Алоэ Вера снабжает кожу влагой, а масла жожоба, макадамии и оливковое защищают и поддерживают кожу  продолжительное время. 
</p>
<p>Содержимое 15 мл достаточно для 100 - 120 применений.

            </p>
        </div>
        <div style="float:left; width:212px; margin:0px 0px 0px 75px">            
        <div style="width:79px; height:249px; margin:auto; background:url('/images/shop_item_7.jpg')"></div>
        </div>
        <div style="clear:both"></div>
        <a class="doubleButton skyButton" href="#1" onclick="getButtonClick(this, '#slide7')" 
        title="Показать состав ингридиентов">
            <b class="crb crbl"></b><b class="crb crbr"></b>
            <span>▼ Показать состав ингридиентов</span></a>

    <div style="width:100%; display:none;" id="slide7">           
            <p style="width:461px; float:left">Aloe Barbadensis Leaf Juice* Macadamia Ternifolia Seed Oil* Avena Sativa (Oat) Kernel Extract, Peucedanum Ostruthium Leaf Extract*, Marrubium Vulgare Extract*, Salvia Sclarea (Clary) Seed Oil* Saccharide Isomerate, Olea Europaea (Olive) Fruit Oil* Simmondsia Chinensis Oil* Leontopodium Alpinum Extract*, Artemisia Umbelliformis Extract*, Xanthan Gum, Cetearyl Olivate, Sorbitan Olivate, Glyceryl Stearate SE, Maris Sal, Amorphophallus Konjac Root Powder, Squalane, Tocopheryl Acetate, Glycerin, Aqua, Benzyl Alcohol, Dehydroacetic Acid, Parfum, Gluconolactone, Sodium Benzoate, Potassium Sorbate, Benzoic Acid. *organically grown.
</p>        
        
        <div style="float:left; width:212px; margin:0px 0px 0px 75px">            
            <div style="width:170px; height:82px; margin:35px auto auto; background:url('/images/garant2.jpg')"></div>      
        </div>

        <div style="clear:both"></div>
        <p><a href="#1" class="sea" onclick="toggleSlide('#slide7')"><span class="arrowText">▲</span>Скрыть</a></p>

    </div>

    

</div>
<div style="clear:both"></div>
<!-- /Сicé Омолаживающая сыворотка -->





    </div>

    <Cice:HexMenu runat="server" BackgroundUrl="/images/grad5.jpg" />

</asp:Content>

