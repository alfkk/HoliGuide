<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:master>
	<jsp:attribute name="css">
		<link href="/lib/ext/datepicker/datepicker3.css" rel="stylesheet">
		<link href="/lib/ext/bootstrap-combobox/bootstrap-combobox.css" rel="stylesheet">
		<link href="/lib/css/jPages.css" rel="stylesheet">
		<link href="/lib/css/create_itinerary2.css" rel="stylesheet">
		
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
		</style>
		
  </jsp:attribute>
	<jsp:attribute name="js">
		<script src="/lib/js/jquery-sortable.js"></script>
		<script src="/lib/ext/datepicker/bootstrap-datepicker.js"></script>
		<script src="/lib/ext/bootstrap-combobox/bootstrap-combobox.js"></script>
		<script src="/lib/js/jPages.min.js"></script>
		<script src="/lib/js/jPagesTwo.min.js"></script>
		<script src="/lib/js/jquery.redirect.min.js"></script>
		<script src="/lib/js/create_itinerary2.js"></script>
		<script type="text/javascript">	
			$(function() {
			    $('.order-box').hide();
			
			    $('#showcomment').click(function() {
			        $('.order-box').show();
			        $('#showcomment').hide();
			        $('html, body').animate({scrollTop: $(document).height()}, 'slow');
			        return false;
			    });
			});
		</script>		
  </jsp:attribute>
	<jsp:body>  
		<div class="col-md-12 content">
			<div class="col-md-5 left-bar">
				<p style="font-size:30px"><strong>My Itinerary</strong></p>
				<form class="form-horizontal" role="form" action="/app/success_page_traveller_create_itinerary.jsp">
				  <div class="form-group">
				    <label class="col-sm-4 control-label">Travel date</label>
				    <div class="col-sm-8">
					    <div class="input-group input-daterange">
					      <input type="text" class="form-control input-sm" name="from_date" />
					    	<span class="input-group-addon">to</span>
					      <input type="text" class="form-control input-sm" name="to_date" />
					    </div>
				    </div>
				  </div>
				  <div class="form-group">
				    <label class="col-sm-4 control-label">Traveler number</label>
				    <div class="col-sm-2">
				    	<input type="number" class="form-control input-sm" id="trav_num" value="1" min="1">
				    </div>
				    <label class="col-sm-2 control-label">Budget</label>
				    <div class="col-sm-4">
				    	<div class="input-group">
				    		<span class="input-group-addon"><span class="glyphicon glyphicon-usd"></span></span>
				    		<input type="number" class="form-control input-sm" id="budget" value="100" min="1">
				    	</div>
				    </div>
				  </div>
				  <div class="form-group">
				  	<div class='col-sm-12'>
					  	<ul id="itemContainer1" class='simple_with_animation vertical list-group chosen'>
					  	</ul>
					  	<div class="holder holder1"></div>
					  </div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-12">
				      <!--  <button class="btn btn-info">Summary</button>  -->
				      <button type="reset" class="btn btn-warning reset">Clear All</button>
				      <a href="#overallcomment"><input type="button" class="btn btn-primary" value="Submit"/></a>
				    </div>
				  </div>
				  
				  <div id="overallcomment" class="modalDialog">
						<div>
							<a href="#close" title="Close" class="close">X</a>
							<h2>Overall Comment</h2><p>
							<label for="overallcomment"> Comment:</label>
							<textarea  name="overallcomment"></textarea><p/>
						<div class=row><button type="submit" id="submit" class="btn pull-right">Submit</button></div>
						</div>
					</div>
				</form>
			</div>
			<div class="col-md-7 right-bar">
			<p style="font-size:30px"><strong>Search For Itinerary</strong></p>
				<form class="form-horizontal" role="form">
				  <div class="form-group">
				  	<div class="col-sm-5">
				    	<input type="text" class="form-control filter" placeholder="Search..." />
				  	</div>
				  	<div class="col-sm-1">
				  		<label class="control-label">Filter</label>
				  	</div>
				  	<div class="col-sm-3">
							<select class="form-control input-sm combobox" id="city" name="city">
					    	<option value="">City, Country</option>
					    	<option value=" ">City, Country</option>
					    	<option value="Singapore , Singapore">Singapore , Singapore</option>
					    	<option value="Bali , Indonesia">Bali , Indonesia</option>
					    	<option value="Bandung , Indonesia">Bandung , Indonesia</option>
					    </select>
				  	</div>
				  	<div class="col-sm-3">
							<select class="form-control input-sm combobox" id="category" name="category">
					    	<option value="">Category</option>
					    	<option value=" ">Category</option>
					    	<option value="Tourist Spot">Tourist Spot</option>
					    	<option value="Restaurant">Restaurant</option>
					    	<option value="Hotel">Hotel</option>
					    </select>
				  	</div>
				  </div>
				  <div class="form-group">
				  	<div class='col-sm-12'>
					   	<ul id="itemContainer2" class='simple_with_animation vertical list-group selection'>
					      <c:forEach items="${selectionList}" var="selection">
						      <li class="list-group-item">
						      	<a class="add"><span class="glyphicon glyphicon-plus"></span></a>
						      	<div class="name"><c:out value="${selection[0]}" /></div>
										<div class="category"><c:out value="${selection[1]}" /></div>
										<div class="country"><c:out value="${selection[2]}" /></div>
										<div class="description"><c:out value="${selection[3]}" /></div>
						      </li>
					      </c:forEach>
					  	</ul>
					  	<div class="holder holder2"></div>
					  </div>
				  </div>
				  <input class="pull-left btn-xs btn-danger" name="showcomment" id="showcomment" type="button" value="Add a custom itinerary">
				  <div class="order-box">
					  <div class="form-group">
					  	<div class="col-sm-12">
					  		<textarea id="custom" class="form-control itinerary" data-placement="bottom" data-content="Please enter activity!" rows="3" placeholder="Enter Custom Activity (e.g. location, activity, etc..)"></textarea>
					  	</div>
					  </div>
					  <div class="form-group pull-right">
					  	<div class="col-sm-12">
					  		<button class="btn btn-xs btn-primary" id="add-itinerary"><span class="glyphicon glyphicon-plus"></span> Add To Itinerary</button>
					  	</div>
					  </div>
				  </div>
				</form>
			</div>
		</div>
		<!-- your popup hidden content -->
        <div id="popover_content_wrapper" style="display: none">
        	<div class="cal-content">
        		Select chosen day:
        		<select class="day-choice">
        			<option>Day 1</option>
        			<option>Day 2</option>
        			<option>Day 3</option>
        		</select>
        	</div>
        </div>
        <div id="popover_content_wrapper2" style="display: none">
        	<div class="comment-content">
					  <div class="form-group">
					  	<div class="col-sm-12">
					  		<textarea class="form-control comment" data-placement="right" data-content="Please enter comment!" rows="3" cols="200" maxlength="300" placeholder="Enter Comment..."></textarea>
					  	</div>
					  </div>
					  <div class="form-group pull-right">
					  	<div class="col-sm-12">
					  		<button type="button" class="btn btn-xs btn-primary add-comment"><span class="glyphicon glyphicon-plus"></span> Add To Itinerary</button>
					  	</div>
					  </div>
        	</div>
        </div>
	</jsp:body>
</t:master>