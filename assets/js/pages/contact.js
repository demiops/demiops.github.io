var Contact = function () {

    return {
        
        //Map 29.119024,-110.963631
        initMap: function () {
			var map;
			$(document).ready(function(){
			  map = new GMaps({
				div: '#map',
				lat: 29.119024,
				lng: -110.963631,
				zoom: 12 
			  });
			   var marker = map.addMarker({
		            lat: 29.119024,
					lng: -110.963631,
		            title: 'Loop, Inc.'
		        });
			});
        }

    };
}();
