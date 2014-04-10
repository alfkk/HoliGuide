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
			height: 100px;
			padding-left: 30px;
			padding-right: 30px;
			background: #e5f2fb;
			-webkit-border-radius: 46px;
			-moz-border-radius: 46px;
			border-radius: 20px;
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
			top: 30px;
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
			top: 30px;
		}
		.img-responsive:hover
		{
			-webkit-filter: contrast(180%); 
			border:2px double #bbb;
			color:#aaa;
			text-decoration:"See More";
			background:#e6e6e6
		}
		
		h1 span { 
		   color: black; 
		   font: bold 45px/0px Helvetica, Sans-Serif; 
		   -webkit-font-smoothing: antialiased;
		}
		h3 span { 
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
		
		<!-- Start of Right side table-->
		.divTable
	    {
	        display:  table;
	        width:auto;
	        border-spacing:5px;/*cellspacing:poor IE support for  this*/
	       /* border-collapse:separate;*/
	    }
	    .divRow
	    {
	       display:table-row;
	       width:auto;
	
	    }
	    .divCell
	    {
	        float:left;/*fix for  buggy browsers*/
	        display:table-cell;
	        width:200px;
	        background-color:#e5f2fb;
	    }
		
		<!--TO Resize Image-->
		.resize {
    		width: 100px;
    		height: auto;
		}
		.resize {
    		width: 90px;
    		height: auto;
		}
		
		<!--Star Rating-->
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
		</style>
  	
  </jsp:attribute>
	<jsp:attribute name="js">
		<script src=""></script>
  </jsp:attribute>
	<jsp:body>

   <div class="content">   
      
     <div id="page1">
		 <div class="row padrow">
		 
		 <div class="col-xs-12 col-sm-12 col-md-12 padrow ">
		 <div class="row nameFontSize">Edward</div>
		 <div class="row">Joined 5 Years ago, Bali Indonesia</div>
		 </div>
		  <div class="col-xs-6 col-sm-6 col-md-4  leftpanel">
		  
		  
		  <div class="row leftpaneltopcontent padrow">
		  <img src="..\lib\img\g1.jpg">
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
		   	<b>Overall Rating:</b> <starspan>&#9734;<starspan>&#9734;<starspan>&#9734;<starspan>&#9734;&#9734;</starspan></starspan></starspan></starspan>
		   </div>
		 </div>
		  
		  
		  
		  <div class="col-xs-6 col-sm-6 col-md-8">
		  <div class ="leftpaneltopcontent">
		  	<div class="divTable">
		  		<div class="headRow">
		  			<h1><span>My Favorite Guides</span></h1>
             	</div>
             	<div class="secondRow">
             		Filter by:
          	 
		          	 <select class="form-control headerDDLStyle">
					  <option value='' disabled selected style='display:none;'>Country</option>
					  <option>Indonesia</option>
					  <option>Korea</option>
					  <option>Phillipines</option>
					  <option>Hong Kong</option>
					</select>
		          	 
		          	 <select class="form-control headerDDLStyle">
					  <option value='' disabled selected style='display:none;'>City</option>
					  <option>Bali</option>
					  <option>Jakarta</option>
					  <option>Bandung</option>
					  <option>Surabaya</option>
					</select>
					<button type="button" class="btn btn-warning">Show All</button>
             	</div>
             	<div class="thirdRow">
             	<p></p>
             	</div>
           		<div class="row">
           			<div class="col-xs-2 col-sm-2 col-md-2">
           				<img class="resize" src="..\lib\img\g1.jpg"/>
           			</div>
           			<div class="col-xs-8 col-sm-8 col-md-8">
           				<div class="bubble">
	                		<div class="col-xs-6 col-sm-6 col-md-6">
	                			<div class="row middle leftpaneltopcontent">
	                				<b><font size="5">Antony Salim</font></b>
	                			</div>
	                			<div class="row middle leftpaneltopcontent">
	                				@Bali, Indonesia
	                			</div>
	                		</div>
	                		<div class="col-xs-6 col-sm-6 col-md-6">
	                			<div class="row middle leftpaneltopcontent">
	                				<b><font size="5">Overall Rating</font></b>
	                			</div>
	                			<div class="row middle leftpaneltopcontent">
	                				<starspan>&#9734;<starspan>&#9734;<starspan>&#9734;<starspan>&#9734;&#9734;</starspan></starspan></starspan></starspan>
	                			</div>
	                		</div>
	                	</div>
           			</div>
            	</div>
            	<div><p></p></div>
            	<div class="row">
           			<div class="col-xs-2 col-sm-2 col-md-2">
           				<img class="resize" src="..\lib\img\g1.jpg"/>
           			</div>
           			<div class="col-xs-8 col-sm-8 col-md-8">
           				<div class="bubble">
	                		<div class="col-xs-6 col-sm-6 col-md-6">
	                			<div class="row middle leftpaneltopcontent">
	                				<b><font size="5">Budi Santoso</font></b>
	                			</div>
	                			<div class="row middle leftpaneltopcontent">
	                				@Ho chi Minh, Vietnam
	                			</div>
	                		</div>
	                		<div class="col-xs-6 col-sm-6 col-md-6">
	                			<div class="row middle leftpaneltopcontent">
	                				<b><font size="5">Overall Rating</font></b>
	                			</div>
	                			<div class="row middle leftpaneltopcontent">
	                				<starspan>&#9734;<starspan>&#9734;<starspan>&#9734;<starspan>&#9734;&#9734;</starspan></starspan></starspan></starspan>
	                			</div>
	                		</div>
	                	</div>
           			</div>
            	</div>
            	<div><p></p></div>
            	<div class="row">
           			<div class="col-xs-2 col-sm-2 col-md-2">
           				<img class="resize" src="..\lib\img\g1.jpg"/>
           			</div>
           			<div class="col-xs-8 col-sm-8 col-md-8">
           				<div class="bubble">
	                		<div class="col-xs-6 col-sm-6 col-md-6">
	                			<div class="row middle leftpaneltopcontent">
	                				<b><font size="5">Gan Santur</font></b>
	                			</div>
	                			<div class="row middle leftpaneltopcontent">
	                				@Club Med, Bali
	                			</div>
	                		</div>
	                		<div class="col-xs-6 col-sm-6 col-md-6">
	                			<div class="row middle leftpaneltopcontent">
	                				<b><font size="5">Overall Rating</font></b>
	                			</div>
	                			<div class="row middle leftpaneltopcontent">
	                				<starspan>&#9734;<starspan>&#9734;<starspan>&#9734;<starspan>&#9734;&#9734;</starspan></starspan></starspan></starspan>
	                			</div>
	                		</div>
	                	</div>
           			</div>
            	</div>
		  	</div>
		  </div>
		  </div>
		</div>
		
		
		
		</div>
	</div>
    
    
	</jsp:body>
</t:master>
