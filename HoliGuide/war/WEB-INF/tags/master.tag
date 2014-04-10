<%@tag description="Master Template For HoliGuide App" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		</script>
		<!-- JavaScript specific to this application that is not related to API calls -->
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js" ></script>
		
		<script type="text/javascript">
			var name = "";
			var helper = (function() {
			  var BASE_API_PATH = 'plus/v1/';
			
			  return {
			    /**
			     * Hides the sign in button and starts the post-authorization operations.
			     *
			     * @param {Object} authResult An Object which contains the access token and
			     *   other authentication information.
			     */
			    onSignInCallback: function(authResult) {
			      gapi.client.load('plus','v1', function(){
			        $('#authResult').html('Auth Result:<br/>');
			        for (var field in authResult) {
			          $('#authResult').append(' ' + field + ': ' +
			              authResult[field] + '<br/>');
			        }
			        if (authResult['access_token']) {
			          $('#authOps').show('slow');
			          $('#gConnect').hide();
			          helper.profile();
			          window.location.href = "/viewitinerarylist;"
			          helper.people();
			        } else if (authResult['error']) {
			          // There was an error, which means the user is not signed in.
			          // As an example, you can handle by writing to the console:
			          console.log('There was an error: ' + authResult['error']);
			          $('#authResult').append('Logged out');
			          $('#authOps').hide('slow');
			          $('#gConnect').show();
			        }
			        console.log('authResult', authResult);
			      });
			    },
			    
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
			   
			    
			    /**
			     * Gets and renders the currently signed in user's profile data.
			     */
			    profile: function(){
			      var request = gapi.client.plus.people.get( {'userId' : 'me'} );
			      request.execute( function(profile) {
			        $('#profile').empty();
			        if (profile.error) {
			          $('#profile').append(profile.error);
			          return;
			        }
			        $('#profile').append(
			            $('<p>Hello, ' + profile.displayName +'</p>'));
			        name = profile.displayName;
			        //alert(name);
			        sessionStorage.setItem("name", name);
			      });
			    }
			  };
			})();
			
	function onSignInCallback(authResult) {
		helper.onSignInCallback(authResult);
	}
	
	public void onClick(View view) {
	    if (view.getId() == R.id.sign_out_button) {
	        if (mPlusClient.isConnected()) {
	            mPlusClient.clearDefaultAccount();
	            mPlusClient.disconnect();
	            mPlusClient.connect();
	        }
	    }
	}
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
	    <div align="right"><c:out value="${user}"/></div>
	    <div class="navbar-collapse collapse">
	    	<ul class="nav navbar-nav navbar-left">
	      	<li><a href="/viewitinerarylist">My Itinerary</a></li>
	      	<li><a href="/createitinerary2">Create Itinerary</a></li>
	      	<li><a href="/viewguide">View All Tour Guides</a></li>
	      </ul>
	      <ul class="nav navbar-nav navbar-right">
	      	<li class="dropdown">
	          <a href="#" class="dropdown-toggle name" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span><strong><span style="padding-left:8px">Me</span></strong><c:out value="${username}" /></a>
	          <ul class="dropdown-menu">
	          	<li><a href="/app/traveler_profile.jsp">My Profile</a> 
	          	<li><a href="/viewtourguideitinerarylist">Switch To Tour Guide</a> 
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