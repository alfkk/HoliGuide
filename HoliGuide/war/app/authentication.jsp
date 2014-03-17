<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:master>
	<jsp:attribute name="css">
		<link href="" rel="stylesheet">
	  	<style type="text/css">
	  	
	  		.content {
	  		padding-top: 40px;
	        background-color: #fff;
	        
	        padding: 20px;
	        margin: 0 -20px; /* negative indent the amount of the padding to maintain the grid system */
	        -webkit-border-radius: 0 0 6px 6px;
	           -moz-border-radius: 0 0 6px 6px;
	                border-radius: 0 0 6px 6px;
	        -webkit-box-shadow: 0 1px 20px rgba(0,0,0,.15);
	           -moz-box-shadow: 0 1px 20px rgba(0,0,0,.15);
	                box-shadow: 0 1px 20px rgba(0,0,0,.15);
	      }
	      body{
	      	background: url('/lib/img/whitespace_filler.jpg');
	      }
	      .page-header {
	        background-color: #2a2a2a;
	        padding: 20px 20px 10px;
	        margin: -20px -10px 20px;
	         -webkit-border-radius: 0 0 50px 50px;
	           -moz-border-radius: 0 0 50px 50px;
	                border-radius: 0 0 50px 50px;
	      }
	      
	      .page-header-content{
	      	color: yellow; 
	      	text-align:center;
	      	padding-top:0.5cm;
	      	padding-right:1cm;
	      	padding-left:1cm;
	      }
	      
	      
	      .content-header { 
	      	font-size: 1.5em; 
	      	font-weight:bold;
	      }
	      
	      .padrow {
				padding-bottom: 15px;
				padding-right: 50px;
		  }
		  
		p {
		  line-height: 100px; /* where the magic happens */
		}
		
		.bubble 
		{
			position: relative;
			height: 300px;
			padding-left: 30px;
			padding-right: 30px;
			background: #e5f2fb;
			-webkit-border-radius: 46px;
			-moz-border-radius: 46px;
			border-radius: 46px;
			border: #C0C0C0 solid 1px;
			-webkit-box-shadow: 5px 5px 20px rgba(0,0,0,.15);
	           -moz-box-shadow: 5px 5px 20px rgba(0,0,0,.15);
	                box-shadow: 5px 5px 20px rgba(0,0,0,.15);
		}
	
		.bubble:after 
		{
			content: '';
			position: absolute;
			border-style: solid;
			border-width: 16px 16px 16px 0;
			border-color: transparent #e5f2fb;
			display: block;
			width: 0;
			z-index: 1;
			left: -13px;
			top: 50px;
		}
	
		.bubble:before 
		{
			content: '';
			position: absolute;
			border-style: solid;
			border-width: 16px 16px 16px 0;
			border-color: transparent #C0C0C0;
			display: block;
			width: 0;
			z-index: 0;
			left: -15px;
			top: 50px;
		}
		.img-responsive:hover
		{
			-webkit-filter: contrast(180%); 
			border:2px double #bbb;
			color:#aaa;
			text-decoration:"See More";
			background:#e6e6e6
		}
		
		h2 span { 
		   color: yellow; 
		   font: bold 55px/0px Helvetica, Sans-Serif; 
		   -webkit-font-smoothing: antialiased;
		}
		
		.headerDDLStyle{
			width: 150px; 
			display:inline; 
			vertical-align:top;
		}
		
		.toTheRight{
			overflow: hidden;
			float: right;
		}
		
		.middle{
			height:50%;
		}
		.top{
			height:25%
		}
		.bottom{
			height:25%
		}
		.buttonRightPositioning{
			overflow: hidden;
			float: right;
			padding-right:50px;
		}
		
		.contentAlignment{
			padding-left:50px;
		}
		
		.imageSize{
			padding-left:50px;
			padding-right:50px;
		}
		
	  	</style>
  	
  </jsp:attribute>
	<jsp:attribute name="js">
		<script src=""></script>
  </jsp:attribute>
	<jsp:body>

   <div id="userType">   
	   <input type="radio" id="u1" name="user" value="traveler">Traveler
	   <input type="radio" id="u2" name="user" value="guide">Tour Guide
	</div>
	<form action="view_itinerary_list.jsp" method="POST">
	    <input type="submit">
	</form>
    
    
	</jsp:body>
</t:master>
