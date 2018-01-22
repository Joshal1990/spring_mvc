<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page trimDirectiveWhitespaces="true"%>

<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Alpha One page template</title>

<!-- Bootstrap -->
<script src="resources/js/pace.js"></script>
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link href="resources/css/theme.css" rel="stylesheet">
<link href="resources/css/font-awesome.css" rel="stylesheet">
<link href="resources/css/animate.css" rel="stylesheet">
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Slab:700,400|Open+Sans+Condensed:300'
	rel='stylesheet' type='text/css'>
<link href="resources/css/theme-loading-bar.css" rel="stylesheet" />

<title>Books</title>

</head>
<body>
	<header>
		<!-- Main comapny header -->
		<nav class="navbar navbar-default navbar-fixed-top bgcolor"
			role="navigation">
			<div class="container">
				<div class="navbar-header">
					<a class="navbar-brand top-navbar-brand"><img class="blogo"
						src="resources/images/logo1.png" /></a>
				</div>
			</div>
		</nav>
	</header>
	<section id="form" class="animated fadeInDown">
		<div class="container">
			<div id="loginbox"
				class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
				<div class="panel white-alpha-90">
					<div class="panel-heading">
						<div class="panel-title text-center">
							<h2>
								Sign In to <span class="text-primary">...NAME...</span>
							</h2>
						</div>
					</div>
					<div class="panel-body">
						<div style="display: none" id="login-alert"
							class="alert alert-danger col-sm-12"></div>
						<form id="loginform" method="post" action="webApi/passwordValidate" role="form">
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-user"></i></span>
								<input id="login-username" type="text" class="form-control"
									name="username" value="" placeholder="username or email" required>
							</div>
							<div class="input-group">
								<span class="input-group-addon"><i class="fa fa-lock"></i></span>
								<input id="login-password" type="password" class="form-control"
									name="password" placeholder="password" required>
							</div>
							<div class="input-group col-xs-12 text-center login-action">
								<div class="checkbox">
									<label> <input id="login-remember" type="checkbox"
										name="remember" value="1" style="margin-top: 10px;">
										Remember me &nbsp; <span id="btn-login"><input
											type="submit" class="btn btn-success" value="Login"></span>
									</label>
								</div>
							</div>
							<div style="margin-top: 10px" class="form-group">
								<div class="col-sm-12 controls"></div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>
	<footer>
		<nav class="navbar navbar-default navbar-fixed-bottom bgcolor"
			role="navigation">
			<div class="container text-center">
				<div class="footer-content">
					&copy; 2016 <a href="#" class="list-item"> copyright</a>
				</div>
			</div>
			<!-- /.container-fluid -->
		</nav>
	</footer>
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/jquery.backstretch.min.js"></script>

	<script>
		Pace.on('hide', function() {
			$("#container").fadeIn('1000');
			$.backstretch([ "resources/images/01.jpg",
					"resources/images/02.jpg",
					"resources/images/revslide_3.jpg",
					"resources/images/04.jpg", "resources/images/03.jpg" ], {
				duration : 5000,
				fade : 1000
			});
		});
	</script>
	<script src="resources/js/login.js" type="text/javascript"></script>
</body>
</html>