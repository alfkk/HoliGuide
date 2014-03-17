<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:master_tourGuide>
	<jsp:attribute name="css">
		<link href="" rel="stylesheet">
	  	<style type="text/css">
		.modalDialog {
			position: fixed;
			font-family: Arial, Helvetica, sans-serif;
			top: 0;
			right: 0;
			bottom: 0;
			left: 0;
			background: rgba(0,0,0,0.8);
			z-index: 99999;
			opacity:0;
			-webkit-transition: opacity 400ms ease-in;
			-moz-transition: opacity 400ms ease-in;
			transition: opacity 400ms ease-in;
			pointer-events: none;
		}

		.modalDialog:target {
			opacity:1;
			pointer-events: auto;
		}

		.modalDialog > div {
			width: 400px;
			position: relative;
			margin: 10% auto;
			padding: 5px 20px 13px 20px;
			border-radius: 10px;
			background: #fff;
			background: -moz-linear-gradient(#fff, #999);
			background: -webkit-linear-gradient(#fff, #999);
			background: -o-linear-gradient(#fff, #999);
		}

		.close {
			background: #606061;
			color: #FFFFFF;
			line-height: 25px;
			position: absolute;
			right: -12px;
			text-align: center;
			top: -10px;
			width: 24px;
			text-decoration: none;
			font-weight: bold;
			-webkit-border-radius: 12px;
			-moz-border-radius: 12px;
			border-radius: 12px;
			-moz-box-shadow: 1px 1px 3px #000;
			-webkit-box-shadow: 1px 1px 3px #000;
			box-shadow: 1px 1px 3px #000;
		}

		.close:hover { background: #00d9ff; }
			  	
		stardiv {
			width: 200px;
			margin: 50px auto;
		}

		starspan {
			font-size: 40px;
			color: orange;
			cursor: pointer;
		}

		starspan:before {
			content: "\2605";
			position: absolute;
			color: orange;
		}	  	
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
	      	padding-top:25px;
	      	font-size: 2em; 
	      	font-weight:bold;
	      }
	      
	      .padrow {
				padding-bottom: 15px;
				padding-right: 50px;
				padding-left:55px;
		  }
		  
		p {
		  line-height: 100px; /* where the magic happens */
		}
		
		.bubble 
		{
			position: relative;
			height: 200px;
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
		
		.leftpanel{
			border-style: solid;
			border-width: 16px 16px 16px 0;
			border: #C0C0C0 solid 1px;
			-webkit-border-radius: 10px;
			-webkit-box-shadow: 2px 2px 5px rgba(0,0,0,.15);
	        -moz-box-shadow: 2px 2px 50px rgba(0,0,0,.15);
	        box-shadow: 2px 2px 50px rgba(0,0,0,.15);
	                
		}
		
		.leftpanelcontent{
			padding-top:40px;
			padding-bottom:40px;
			padding-left:30px;
			padding-right:80px;
		}
		
		.leftpaneltopcontent{
			padding-top:5px;
			padding-bottom:5px;
			padding-left:5px;
			padding-right:5px;
		}
		
		.buttonwidth{
			width:100%;
		}
		
		.nameFontSize{
			font-size:350%;
		}
		.commentRating{
			text-align:center;
			border-right: thick solid #ff0000;
		}
	</style>
  	
  </jsp:attribute>
	<jsp:attribute name="js">
		<script src=""></script>
  </jsp:attribute>
	<jsp:body>

   <div class="content">   
	<div class="page-header">
      		<div style="overflow: hidden;">
      		<div class="row">
			  <div class="col-xs-12 page-header-content">
			  	<h2><span> Profile </span></h2>
			  </div>
			</div>
			
          	</div>
          	 <div class="page-header-content">  	 
          
			
			  </div>
     </div> 
      
     <div id="page1">
		 <div class="row padrow">
		 
		 <div class="col-xs-12 col-sm-12 col-md-12 padrow ">
		 <div class="row nameFontSize">Edward</div>
		 <div class="row">Joined 5 Years ago, Bali Indonesia</div>
		 </div>
		  <div class="col-xs-6 col-sm-6 col-md-4  leftpanel">
		  
		  
		  <div class="row leftpaneltopcontent padrow">
		  <img src="..\lib\img\g1.jpg" class="img-responsive img-rounded imageSize" alt="Responsive image">
		  </div>
		  
		   <div class="row leftpaneltopcontent">
		   <button class="btn btn-warning btn-lg buttonwidth">Add to Favourites</button>
		   </div>
		   
		  <div class="row leftpaneltopcontent">
		  <button class="btn btn-warning btn-lg buttonwidth">Give Feedback</button>
		  </div>
		  
		   <div class="row leftpanelcontent">
		   	<b>Contact:</b> +65-81898827
		   </div>
		   
		   <div class="row leftpanelcontent">
		   	<b>Description:</b> Please feel free to contact me to discuss about your itinerary
		   </div>
		   
		   <div class="row leftpanelcontent">
		   	<b>Language Proficiency:</b> Bahasa Indonesia, English
		   </div>
		   
		   <div class="row leftpanelcontent">
		   	<b>Overall Rating:</b> <p> 
		   			<stardiv>
						<starspan>&#9734;<starspan>&#9734;<starspan>&#9734;<starspan>&#9734;&#9734;</starspan></starspan></starspan></starspan>
					</stardiv> 546 Ratings
		   </div>
		 </div>
		  
		  
		  
		  <div class="col-xs-6 col-sm-6 col-md-8">
		  <div class ="leftpaneltopcontent">
		  <div class="bubble">
			<div class="row top">
				 <div class="col-xs-6"> 
					<div class="content-header">Overall Rating: </div>
				</div>
				<div class="col-xs-6"> 
					<div style="padding-top:10px;">
					<stardiv>
						<starspan>&#9734;<starspan>&#9734;<starspan>&#9734;<starspan>&#9734;&#9734;</starspan></starspan></starspan></starspan>
					</stardiv>
					</div>
				</div>
			</div>
			
			
			<div class="row middle contentCenterAlignment" style="">
				 <div class="col-xs-3 contentAlignment commentRating"> 
					 <div class="row">
					 	4
					 </div>
					 <div class="row">
					 	<b>Friendliness</b>
					 </div>
				 </div>
				 <div class="col-xs-3 contentAlignment commentRating"> 
					 <div class="row">
					 	4
					 </div>
					 <div class="row">
					 	<b>Knowledge</b>
					 </div>
				 </div>
				  <div class="col-xs-3 contentAlignment commentRating"> 
					 <div class="row">
					 	4
					 </div>
					 <div class="row">
					 	<b>Communication</b>
					 </div>
				 </div>
				  <div class="col-xs-3 contentAlignment commentRating"> 
					 <div class="row">
					 	4
					 </div>
					 <div class="row">
					 	<b>Helpfulness</b>
					 </div>
				 </div>
			</div>
			<div class="row bottom ">
				<div class="col-xs-6"> 
				<b>Rated by</b> Johnny
				</div>
				
				<div class="col-xs-6"> 
					<b>Comments:</b> The tour guide was very helpful and pleasant <a href="#comment1">..see more</a>
				</div>
			</div>
			</div>
		</div>
		
		<div class ="leftpaneltopcontent">
			  <div class="bubble">
			<div class="row top">
				 <div class="col-xs-6"> 
					<div class="content-header">Overall Rating: </div>
				</div>
				<div class="col-xs-6"> 
					<div style="padding-top:10px;">
					<stardiv>
						<starspan>&#9734;<starspan>&#9734;<starspan>&#9734;<starspan>&#9734;<starspan>&#9734;</starspan></starspan></starspan></starspan></starspan>
					</stardiv>
					</div>
				</div>
			</div>
			<div class="row middle contentCenterAlignment" style="">
				 <div class="col-xs-3 contentAlignment commentRating"> 
					 <div class="row">
					 	5
					 </div>
					 <div class="row">
					 	<b>Friendliness</b>
					 </div>
				 </div>
				 <div class="col-xs-3 contentAlignment commentRating"> 
					 <div class="row">
					 	5
					 </div>
					 <div class="row">
					 	<b>Knowledge</b>
					 </div>
				 </div>
				  <div class="col-xs-3 contentAlignment commentRating"> 
					 <div class="row">
					 	5
					 </div>
					 <div class="row">
					 	<b>Communication</b>
					 </div>
				 </div>
				  <div class="col-xs-3 contentAlignment commentRating"> 
					 <div class="row">
					 	5
					 </div>
					 <div class="row">
					 	<b>Helpfulness</b>
					 </div>
				 </div>
			</div>
			<div class="row bottom ">
				<div class="col-xs-6"> 
				<b>Rated by</b> John
				</div>
				
				<div class="col-xs-6"> 
					<b>Comments:</b> Very knowledgable and good with direction <a href="#comment2">..see more</a>
				</div>
			</div>
			</div>
		</div>
		</div>
	</div>
<!-- 2 -->		
		 
</div> <!-- Page1 -->
</div>
    <div id="comment1" class="modalDialog">
		<div>
			<a href="#close" title="Close" class="close">X</a>
			<h2>Comment</h2>
			The tour guide was very helpful and pleasant.<br>
			It can be seen that he tried his best to recommend all of the interesting places to us to visit
		</div>
	</div>
	
	<div id="comment2" class="modalDialog">
		<div>
			<a href="#close" title="Close" class="close">X</a>
			<h2>Comment</h2>
			Very knowledgable and good with direction.<br>
			We did not get lost even for once!
		</div>
	</div>
	</jsp:body>
</t:master_tourGuide>
