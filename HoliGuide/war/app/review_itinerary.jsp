<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:master_tourGuide>
	<jsp:attribute name="css">
		<link href="/lib/ext/datepicker/datepicker3.css" rel="stylesheet">
		<link href="/lib/ext/bootstrap-combobox/bootstrap-combobox.css" rel="stylesheet">
		<link href="/lib/css/jPages.css" rel="stylesheet">
		<link href="/lib/css/create_itinerary.css" rel="stylesheet">
  </jsp:attribute>
	<jsp:attribute name="js">
		<script src="/lib/js/jquery-sortable.js"></script>
		<script src="/lib/ext/datepicker/bootstrap-datepicker.js"></script>
		<script src="/lib/ext/bootstrap-combobox/bootstrap-combobox.js"></script>
		<script src="/lib/js/jPages.min.js"></script>
		<script src="/lib/js/jPagesTwo.min.js"></script>
		<script src="/lib/js/create_itinerary.js"></script>
  </jsp:attribute>
	<jsp:body>  
		<div class="col-md-12 content">
			<div class="col-md-5 left-bar">
			<p style="font-size:30px"><strong>Finalised Itinerary</strong></p>
				<form class="form-horizontal" role="form" action="app/success_page_tourguide_review.jsp">
				  <div class="form-group">
				    <label class="col-sm-4 control-label">Travel date</label>
				    <div class="col-sm-8">
					    <div class="input-group input-daterange">
					      <input type="text" class="form-control input-sm" name="from_date2" disabled />
					    	<span class="input-group-addon">to</span>
					      <input type="text" class="form-control input-sm" name="to_date2" disabled />
					    </div>
				    </div>
				  </div>
				  <div class="form-group">
				  	<div class='col-sm-12'>
					  	<ul id="itemContainer1" class='simple_with_animation vertical list-group chosen'>
					  		<li class="list-group-item" style="display: block; opacity: 1;">
					      	<a class="remove"><span class="glyphicon glyphicon-remove"></span></a><a class="cal" data-original-title="" title=""><span class="glyphicon glyphicon-calendar"></span></a>
					      	<div class="name">Universal Studio Singapore<span class="cal" data-original-title="" title=""> (Day 1)</span></div>
									<div class="category">Tourist Spot</div>
									<div class="country">Singapore , Singapore</div>
									<div class="description">Great palce for family gathering!</div>
					      </li>
					      <li class="list-group-item" style="display: block; opacity: 1;">
					      	<a class="remove"><span class="glyphicon glyphicon-remove"></span></a><a class="cal" data-original-title="" title=""><span class="glyphicon glyphicon-calendar"></span></a>
					      	<div class="name">Newton Food Center<span class="cal" data-original-title="" title=""> (Day 1)</span></div>
									<div class="category">Restaurant</div>
									<div class="country">Singapore , Singapore</div>
									<div class="description">Good and cheap food in newton area. Must try for visitor!</div>
					      </li>
					      <li class="list-group-item" style="display: block; opacity: 1;">
					      	<a class="remove"><span class="glyphicon glyphicon-remove"></span></a><a class="cal" data-original-title="" title=""><span class="glyphicon glyphicon-calendar"></span></a>
					      	<div class="name">Singapore Zoo<span class="cal" data-original-title="" title=""> (Day 2)</span></div>
									<div class="category">Tourist Spot</div>
									<div class="country">Singapore , Singapore</div>
									<div class="description">Fancy a zoo attractions in Singapore?!</div>
					      </li>
					      <li class="list-group-item" style="display: block; opacity: 1;">
					      	<a class="remove"><span class="glyphicon glyphicon-remove"></span></a><a class="cal" data-original-title="" title=""><span class="glyphicon glyphicon-calendar"></span></a>
					      	<div class="name">Singapore Aquarium<span class="cal" data-original-title="" title=""> (Day 2)</span></div>
									<div class="category">Tourist Spot</div>
									<div class="country">Singapore , Singapore</div>
									<div class="description">A lot of different fish to be seen!</div>
					      </li>
					  	</ul>
					  	<div class="holder holder1"></div>
					  </div>
				  </div>
				  <div class="form-group">
				  	<div class="col-sm-12">
				  		<textarea class="form-control comment" data-placement="bottom" data-content="Please enter comment!" rows="3" placeholder="Enter Comment..."></textarea>
				  	</div>
				  </div>
				  <div class="form-group pull-right">
				  	<div class="col-sm-12">
				  		<button class="btn btn-xs btn-primary" id="add-comment"><span class="glyphicon glyphicon-plus"></span> Add To Itinerary</button>
				  	</div>
				  </div>
				  <div class="form-group">
				    <div class="col-sm-12">
				      <button class="btn btn-info">Summary</button>
				      <button type="reset" class="btn btn-warning reset">Clear All</button>
				      <button type="submit" class="btn btn-primary" >Submit</button>
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
				  <div class="form-group">
				  	<div class="col-sm-12">
				  		<textarea class="form-control itinerary" data-placement="bottom" data-content="Please enter activity!" rows="3" placeholder="Enter Custom Activity..."></textarea>
				  	</div>
				  </div>
				  <div class="form-group pull-right">
				  	<div class="col-sm-12">
				  		<button class="btn btn-xs btn-primary" id="add-itinerary"><span class="glyphicon glyphicon-plus"></span> Add To Itinerary</button>
				  	</div>
				  </div>
				</form>
			</div>
		</div>
		<!-- your popup hidden content -->
        <div id="popover_content_wrapper" style="display: none">
        	<div class="cal-content">
        		Days:
        		<select class="day-choice">
        			<option>Day 1</option>
        			<option>Day 2</option>
        			<option>Day 3</option>
        		</select>
        	</div>
        </div>
	</jsp:body>
</t:master_tourGuide>