<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<div id="footerHolder">
	
	<div class="grCo grl"></div> <div class="grCob grbl"></div> 
	<div class="grCo grr"></div> <div class="grCob grbr"></div> 

	<div style="float:left"> Cicé Cosmetics copyright © 2011 </div>
	
	<% Html.RenderPartial("LogOnUserControl"); %>
	
	<div style="float:right; text-align:center; width:140px;"> 
	   <!-- AddThis Button BEGIN -->
		<div class="addthis_toolbox addthis_default_style ">
		<a class="addthis_button_preferred_1"></a>
		<a class="addthis_button_preferred_2"></a>
		<a class="addthis_button_preferred_3"></a>
		<a class="addthis_button_preferred_4"></a>
		<a class="addthis_button_compact"></a>
		<a class="addthis_counter addthis_bubble_style"></a>
		</div>
		<script type="text/javascript">			var addthis_config = { "data_track_clickback": true };</script>
		<script type="text/javascript" src="http://s7.addthis.com/js/250/addthis_widget.js#pubid=ra-4dd6d78423d33e96"></script>
		<!-- AddThis Button END -->

	</div>
	
	<!-- Yandex.Metrika counter -->
<div style="display:none;"><script type="text/javascript">
							   (function (w, c) {
								   (w[c] = w[c] || []).push(function () {
									   try {
										   w.yaCounter7573588 = new Ya.Metrika({ id: 7573588, enableAll: true });
									   }
									   catch (e) { }
								   });
							   })(window, 'yandex_metrika_callbacks');
</script></div>
<script src="//mc.yandex.ru/metrika/watch.js" type="text/javascript" defer="defer"></script>
<noscript><div><img src="//mc.yandex.ru/watch/7573588" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->


</div>