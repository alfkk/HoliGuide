<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<t:master>
<jsp:attribute name="css">
<link href="" rel="stylesheet">
<style type="text/css">
.content {
	padding-top: 40px;
	background-color: #fff;
	padding: 20px;
	margin: 0 -20px;
	/* negative indent the amount of the padding to maintain the grid system */
	-webkit-border-radius: 0 0 6px 6px;
	-moz-border-radius: 0 0 6px 6px;
	border-radius: 0 0 6px 6px;
	-webkit-box-shadow: 0 1px 20px rgba(0, 0, 0, .15);
	-moz-box-shadow: 0 1px 20px rgba(0, 0, 0, .15);
	box-shadow: 0 1px 20px rgba(0, 0, 0, .15);
}
body {
	background: url('/lib/img/whitespace_filler.jpg');
}
</style>
</jsp:attribute>
<jsp:body>
<div class="content">
	<div class="row">
		<div class="col-xs-3 .col-sm-3" style="padding-left:90px">
			<img src="..\lib\img\CCFPaperplane.png" style="height:200px; width:200px">
		</div>
		<div class="col-xs-9 .col-sm-9">
			 <center> <h2>Thank you for participating in this web experiment! <br/>
			  		Your participation is very much appreciated! :D</center>
			  </h2>
		</div>
	</div>
</div>
</jsp:body>
</t:master>