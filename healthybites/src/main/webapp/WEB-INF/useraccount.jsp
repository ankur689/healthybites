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
								<li><a href="#"><i class="fa fa-star"></i>User Account</a></li>
								<li><a href="${pageContext.request.contextPath}/History"><i class="fa fa-star"></i> History</a></li>
								<li><a href="${pageContext.request.contextPath}/contactus"><i class="fa fa-star"></i> Contact</a></li>
								<li><a href="${pageContext.request.contextPath}/Logout"><i class="fa fa-lock"></i>Logout</a></li>
						
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
	
		
	<section>
	
	<div class="brands_products"><!--brands_products-->
							<h2>Edit User Profile</h2>
							<div class="brands-name">
								<ul class="nav nav-pills nav-stacked">
										
						  
						  
				<form action="/useraccount" method="POST">
                    <div class="col-sm-5 col-sm-offset-3">
                        <div class="form-group">
                            <label>Weight:</label><br/>
                            <div class="input-group">
                            <input type="text" id="username" name="username" class="form-control" placeholder="Edit Weight" style="border:2px solid #0000FF;">
                            <span class="input-group-addon"></span>
                            </div>
                        </div>
                        <div class="form-group">
                            <label>Height:</label>
                            <div class="input-group">
                            <input type="email" id="email" name="email" class="form-control" required="required" placeholder="Edit Height" style="border:2px solid #0000FF;">
                            <span class="input-group-addon"></span>
                            </div>
                        </div>
						<div class="form-group">
						<label>Physical Exercise:</label>
						<select name="myselect" id="myselect" size="0" style="border:2px solid #0000FF";> 
						<option value="1">Regularly </option> 
						<option value="2">Rarely</option>
						<option value="3">Never</option> 

						</select>

						</div>
						
						<div class="form-group">
						<label>Lifestyle:</label>
						<select name="myselect" id="myselect" size="0" style="border:2px solid #0000FF";> 
						<option value="1">Active</option> 
						<option value="2">Moderate</option>
						<option value="3">Sedentary</option> 

						</select>

						</div>

							<div class="form-group">
                            <label>Blood Pressure Systolic:</label>
                            <div class="input-group">
                            <input type="email" id="email" name="email" class="form-control" required="required" placeholder="Edit Blood Pressure (Value)" style="border:2px solid #0000FF;">
                            <span class="input-group-addon"></span>
                            </div>
                        </div>
						
						
						
						
							<div class="form-group">
                            <label>Blood Diastolic:</label>
                            <div class="input-group">
                            <input type="email" id="email" name="email" class="form-control" required="required" placeholder="Edit Blood Pressure (Value)" style="border:2px solid #0000FF;">
                            <span class="input-group-addon"></span>
                            </div>
                        </div>

						
						
							<div class="form-group">
                            <label>Cholesterol:</label>
                            <div class="input-group">
                            <input type="email" id="email" name="email" class="form-control" required="required" placeholder="Cholesterol (Value)" style="border:2px solid #0000FF;">
                            <span class="input-group-addon"></span>
                            </div>
                        </div>
						
																		<div class="form-group">
						<label>Diabetic:</label>
						<select name="myselect" id="myselect" size="0" style="border:2px solid #0000FF";> 
						<option value="1">Yes</option> 
						<option value="2">No</option>
						

						</select>

						</div>
						
						
																		<div class="form-group">
						<label>Heart Disease:</label>
						<select name="myselect" id="myselect" size="0" style="border:2px solid #0000FF";> 
						<option value="1">Yes</option> 
						<option value="2">No</option>
						

						</select>

						</div>
						
                        <div align="center">
                            <button type="submit" class="btn btn-primary btn-lg" required="required">Update</button>
                            <br/><br/><br/><br/>
                        </div>                       
                    </div>
                </form> 

						
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