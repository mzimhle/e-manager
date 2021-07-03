<?php

//ini_set('max_execution_time', 300); //300 seconds = 5 minutes
//ini_set('max_execution_time', 120); //300 seconds = 1 minute
//ini_set('memory_limit', '400M');


// Create connection
$con = mysqli_connect("localhost","root","","test");

// Check connection
if (mysqli_connect_errno())
  {
  echo "Failed to connect to MySQL: " . mysqli_connect_error();
  }
 

$result = mysqli_query($con,"select * from polygon where polygon_id = 9");

?>

<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <title>Simple Polygon</title>
    <style>
      html, body, #map-canvas {
        height: 100%;
        margin: 0px;
        padding: 0px
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
    <script>
// This example creates a simple polygon representing the Bermuda Triangle.

function initialize() {
  var mapOptions = {
    zoom: 5,
    center: new google.maps.LatLng(18.2908689880001, -31.526144442),
    mapTypeId: google.maps.MapTypeId.TERRAIN
  };

  var bermudaTriangle;

  var map = new google.maps.Map(document.getElementById('map-canvas'),
      mapOptions);

  // Define the LatLng coordinates for the polygon's path.
  var triangleCoords = [
    <?php 
	$array = array();
	while($row = mysqli_fetch_array($result)) {
		$array[] = 'new google.maps.LatLng('.$row['polygon_y'] . ", " . $row['polygon_x'].')';
	}
	echo implode(',',$array);
	?>
  ];

  // Construct the polygon.
  bermudaTriangle = new google.maps.Polygon({
    paths: triangleCoords,
    strokeColor: '#FF0000',
    strokeOpacity: 0.8,
    strokeWeight: 2,
    fillColor: '#FF0000',
    fillOpacity: 0.35
  });

  bermudaTriangle.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);

    </script>
  </head>
  <body>
  <p>here</p>
    <div id="map-canvas"></div>
  </body>
</html>

<?php

mysqli_close($con);

?>