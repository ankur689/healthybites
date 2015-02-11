<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | HealthyBites</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
 
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
	
	
	
	 <link href="/maps/documentation/javascript/examples/default.css" rel="stylesheet">
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
    <style> 
	body { background:#fff;}
     #map-canvas
	{
	position:right;
    	width:600px;
        height:500px;
        z-index:15;
        top:150%;
        left:70%;
        margin:-400px 0 0 -400px;
	}
    </style>
    <script>
		(function() {
				window.onload = function() {
						// Creating an object literal containing the properties
						// we want to pass to the map
						var options = {
						zoom: 9,
						center: new google.maps.LatLng(37.4292, -122.0819),
						mapTypeId: google.maps.MapTypeId.ROADMAP
						};
				// Creating the map
				var map = new google.maps.Map(document.getElementById('map-canvas'), options);
				
			var mkr = new google	.maps.Marker({
    			position: map.getCenter(),
     			map: map,
    			 title: 'Click to zoom'
			 });

			google.maps.event.addListener(map, 'center_changed', function() {
    			// 3 seconds after the center of the map has changed, pan back to the
    			// marker.
  			window.setTimeout(function() {
  			map.panTo(mkr.getPosition());
    			}, 3000);
   			});


					var places = [];
					places.push(new google.maps.LatLng(37.777,-122.417));
					places.push(new google.maps.LatLng(37.781,-122.418));
					places.push(new google.maps.LatLng(37.774,-122.410));
					places.push(new google.maps.LatLng(37.793,-122.398));
					places.push(new google.maps.LatLng(37.787,-122.396));
					places.push(new google.maps.LatLng(37.5542,-122.3131));
					places.push(new google.maps.LatLng(37.6253,-122.4253));
					places.push(new google.maps.LatLng(37.4828,-122.2361));
					places.push(new google.maps.LatLng(37.4292,-122.1381));
					places.push(new google.maps.LatLng(37.3894,-122.0819));
					places.push(new google.maps.LatLng(37.394068,-122.079161));
					places.push(new google.maps.LatLng(37.3711,-122.0375));

					
					
					
					
					// Looping through the places array
					
					var events = [];
					events.push("Chipotle, San Francisco");
					events.push("Subway, San Frnacisco");
					events.push("Chaat Bhavan, San Francisco");
					events.push("Inchin-Bamboo, San Francisco");
					events.push("Rainforest Cafe, San Frnacisco");
					events.push("Taco Bell, San Bruno");
					events.push("Sushi King, San Mateo");
					events.push("Mambo Cakes, Redwood City");
					events.push("Yard House, Plao Alto");
					events.push("Greek Tavern, Mountain View");
					events.push("Bikaner, Mountain View");
					events.push("Sarvana Bhawan, Sunnyvale");
					 var people= [];
					 people.push(new google.maps.LatLng(37.336186,-121.883493));
					 people.push(new google.maps.LatLng(37.332462,-121.885969));
					 people.push(new google.maps.LatLng(37.336268,-121.887982));

				for (var i = 0; i < places.length; i++) {
				// Adding the marker as usual
				var marker = new google.maps.Marker({
				position: places[i],
				map: map,
				animation: google.maps.Animation.BOUNCE,
				title: 'Location ' + i
				
				});
			
				
					// Wrapping the event listener inside an anonymous function
					// that we immediately invoke and passes the variable i to.
					(function(i, marker) {
					// Creating the event listener. It now has access to the values of
					// i and marker as they were during its creation
					google.maps.event.addListener(marker, 'click', function() {
					var infowindow = new google.maps.InfoWindow({
					content: 'Restaurant ' + events[i]
					});
					infowindow.open(map, marker);
					});
			})(i, marker);
			}
				
				for (var i = 0; i < people.length; i++) {
					// Adding the marker as usual
					var ppl = new google.maps.Marker({
					position: people[i],
					map: map,
					title: 'Person ' + i,
					icon: 'person.gif',
					animation: google.maps.Animation.DROP
					});
									}
		}
})();

    </script>
	
	
	
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> +2 95 01 88 821</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> info@healthybites.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">

						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="${pageContext.request.contextPath}/Home"><img src="images/home/logo.jpg" alt="" /></a>
						</div>
						<div class="btn-group pull-right">
							
								</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							
								<ul class="nav navbar-nav">
								<li><a href="${pageContext.request.contextPath}/Home"/><i class="fa fa-user"></i>Home</a></li>
								<li><a href="${pageContext.request.contextPath}/UserAccount"><i class="fa fa-star"></i>User Account</a></li>
								<li><a href="${pageContext.request.contextPath}/History"><i class="fa fa-star"></i> History</a></li>
								<li><a href="${pageContext.request.contextPath}/contactus"><i class="fa fa-star"></i> Contact</a></li>
								<li><a href="${pageContext.request.contextPath}/AccountLogin"><i class="fa fa-lock"></i>Logout</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
		
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						
					</div>
					
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	
	<section id="slider"><!--slider-->
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="slider-carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
							<li data-target="#slider-carousel" data-slide-to="1"></li>
							<li data-target="#slider-carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<h1><span>HealthyBites</span></h1>
									<h2>Fitness Cuisine</h2>
									<p> </p>
													
<a class="btn btn-default get" href="index.html" role="button">Start your fitness regime</a>				
	</div>
								<div class="col-sm-6">
									<img src="http://tech.co/wp-content/uploads/2013/05/HealthyEating.jpg" class="girl img-responsive" alt="" />
									<img src=""  class="pricing" alt="" />
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<h1><span>HealthyBites</span></h1>
									<h2>Fitness Cuisine</h2>
									<p> </p>
									<button type="button" class="btn btn-default get">Stay Fit</button>
								</div>
								<div class="col-sm-6">
									<img src="https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSdwd9B0m3yzKcqLrOpScMlmSFH-PCl81vglBKEAfoSh85B0rXm" class="girl img-responsive" alt="" />
										</div>
							</div>
							
							<div class="item">
								<div class="col-sm-6">
									<h1><span>HealthyBites</span></h1>
									<h2>Fitness Cuisine</h2>
									<p> </p>
									<button type="button" class="btn btn-default get">Eat Healthy</button>
								</div>
								<div class="col-sm-6">
									<img src="http://winhealthplans.com/media/uploads/_blog_images/what-is-health.jpg" class="girl img-responsive" alt="" />
										</div>
							</div>
							
						</div>
						
						<a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
							<i class="fa fa-angle-left"></i>
						</a>
						<a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
							<i class="fa fa-angle-right"></i>
						</a>
					</div>
					
				</div>
			</div>
		</div>
	</section><!--/slider-->
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Category</h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											Cuisine
										</a>
									</h4>
								</div>
								<div id="sportswear" class="panel-collapse collapse">
									<div class="panel-body">
										
	<div class="row">
  
  <div class="col-lg-6">
    <div class="input-group">
      <span class="input-group-addon">
        <input type="radio">
      </span>
      <input type="text" class="form-control" value ="American">
    
	</div><!-- /input-group -->
	  <div class="input-group">
      <span class="input-group-addon">
        <input type="radio">
      </span>
      <input type="text" class="form-control" value ="Chinese">
    
	</div><!-- /input-group -->
	  <div class="input-group">
      <span class="input-group-addon">
        <input type="radio">
      </span>
      <input type="text" class="form-control" value ="Greek">
	  
	  </div><!-- /input-group -->
	  <div class="input-group">
      <span class="input-group-addon">
        <input type="radio">
      </span>
      <input type="text" class="form-control" value ="Mexican">
	  
	  </div><!-- /input-group -->
	  <div class="input-group">
      <span class="input-group-addon">
        <input type="radio">
      </span>
      <input type="text" class="form-control" value ="Indian">
	  
	  </div><!-- /input-group -->
	  <div class="input-group">
      <span class="input-group-addon">
        <input type="radio">
      </span>
      <input type="text" class="form-control" value ="Italian">
	  
	  </div><!-- /input-group -->
	  <div class="input-group">
      <span class="input-group-addon">
        <input type="radio">
      </span>
      <input type="text" class="form-control" value ="Thai">
    </div><!-- /input-group -->
	  <div class="input-group">
      <span class="input-group-addon">
        <input type="radio">
      </span>
      <input type="text" class="form-control" value ="Vietnamese">
	</div><!-- /input-group -->
  </div><!-- /.col-lg-6 -->
</div><!-- /.row -->
											
										
									</div>
								</div>
							</div>
							
						</div><!--/category-products-->
					
						<div class="brands_products"><!--brands_products-->
							<h2>NEAR</h2>
							<div class="brands-name">
								<ul class="nav nav-pills nav-stacked">
<form class="navbar-form navbar-left" role="search">
  <div class="form-group">
    <input type="text" class="form-control" placeholder="City or Zip Code">
  </div>

</form>
								</ul>
							</div>
						</div><!--/brands_products-->

                        <br></br>
						<div class="brands_products"><!--brands_products-->
							<h2>MEAL TYPE</h2>
							<div class="brands-name">
								<ul class="nav nav-pills nav-stacked">
						
			
			<div class="dropdown">
  <button class="btn btn-default dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-expanded="true">
    Meal Type
    <span class="caret"></span>
  </button>
  <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Light</a></li>
    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Moderate</a></li>
    <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Heavy</a></li>

  </ul>
</div>		
						
						
								</ul>
							</div>
						</div><!--/brands_products-->
						
						<br></br>
						<div class="brands_products"><!--time-->
							<h2>DATE AND TIME</h2>
							<div class="brands-name">
								
						
						             &nbsp;&nbsp;<input class="form-control" style="width:210px" type="datetime-local" id="time" placeholder="date time" >
                
						
								</ul>
							</div>
						</div><!--time-->
						
						<div class="price-range"><!--price-range-->
							<h2>Price Range</h2>
							<div class="well text-center">
								 <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
								 <b class="pull-left">$ 0</b> <b class="pull-right">$ 600</b>
							</div>
						</div><!--/price-range-->
						
						
						
						
						
						
						
						  <button type="submit" class="btn btn-default">Submit</button>
						
					
					</div>
				</div>
				
			
						<div class="col-sm-9 padding-right">
							<div class="features_items">
								<div class="product-image-wrapper">
									<div class="new-product">
											 <div id="map-canvas"></div>
									</div>
								</div>
					        </div><!--map canvas-->
						</div>
					
							
							
			</div>
		</div>
					
					<br></br>
					<br></br>
					<div class="recommended_items"><!--recommended_items-->
						<h2 class="title text-center">recommended items</h2>
						
						<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="item active">	
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend4.jpg" alt="" />
													
													<p>House Of Siam</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Explore</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend4.jpg" alt="" />
													
													<p>Sweet Tomatoes</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Explore</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend4.jpg" alt="" />
													
													<p>Inchin Bamboo</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Explore</a>
												</div>
												
											</div>
										</div>
									</div>
								</div>
								<div class="item">	
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend4.jpg" alt="" />
													
													<p>Chipotle</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Explore</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend4.jpg" alt="" />
													
													<p>P.F. Chang</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Explore</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend4.jpg" alt="" />
													
													<p>Sakoon</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Explore</a>
												</div>
												
											</div>
										</div>
									</div>
								</div>
							</div>
							 <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							  </a>
							  <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
								<i class="fa fa-angle-right"></i>
							  </a>			
						</div>
					</div><!--/recommended_items-->
					
					
					
					
					
					<div class="recommended_items"><!--recommended_items 2-->
						<h2 class="title text-center">recommended items</h2>
						
						<div id="recommended-item-carousel" class="carousel slide" data-ride="carousel">
							<div class="carousel-inner">
								<div class="item active">	
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend4.jpg" alt="" />
													
													<p>House Of Siam</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Explore</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend4.jpg" alt="" />
													
													<p>Sweet Tomatoes</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Explore</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend4.jpg" alt="" />
													
													<p>Inchin Bamboo</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Explore</a>
												</div>
												
											</div>
										</div>
									</div>
								</div>
								<div class="item">	
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend4.jpg" alt="" />
													
													<p>Chipotle</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Explore</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend4.jpg" alt="" />
													
													<p>P.F. Chang</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Explore</a>
												</div>
												
											</div>
										</div>
									</div>
									<div class="col-sm-4">
										<div class="product-image-wrapper">
											<div class="single-products">
												<div class="productinfo text-center">
													<img src="images/home/recommend4.jpg" alt="" />
													
													<p>Sakoon</p>
													<a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Explore</a>
												</div>
												
											</div>
										</div>
									</div>
								</div>
							</div>
							 <a class="left recommended-item-control" href="#recommended-item-carousel" data-slide="prev">
								<i class="fa fa-angle-left"></i>
							  </a>
							  <a class="right recommended-item-control" href="#recommended-item-carousel" data-slide="next">
								<i class="fa fa-angle-right"></i>
							  </a>			
						</div>
					</div><!--/recommended_items2-->
					
				</div>
			</div>
		</div>
		
		
			</section>
												
	<footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="companyinfo">
							<h2><span>HealthyBites</span></h2>
							<p>A Health based recommendation system. </p>
						</div>
					</div>
					<div class="col-sm-7">
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="https://www.youtube.com/watch?v=69iURh0RPng">
									<div class="iframe-img">
										<img src="images/home/healthvid1.jpg" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Eating Healthy</p>
								<h2>Oct 2014</h2>
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="https://www.youtube.com/watch?v=cUFxyVX78EM">
									<div class="iframe-img">
										<img src="images/home/healthvid2.jpg" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Loose Weight</p>
								<h2>Jan 2012</h2>
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="https://www.youtube.com/watch?v=cUFxyVX78EM">
									<div class="iframe-img">
										<img src="images/home/healthvid3.jpg" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Detoxify your Body</p>
								<h2>Nov 2011</h2>
							</div>
						</div>
						
						<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="https://www.youtube.com/watch?v=tF3MjDvzNdc">
									<div class="iframe-img">
										<img src="images/home/healthvid4.jpg" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Healthy Beginning</p>
								<h2>Jan 2014</h2>
							</div>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="address">
							<img src="images/home/map.png" alt="" />
							<p>190 Ryland St, San Jose, CA</p>
						</div>
					</div>
				</div>
			</div>
		</div>
		

		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright © 2014 HealthyBites Inc. All rights reserved.</p>
					<p class="pull-right">Designed by <span><a target="_blank" href="#">Ankur & Simrita</a></span></p>
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	

  
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
</body>
</html>