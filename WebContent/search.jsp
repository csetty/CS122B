<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="mvcdemo.model.Customer"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Fabflix</title>

    <!-- Bootstrap Core CSS - Uses Bootswatch Flatly Theme: http://bootswatch.com/flatly/ -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/freelancer.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body id="page-top" class="index">

	<%
	if ((Customer) request.getSession().getAttribute("loggedInCustomer") == null)
	{
		response.sendRedirect("login.jsp");
	}
%>

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#page-top">Fabflix</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">

                    <li class="search.jsp">
                        <a href="search.jsp">Search</a>
                    </li>
                    <li class="browse.jsp">
                        <a href="browse.jsp">Browse</a>
                    </li>
										<li>
											<a href="##" onClick="history.go(-1); return false;">Previous</a>
										</li>

                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="intro-text">
                        <span class="name">SEARCH</span>
                        <hr class="star-light">
                        <span class="skills">Find any movie you would like.</span>
                    </div>
                </div>
            </div>
        </div>
    </header>

	<form action="SearchController" method="post" class="col-offset-6 centered">
		Enter Movie ID : <input type="text" name="movieId"> <BR>
		Enter Movie Title : <input type="text" name="movieTitle"> <BR>
    Enter Movie Year : <input type="text" name="movieYear"> <BR>
    Enter Movie Director : <input type="text" name="movieDirector"> <BR>


    Enter first name of star : <input type="text" name="starFirstName"> <BR>
    Enter last name of star : <input type="text" name="starLastName"> <BR>

		<p>Select a order</p>
		<input type="radio" name="order" value="titleasc" checked> Title Ascending<BR>
		<input type="radio" name="order" value="titledsc"> Title Descending<BR>
		<input type="radio" name="order" value="yearasc"> Year Ascending<BR>
		<input type="radio" name="order" value="yeardsc"> Year Descending<BR>

    <p>Sub matching</p>
    <input type="radio" name="sub_match" value="true" checked> Do a substring match<BR>
    <input type="radio" name="sub_match" value="false"> Do an exact match<BR>
		<input type="submit" />

		<div class="bg-danger">
  ${requestScope['failure']}
	</div>


	</form>

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="js/classie.js"></script>
	<script src="js/cbpAnimatedHeader.js"></script>

	<!-- Contact Form JavaScript -->
	<script src="js/jqBootstrapValidation.js"></script>
	<script src="js/contact_me.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="js/freelancer.js"></script>
</body>
</html>
