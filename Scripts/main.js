var addthis_config = { "data_track_addressbar": true };

$(document).ready(function () {
    $("a.iframe").fancybox(
	{
	    'width': 350,
	    //'height': 200,
	    'maxHeight': 200,
	    'autoScale': false,
	    'transitionIn': 'none',
	    'transitionOut': 'none',
	    'type': 'iframe'

	});
});