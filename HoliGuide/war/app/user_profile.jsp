<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.HoliGuide.model.*" %>

<t:master>
	<jsp:attribute name="css">
		<link href="" rel="stylesheet">
	  	<style type="text/css">
	  	
	h3.rating-title{
		color: #000;
	}	  	
	  	.rating {
    overflow: hidden;
    display: inline-block;
    font-size: 0;
    position: relative;
}
.rating-input {
    float: right;
    width: 16px;
    height: 16px;
    padding: 0;
    margin: 0 0 0 -16px;
    opacity: 0;
}
.rating:hover .rating-star:hover,
.rating:hover .rating-star:hover ~ .rating-star,
.rating-input:checked ~ .rating-star {
    background-position: 0 0;
}
.rating-star,
.rating:hover .rating-star {
    position: relative;
    float: right;
    display: block;
    width: 16px;
    height: 16px;
    background: url('http://kubyshkin.ru/samples/star-rating/star.png') 0 -16px;
}

/* Just for the demo */

	  	
	  	
	  	
	  	
	  	
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
		}

		starspan {
			color: orange;
			cursor: pointer;
		}

		starspan:before {
			content: "\2605";
			position: absolute;
			color: orange;
		}	  	
	  	.content {
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
	      
		  
		
		.bubble 
		{
			position: relative;
			padding-left: 30px;
			padding-right: 30px;
			background: #e5f2fb;
			-webkit-border-radius: 30px;
			-moz-border-radius: 30px;
			border-radius: 30px;
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
		
		.toTheRight{
			overflow: hidden;
			float: right;
		}
		.buttonRightPositioning{
			overflow: hidden;
			float: right;
			padding-right:50px;
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
		.line-separator{
		}
		
		div.horizontalRule
		{
		    border: 0;
		    height: 1px;
		    background-image: -webkit-linear-gradient(left, rgba(0,0,0,0), rgba(0,0,0,0.75), rgba(0,0,0,0)); 
		    background-image:    -moz-linear-gradient(left, rgba(0,0,0,0), rgba(0,0,0,0.75), rgba(0,0,0,0)); 
		    background-image:     -ms-linear-gradient(left, rgba(0,0,0,0), rgba(0,0,0,0.75), rgba(0,0,0,0)); 
		    background-image:      -o-linear-gradient(left, rgba(0,0,0,0), rgba(0,0,0,0.75), rgba(0,0,0,0)); 
		}
		
	</style>
  	
  </jsp:attribute>
	<jsp:attribute name="js">
	<script type="text/javascript">
		function check(){
		var submit=false;
		var sub=false;
		var subm=false;
		var submi=false;
		
		$('input[name="rating-input-4"]').each(function() {
		    if ($(this).is(":checked")) {
		        submit=true;
		    }
		});
		
		$('input[name="rating-input-3"]').each(function() {
		    if ($(this).is(":checked")) {
		        subm=true;
		    }
		});
		
		$('input[name="rating-input-2"]').each(function() {
		    if ($(this).is(":checked")) {
		        submi=true;
		    }
		});
		
		$('input[name="rating-input-1"]').each(function() {
		    if ($(this).is(":checked")) {
		        sub=true;
		    }
		});
		
		if(submit && sub && subm && submi) {
			$("#reportForm").submit();
		}else{
			alert("Please fill in everything");
			return false;
		}
	};
	</script>
		<script src=""></script>
  </jsp:attribute>
	<jsp:body>

   <div class="content">
      
     <div id="page1">
		 <div class="row padrow">
		 
		 <div class="col-xs-12 col-sm-12 col-md-12 padrow ">
		 	<div class="row nameFontSize"><c:out value="${param.receiver}"/></div>
		 	<div class="row">Joined 5 Years ago, Bali Indonesia</div>
		 </div>
		  <div class="col-xs-3 col-sm-3 col-md-3  leftpanel" style="height:100%;">
		  	<div class="row leftpaneltopcontent">
		  	<img src="..\lib\img\g1.jpg" class="img-responsive img-rounded imageSize" alt="Responsive image">
		  	</div>
		  
		   <div class="row leftpaneltopcontent">
			   	<div class="col-xs-12 col-sm-12 col-md-12">
			   		<div class="row">
			   			<a href="/viewguide"><button class="btn btn-warning btn-sm buttonwidth">Add to Favourites</button></a>
			   		</div>
			   		
			   </div>
		   </div>
		   
		  <div class="row leftpaneltopcontent">
			   	<div class="col-xs-12 col-sm-12 col-md-12">
			   		<div class="row">
			   			<a href="#giveFeedback"><button class="btn btn-warning btn-sm buttonwidth">Give Feedback</button></a>
			   		</div>
			   		
			   </div>
		   </div>
		   
		  
		   <div class="row leftpaneltopcontent">
			   	<div class="horizontalRule">
				   	<div class="col-xs-12 col-sm-12 col-md-12">
						<div class="row">
						   	<b>Contact:</b> +65-81898827
						   	</div>
					   	</div>
				</div>
		   </div>
		   
		   <div class="row leftpaneltopcontent">
		   <div class="horizontalRule">
			    <div class="col-xs-12 col-sm-12 col-md-12">
					<div class="row">
					   	<b>Description:</b> Please feel free to contact me to discuss about your itinerary
					   	</div>
					</div>
				</div>	   	
		   </div>
		   
		   <div class="row leftpaneltopcontent">
			   <div class="horizontalRule">
				   <div class="col-xs-12 col-sm-12 col-md-12">
						<div class="row">
					   	<b>Language Proficiency:</b> Bahasa Indonesia, English
					   	</div>
				   	</div>
			   	</div>
		   </div>
		   
		   <div class="row leftpaneltopcontent">
			   <div class="horizontalRule">
				   <div class="col-xs-12 col-sm-12 col-md-12">
						<div class="row">
						   	<b>Overall Rating:</b>
				   			<stardiv>
								<starspan>&#9734;<starspan>&#9734;<starspan>&#9734;<starspan>&#9734;&#9734;</starspan></starspan></starspan></starspan>
							</stardiv> 546 Ratings
						</div>
					</div>
				</div>
		   </div>
		 </div>
		  
	<div class="col-xs-9 col-sm-9 col-md-9">	  
	<c:forEach items="${feedbackList}" var="feedback">
		<div class="row">
		  <div class="col-xs-12 col-sm-12 col-md-12">
		  <div class ="leftpaneltopcontent">
			  <div class="bubble">
				  <div>
					<div class="row">
						<div class="col-xs-12 col-sm-12 col-md-12">
								<div class="row"><h3 class="rating-title">Overall Rating: <c:out value='${feedback.overall}'/>
								<stardiv>
										<starspan>&#9734;<starspan>&#9734;<starspan>&#9734;<starspan>&#9734;&#9734;</starspan></starspan></starspan></starspan>
									</stardiv>
									</h3>
								</div>
						</div>	
					</div>
				</div>
				<div class="row">
					<div class="horizontalRule">
						 <div class="col-xs-3 col-md-3  line-separator"> 
							 <div class="row">
				   				<div class="col-xs-12 col-sm-12 col-md-12">
									<div class="row">
									 	<h5><c:out value='${feedback.friendliness}'/></h5>
									</div>
							 		<div class="row">
							 			<h6><strong>Friendliness</strong></h6>
							 		</div>
						 		</div>
						 	</div>
						 </div>		
						 <div class="col-xs-3 col-md-3 line-separator"> 
							 <div class="row">
							 	<div class="horizontalRule">
					   				<div class="col-xs-12 col-sm-12 col-md-12">
										<div class="row">
									 		<h5><c:out value='${feedback.knowledge}'/></h5>
									 	</div>
									 	<div class="row">
									 		<h6><strong>Knowledge</strong></h6>
									 	</div>
								 	</div>
							 	</div>
						 	</div>
						 </div>
						 <div class="col-xs-3 col-md-3 line-separator"> 
							 <div class="row">
							 	<div class="horizontalRule">
					   				<div class="col-xs-12 col-sm-12 col-md-12">
										<div class="row">
									 		<h5><c:out value='${feedback.communication}'/></h5>
									 	</div>
									 	<div class="row">
									 		<h6><strong>Communication</strong></h6>
									 	</div>
								 	</div>
							 	</div>
						 	</div>
						 </div>
						  <div class="col-xs-3 col-md-3 line-separator"> 
							 <div class="row">
							 	<div class="horizontalRule">
					   				<div class="col-xs-12 col-sm-12 col-md-12">
										<div class="row">
									 		<h5><c:out value='${feedback.helpfulness}'/></h5>
									 	</div>
									 	<div class="row">
									 		<h6><strong>Helpfulness</strong></h6>
									 	</div>
								 	</div>
							 	</div>
						 	</div>
						 </div>
					</div>
					</div>
					<div class="row">
						<div class="horizontalRule">
							<div class="col-xs-6"> 
								<div class="row">
									<h5><b>Rated by:</b> <c:out value='${feedback.rater}'/></h5>
								</div>
							</div>
							<div class="col-xs-6"> 
								<div class="row">
									<h5><b>Comments:</b> <c:out value='${feedback.comment}'/> <a href="#comment1">..see more</a></h5>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</c:forEach>
	</div>
</div>
<!-- 2 -->		
		 
</div> <!-- Page1 -->
</div>
    <div id="comment1" class="modalDialog">
		<div>
			<a href="#close" title="Close" class="close">X</a>
			<h2>Comment</h2><p>
			The tour guide was very helpful and pleasant.<br>
			It can be seen that he tried his best to recommend all of the interesting places to us to visit
		</div>
	</div>
	
	<div id="comment2" class="modalDialog">
		<div>
			<a href="#close" title="Close" class="close">X</a>
			<h2>Comment</h2><p>
			Very knowledgable and good with direction.<br>
			We did not get lost even for once!
		</div>
	</div>
	<form method="post" name="reportForm">
	<div class="col-xs-12 col-sm-12 col-md-12">
		<div id="giveFeedback" class="modalDialog">
			<div>
				<a href="#close" title="Close" class="close">X</a>
				<div class=row>
					<div class="col-xs-12 col-sm-12 col-md-12">
						<div class=row>
							<h2>Give Feedback</h2><p>
						</div>
					</div>
				</div>
				<div class=row>
					<div class="col-xs-3 col-sm-3 col-md-3">
						<div class=row>
						<h5>Friendliness:</h5>
						</div>
					</div>
					
					<div class="col-xs-9 col-sm-9 col-md-9">
						<div class="row">
							<h5>
								<span class="rating">
								        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1" value="5"/>
								        <label for="rating-input-1-5" class="rating-star"></label>
								        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1" value="4"/>
								        <label for="rating-input-1-4" class="rating-star"></label>
								        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1" value="3"/>
								        <label for="rating-input-1-3" class="rating-star"></label>
								        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1" value="2"/>
								        <label for="rating-input-1-2" class="rating-star"></label>
								        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1" value="1"/>
								        <label for="rating-input-1-1" class="rating-star"></label>
								</span>
							</h5>
						</div>
					</div>
				</div>
				
				<div class=row>
					<div class="col-xs-3 col-sm-3 col-md-3">
						<div class=row>
						<h5>Knowledge:</h5>
						</div>
					</div>
					
					<div class="col-xs-9 col-sm-9 col-md-9">
						<div class="row">
							<h5>
								<span class="rating">
								        <input type="radio" class="rating-input" id="rating-input-2-5" name="rating-input-2" value="5"/>
								        <label for="rating-input-2-5" class="rating-star"></label>
								        <input type="radio" class="rating-input" id="rating-input-2-4" name="rating-input-2" value="4"/>
								        <label for="rating-input-2-4" class="rating-star"></label>
								        <input type="radio" class="rating-input" id="rating-input-2-3" name="rating-input-2" value="3"/>
								        <label for="rating-input-2-3" class="rating-star"></label>
								        <input type="radio" class="rating-input" id="rating-input-2-2" name="rating-input-2" value="2"/>
								        <label for="rating-input-2-2" class="rating-star"></label>
								        <input type="radio" class="rating-input" id="rating-input-2-1" name="rating-input-2" value="1"/>
								        <label for="rating-input-2-1" class="rating-star"></label>
								</span>
							</h5>
						</div>
					</div>
				</div>
				
				<div class=row>
					<div class="col-xs-3 col-sm-3 col-md-3">
						<div class=row>
						<h5>Communication:</h5>
						</div>
					</div>
					
					<div class="col-xs-9 col-sm-9 col-md-9">
						<div class="row">
							<h5>
								<span class="rating">
								        <input type="radio" class="rating-input" id="rating-input-3-5" name="rating-input-3" value="5"/>
								        <label for="rating-input-3-5" class="rating-star"></label>
								        <input type="radio" class="rating-input" id="rating-input-3-4" name="rating-input-3" value="4"/>
								        <label for="rating-input-3-4" class="rating-star"></label>
								        <input type="radio" class="rating-input" id="rating-input-3-3" name="rating-input-3" value="3"/>
								        <label for="rating-input-3-3" class="rating-star"></label>
								        <input type="radio" class="rating-input" id="rating-input-3-2" name="rating-input-3" value="2"/>
								        <label for="rating-input-3-2" class="rating-star"></label>
								        <input type="radio" class="rating-input" id="rating-input-3-1" name="rating-input-3" value="1"/>
								        <label for="rating-input-3-1" class="rating-star"></label>
								</span>
							</h5>
						</div>
					</div>
				</div>
				
				<div class=row>
					<div class="col-xs-3 col-sm-3 col-md-3">
						<div class=row>
						<h5>Helpfulness:</h5>
						</div>
					</div>
					
					<div class="col-xs-9 col-sm-9 col-md-9">
						<div class="row">
							<h5>
								<span class="rating">
								        <input type="radio" class="rating-input" id="rating-input-4-5" name="rating-input-4" value="5"/>
								        <label for="rating-input-4-5" class="rating-star"></label>
								        <input type="radio" class="rating-input" id="rating-input-4-4" name="rating-input-4" value="4"/>
								        <label for="rating-input-4-4" class="rating-star"></label>
								        <input type="radio" class="rating-input" id="rating-input-4-3" name="rating-input-4" value="3"/>
								        <label for="rating-input-4-3" class="rating-star"></label>
								        <input type="radio" class="rating-input" id="rating-input-4-2" name="rating-input-4" value="2"/>
								        <label for="rating-input-4-2" class="rating-star"></label>
								        <input type="radio" class="rating-input" id="rating-input-4-1" name="rating-input-4" value="1"/>
								        <label for="rating-input-4-1" class="rating-star"></label>
								</span>
							</h5>
						</div>
					</div>
				</div>
				
				<div class="row">
					<div class="col-xs-3 col-sm-3 col-md-3">
						<div class="row">
							<h5>Comment:</h5>
						</div>
					</div>
					<div class="col-xs-9 col-sm-9 col-md-9">
						<div class="row">
							<textarea name="comment"></textarea>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-12">
						<div class=row><button type = "submit" formaction = "/tourguidefeedback" class="btn btn-sm pull-right" onclick="return check();">Submit</button><div>
					</div>
				</div>
			</div>
		</div>
		</div>
		</div>
	</div>
	</form>
	
	</jsp:body>
</t:master>
