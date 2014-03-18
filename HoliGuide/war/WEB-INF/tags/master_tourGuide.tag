<%@tag description="Master Template For HoliGuide App" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@attribute name="css" fragment="true" %>
<%@attribute name="js" fragment="true" %>
<% String name = request.getParameter("Id");%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>HoliGuide | Your First-Stop Tour Service</title>
	
	<!-- Google Plus Function -->
	<script type="text/javascript">
		(function() {
		    var po = document.createElement('script');
		    po.type = 'text/javascript'; po.async = true;
		    po.src = 'https://plus.google.com/js/client:plusone.js';
		    var s = document.getElementsByTagName('script')[0];
		    s.parentNode.insertBefore(po, s);
		  })();
		
		 /**
	     * Calls the OAuth2 endpoint to disconnect the app for the user.
	     */
	    disconnect: function() {
	      // Revoke the access token.
	      $.ajax({
	        type: 'GET',
	        url: 'https://accounts.google.com/o/oauth2/revoke?token=' +
	            gapi.auth.getToken().access_token,
	        async: false,
	        contentType: 'application/json',
	        dataType: 'jsonp',
	        success: function(result) {
	          console.log('revoke response: ' + result);
	          $('#authOps').hide();
	          $('#profile').empty();
	          $('#visiblePeople').empty();
	          $('#authResult').empty();
	          $('#gConnect').show();
	        },
	        error: function(e) {
	          console.log(e);
	        }
	      });
	    },
	</script>
	
	<script type="text/javascript">
		var user = sessionStorage.getItem("name");
		//alert(user);
	</script>
	
	<!-- End of Google Plus -->
	
	<!-- Bootstrap core CSS -->
  <link href="/lib/ext/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/lib/ext/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
  
  <!-- Custom styles for main theme -->
  <link href="/lib/css/main-theme.css" rel="stylesheet">
  
  <!-- Individual pages CSS container -->
  <jsp:invoke fragment="css" />
</head>
<body>
  <!-- Static navbar -->
  <div class="navbar navbar-default navbar-static-top navbar-inverse" role="navigation">
  	<div class="container-top">
	    <div class="navbar-header">
	      <a href="#">Holi<span>Guide</span></a>
	    </div>
	    <div class="navbar-collapse collapse">
	    	<ul class="nav navbar-nav navbar-left">
	      	<li><a href="/viewtourguideitinerarylist">Home</a></li>
	      	<li><a href="/guidemyitinerary">My Itinerary</a></li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	      	<li class="dropdown">
	          <a href="#" class="dropdown-toggle name" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span><c:out value="${user}"/></a>
	          <ul class="dropdown-menu">
	          	<li><a href="/tourguideviewprofile">My Profile</a>
	          	<li><a href="/viewitinerarylist">Switch to Traveler</a>
	          	<li><a href="/app/index2.html">Logout</a></li>
	          </ul>
	        </li>
	      </ul>
	    </div><!--/.nav-collapse -->
    </div><!-- /container -->
  </div>
	
	<div class="container">
	  <!-- Main component for a primary marketing message or call to action -->
		<div  class="col-sm-12 col-md-12">
			<jsp:doBody/>
		</div>
	</div> <!-- /container -->
	
	<!-- Bootstrap core JavaScript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="/lib/ext/jquery-2.0.3.js"></script>
	<script src="/lib/ext/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Individual pages Javascript container -->
  <jsp:invoke fragment="js" />
</body>
</html>