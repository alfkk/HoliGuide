<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<t:master>
	<jsp:attribute name="css">
		<link href="/lib/css/jPages.css" rel="stylesheet">
		<link href="/lib/css/view_guide_list.css" rel="stylesheet">
  </jsp:attribute>
	<jsp:attribute name="js">
		<script src="/lib/js/jPages.min.js"></script>
		<script src="/lib/js/view_guide_list.js"></script>
  </jsp:attribute>
	<jsp:body>
		<div class="content">   
			<div class="page-header">
				<div style="overflow: hidden;">
      		<div class="row">
					  <div class="col-sm-12 page-header-content">
					  	<h3><span> View Tour Guide </span></h3>
					  </div>
					</div>
				</div>
				<div class="page-header-content">
					Filter by:
					<input type="text" class="form-control headerDDLStyle filter filter-name" placeholder="Search Name..." />
					<input type="text" class="form-control headerDDLStyle filter filter-description" placeholder="Search Description..." />
					Sort by:
					<select id="sort-guide" class="form-control headerDDLStyle">
						<option value="gAsc">Name - Ascending</option>
						<option value="gDesc">Name - Descending</option>
						<option value="rAsc">Rating - Ascending</option>
						<option value="rDesc">Rating - Descending</option>
					</select>
			  </div>
			</div> 
			
			<div id="itemContainer">
				<c:forEach items="${guideList}" var="guide">
					<div class="row padrow guide">
						<div class="col-xs-0 col-sm-5 col-md-2"><img src="..\lib\img\g1.jpg" class="img-responsive" alt="Responsive image"></div>
						<div class="col-xs-6 col-sm-4 col-md-6"><p class="content-header">
							<a href="tourguidefeedback?receiver=Edward&rater=Edward"><h2 class="guide-name"><c:out value="${guide[0]}" /></h2></a>
							<div class="guide-description"><c:out value="${guide[1]}" /></div>
						</p></div>
						<div class="col-xs-6 col-sm-3 col-md-4"><p class="content-header">
							<h4 class="rating">Overall Rating:</h4>
							<c:forEach var="i" begin="1" end="${guide[2]}">
								<starspan>&#9734;
									<c:if test="${i == guide[2]}">
										<c:forEach var="j" begin="${guide[2]+1}" end="5">
											&#9734;
										</c:forEach>
									</c:if>
								</starspan>
							</c:forEach>
							<span class="guide-rating" style="display: none"><c:out value="${guide[2]}" /></span>
						</p></div>
					</div>
				</c:forEach>
			</div>
			<div class="holder"></div>
		</div>
	</jsp:body>
</t:master>