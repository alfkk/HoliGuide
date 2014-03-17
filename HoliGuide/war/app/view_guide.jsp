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
        -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.15);
           -moz-box-shadow: 0 1px 2px rgba(0,0,0,.15);
                box-shadow: 0 1px 2px rgba(0,0,0,.15);
      }
      
      .page-header {
        background-color: #f5f5f5;
        padding: 20px 20px 10px;
        margin: -20px -20px 20px;
      }
      
      .content-header { 
      	font-size: 2em; 
      	font-weight:bold;
      }
      
      .padrow {
			padding-bottom: 15px;
			padding-right: 15px
	  }
	  
		  p {
	  text-align: center;
	  line-height: 100px; /* where the magic happens */
	}

	.bubble 
	{
		position: relative;
		height: 260px;
		padding-left: 30px;
		background: #e5f2fb;
		-webkit-border-radius: 46px;
		-moz-border-radius: 46px;
		border-radius: 46px;
		border: #C0C0C0 solid 1px;
	}

	.bubble:after 
	{
		content: '';
		position: absolute;
		border-style: solid;
		border-width: 15px 15px 15px 0;
		border-color: transparent #e5f2fb;
		display: block;
		width: 0;
		z-index: 1;
		left: -15px;
		top: 50px;
	}

	.bubble:before 
	{
		content: '';
		position: absolute;
		border-style: solid;
		border-width: 15px 15px 15px 0;
		border-color: transparent #C0C0C0;
		display: block;
		width: 0;
		z-index: 0;
		left: -16px;
		top: 50px;
	}
  	</style>
  	
  </jsp:attribute>
	<jsp:attribute name="js">
		<script src=""></script>
  </jsp:attribute>
	<jsp:body>

   <div class="content">   
	<div class="page-header">
          <h1><big>Itinerary List</big> <small> pick your favourite</small></h1>
          Sort by:
          
        
			  <button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown">
			    Country <span class="caret"></span>
			  </button>
			  <ul class="dropdown-menu">
			   	Indonesia
			  </ul>
			  
			  <button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown">
			    City <span class="caret"></span>
			  </button>
			  <ul class="dropdown-menu">
			   	Bali
			  </ul>
			  
			  <button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown">
			    Status <span class="caret"></span>
			  </button>
			  <ul class="dropdown-menu">
			   	Pending
			  </ul>
			  
			   <button class="btn btn-default btn-xs dropdown-toggle" type="button" data-toggle="dropdown">
			    Creation Date <span class="caret"></span>
			  </button>
			  <ul class="dropdown-menu">
			   	12/12/2013
			  </ul>
			  
			    <button class="btn btn-default btn-xs" type="button" >
			    Show All 
			  </button>
			  
			
          
     </div> 
      
     <div id="page1">
	 <div class="row padrow">
	  <div class="col-xs-6 col-md-4"><img src="..\lib\img\The_Spa_Club_Med_Bali.jpg" class="img-responsive img-circle" alt="Responsive image"></div>
	  <div class="bubble col-xs-12 col-sm-6 col-md-8"><p class="content-header">
	
		
			Bali, ClubMed
		


	</p></div>
	</div>
	 <div class="row padrow">
	   <div class="col-xs-6 col-md-4"><img src="..\lib\img\The_Spa_Club_Med_Bali.jpg" class="img-responsive img-circle" alt="Responsive image"></div>
	  <div class="bubble col-xs-12 col-sm-6 col-md-8"><p class="text-align: center; line-height: 100px;">


	</p></div>
	</div>
	 <div class="row padrow">
	   <div class="col-xs-6 col-md-4"><img src="..\lib\img\The_Spa_Club_Med_Bali.jpg" class="img-responsive img-circle" alt="Responsive image"></div>
	  <div class="bubble col-xs-12 col-sm-6 col-md-8"><p class="text-align: center; line-height: 100px;">
	  
	  
	  </p></div>
	</div>
	 <div class="row padrow">
	   <div class="col-xs-6 col-md-4"><img src="..\lib\img\The_Spa_Club_Med_Bali.jpg" class="img-responsive img-circle" alt="Responsive image"></div>
	  <div class="bubble col-xs-12 col-sm-6 col-md-8"><p class="text-align: center; line-height: 100px;">
	  
	  
	  </p></div>
	</div>
	</div>
	<div style="overflow: hidden;">
    <div style="float: right;">
		<ul class="pagination" >
		  <li><a href="#">&laquo;</a></li>
		  <li><a href="#">1</a></li>
		  <li><a href="#">2</a></li>
		  <li><a href="#">3</a></li>
		  <li><a href="#">4</a></li>
		  <li><a href="#">5</a></li>
		  <li><a href="#">&raquo;</a></li>
		</ul>
		</div>
	</div>
</div>
    
    
	</jsp:body>
</t:master>
