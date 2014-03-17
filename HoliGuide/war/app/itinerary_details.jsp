<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<t:master>
<jsp:attribute name="css">
<link href="" rel="stylesheet">
<style type="text/css">
	.secretCommentBttn
	{
		Opacity: 0;
	}
	
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

	.close
	{
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

	.close:hover
	{
	background: #00d9ff;
	}
	
	.content
	{
		background-color: #fff;
		/* negative indent the amount of the padding to maintain the grid system */
		-webkit-border-radius: 0 0 6px 6px;
		-moz-border-radius: 0 0 6px 6px;
		border-radius: 0 0 6px 6px;
		-webkit-box-shadow: 0 1px 20px rgba(0, 0, 0, .15);
		-moz-box-shadow: 0 1px 20px rgba(0, 0, 0, .15);
		box-shadow: 0 1px 20px rgba(0, 0, 0, .15);
	}

	body
	{
		background: url('/lib/img/whitespace_filler.jpg');
	}
	
	.bubble 
	{
		position: relative;
		height: 260px;
		padding-top: 30px;
		padding-bottom: 30px;
		padding-left: 30px;
		padding-right: 30px;
		background: #F2F2F2;
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
		border-color: transparent #F2F2F2;
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
	
	.bubble-guide
	{
		position: relative;
		height: 260px;
		padding-top: 30px;
		padding-bottom: 30px;
		padding-left: 30px;
		padding-right: 30px;
		background: #F5ECCE;
		-webkit-border-radius: 46px;
		-moz-border-radius: 46px;
		border-radius: 46px;
		border: #C0C0C0 solid 1px;
	}
	
	.bubble-guide:after 
	{
		content: '';
		position: absolute;
		border-style: solid;
		border-width: 15px 15px 15px 0;
		border-color: transparent #F5ECCE;
		display: block;
		width: 0;
		z-index: 1;
		left: -15px;
		top: 50px;
	}
	
	.bubble-guide:before 
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
	
	IMG.display-center
	{
		margin-left:auto;
		margin-right:auto;
		display:block;
	}
	
	span.main-header
	{
		font-size:40px;
		padding-top:10px;
	}
	
	.propose-button
	{
		position: absolute;
		right: 15px;
		top:30px;
		bottom:0px;
	}
	
	hr.main
	{
		color: #424242;
		background-color: #424242;
		height: 1px;
	}
	
	hr.secondary
	{
		color: #A4A4A4;
		background-color: #A4A4A4;
		height: 1px;
	}
	
	span.title-sizing
	{
		font-size:23px;
	}
	
	P.display-center
	{
		margin-left:auto;
		margin-right:auto;
		width:4.5em;
	}
	
	P.displaycenter
	{
		margin-left:auto;
		margin-right:auto;
		width:3em;
	}
	
	button.display-center
	{
		margin-left:auto;
		margin-right:auto;
		display:block;
	}
	
	select.display-center
	{
		margin-left:auto;
		margin-right:auto;
		display:block;
	}
	
	.bubble-buttons
	{
		position: absolute;
		right: 15px;
		top: 20px;
	}
	
	
</style>
</jsp:attribute>
<jsp:attribute name="js">
<script>
function confirmGo()
{
	if (window.confirm("Confirm Tour?"))
	{
		window.location.href="success_page.jsp";
	}
	else
	{
		return false;
	}
}

function dayChangeTourist()
{
	var sel = document.getElementById("touristDay");
	var value = sel.options[sel.selectedIndex].text;
	
	switch(value)
	{
	case "Select Day":
		document.getElementById("test1").innerHTML="No Day Selected";
		document.getElementById("test2").innerHTML="";
		document.getElementById("test3").innerHTML="";
		document.getElementById("test4").innerHTML="";
		document.getElementById("test5").innerHTML="";
		document.getElementById("test6").innerHTML="";
		document.getElementById("test7").innerHTML="";
		document.getElementById("test8").innerHTML="";
		break;
	case "Day 1":
		document.getElementById("test1").innerHTML="Universal Studios Singapore";
		document.getElementById("test2").innerHTML="Cantonese Food";
		document.getElementById("test3").innerHTML="Marina Bay Sands";
		document.getElementById("test4").innerHTML="Singapore Museum";
		document.getElementById("test5").innerHTML="Other Itinerary Item";
		document.getElementById("test6").innerHTML="Other Itinerary Item";
		document.getElementById("test7").innerHTML="Other Itinerary Item";
		document.getElementById("test8").innerHTML="Other Itinerary Item";
	  break;
	case "Day 2":
		document.getElementById("test1").innerHTML="Sentosa Cove";
		document.getElementById("test2").innerHTML="Malay Food";
		document.getElementById("test3").innerHTML="Indian Food";
		document.getElementById("test4").innerHTML="Other Itinerary Item";
		document.getElementById("test5").innerHTML="Other Itinerary Item";
		document.getElementById("test6").innerHTML="Other Itinerary Item";
		document.getElementById("test7").innerHTML="Other Itinerary Item";
		document.getElementById("test8").innerHTML="Other Itinerary Item";
	  break;
	case "Day 3":
		document.getElementById("test1").innerHTML="Indonesian Food";
		document.getElementById("test2").innerHTML="Changi Airport";
		document.getElementById("test3").innerHTML="Downtown East";
		document.getElementById("test4").innerHTML="Other Itinerary Item";
		document.getElementById("test5").innerHTML="Other Itinerary Item";
		document.getElementById("test6").innerHTML="Other Itinerary Item";
		document.getElementById("test7").innerHTML="Other Itinerary Item";
		document.getElementById("test8").innerHTML="Other Itinerary Item";
		break;
	}
}

function dayChangeGuide()
{
	var sel = document.getElementById("guideDay");
	var value = sel.options[sel.selectedIndex].text;
	
	switch(value)
	{
	case "Select Day":
		document.getElementById("test9").innerHTML="No Day Selected";
		document.getElementById("test10").innerHTML="";
		document.getElementById("test11").innerHTML="";
		document.getElementById("test12").innerHTML="";
		document.getElementById("test13").innerHTML="";
		document.getElementById("test14").innerHTML="";
		document.getElementById("test15").innerHTML="";
		document.getElementById("test16").innerHTML="";
		break;
	case "Day 1":
		document.getElementById("test9").innerHTML="Day 1 Items";
		document.getElementById("test10").innerHTML="Changed Itinerary Item";
		document.getElementById("test11").innerHTML="Changed Itinerary Item";
		document.getElementById("test12").innerHTML="Changed Itinerary Item";
		document.getElementById("test13").innerHTML="Changed Itinerary Item";
		document.getElementById("test14").innerHTML="Changed Itinerary Item";
		document.getElementById("test15").innerHTML="Changed Itinerary Item";
		document.getElementById("test16").innerHTML="Changed Itinerary Item";
	  break;
	case "Day 2":
		document.getElementById("test9").innerHTML="Day 2 Items";
		document.getElementById("test10").innerHTML="Changed Itinerary Item";
		document.getElementById("test11").innerHTML="Changed Itinerary Item";
		document.getElementById("test12").innerHTML="Changed Itinerary Item";
		document.getElementById("test13").innerHTML="Changed Itinerary Item";
		document.getElementById("test14").innerHTML="Changed Itinerary Item";
		document.getElementById("test15").innerHTML="Changed Itinerary Item";
		document.getElementById("test16").innerHTML="Changed Itinerary Item";
	  break;
	case "Day 3":
		document.getElementById("test9").innerHTML="Day 3 Items";
		document.getElementById("test10").innerHTML="Changed Itinerary Item";
		document.getElementById("test11").innerHTML="Changed Itinerary Item";
		document.getElementById("test12").innerHTML="Changed Itinerary Item";
		document.getElementById("test13").innerHTML="Changed Itinerary Item";
		document.getElementById("test14").innerHTML="Changed Itinerary Item";
		document.getElementById("test15").innerHTML="Changed Itinerary Item";
		document.getElementById("test16").innerHTML="Changed Itinerary Item";
		break;
	}
}

function guideNameChange()
{
	var sel = document.getElementById("guideNameList");
	var value = sel.options[sel.selectedIndex].text;
	document.getElementById("guideName").innerHTML=value;
	document.getElementById("guideDay").selectedIndex = 0;
	dayChangeGuide();
}

function loadGuideComment()
{
	document.getElementById('guideHiddenBttn').children[0].click()
}

function loadTravellerComment()
{
	document.getElementById('travellerHiddenBttn').children[0].click()
}

function downloadTravellerItinerary()
{
	document.getElementById('travellerHiddenPDF').children[0].click()
}

function downloadGuideItinerary()
{
	document.getElementById('guideHiddenPDF').children[0].click()
}


</script>
</jsp:attribute>
<jsp:body>
	<div class="content">
		<div class="container-fluid">
			<div class="row">
				<div class="col-xs-3">
					<img src="..\lib\img\The_Spa_Club_Med_Bali.jpg" class="display-center img-responsive">
				</div>
				<div class="col-xs-9">
					<div class="row">
						<div class="col-xs-12">
							<span class="main-header"><strong>Singapore City</strong></span>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12">
							<hr class="main">
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12">
							<div class="row">
								<div class="col-xs-6">
								Travel Period: 28th April to 30th April 2014
								</div>
								<div class="col-xs-6">
								Number of Travellers: 6
								</div>
							</div>
							<div class="row">
								<div class="col-xs-6">
								Budget: $1000
								</div>
								<div class="col-xs-6">
								Proposals Received: 0
								</div>
							</div>
							<div class="row">
								<div class="col-xs-6">
								Preferred Guide: <a href="/tourguidefeedback">Edward</a>
								</div>
								<div class="col-xs-6">
								Created Date: 13 Dec 2013
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row" style="padding-top:50px">
				<div class="col-xs-3">
					<div class="row">
						<div class="col-xs-12">
							<P class="display-center">
							<strong><em>Traveller</em></strong>
							</P>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12">
						<a href="traveler_profile.jsp">
  						<img src="..\lib\img\CCFGuest.png" class="display-center img-responsive img-circle" style="width:140px; height:auto;">
  						</a>
						</div>
					</div>
					<div class="row" style="padding-top:10px;">
						<div class="col-xs-12">
						<a href="traveler_profile.jsp"><button type="button" class="btn btn-default display-center">Edwardo</button></a>
						</div>
					</div>
				</div>
				<div class="col-xs-9">
					<div class="bubble">
						<div class="row">
							<div class="col-xs-7">
								<span class="title-sizing">This is my plan for
								<select class="form-control headerDDLStyle" id="touristDay" onchange="dayChangeTourist()">
									<option>Select Day</option>
									<option>Day 1</option>
									<option>Day 2</option>
									<option>Day 3</option>
								</select>
								:</span>
							</div>
							<div class="col-xs-5">
								<div class="bubble-buttons">
									<div class="btn-group btn-group-xs">
										<button type="button" class="btn btn-info" onclick="loadTravellerComment()">View Comments</button>
										<button type="button" class="btn btn-default" onclick="downloadTravellerItinerary()">
										<span class="glyphicon glyphicon-save"></span> Download Itinerary
										</button>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<hr class="secondary">
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-6">
										<p id="test1">No Day Selected</p>
									</div>
									<div class="col-xs-6">
										<p id="test2"></p>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-6">
										<p id="test3"></p>
									</div>
									<div class="col-xs-6">
										<p id="test4"></p>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-6">
										<p id="test5"></p>
									</div>
									<div class="col-xs-6">
										<p id="test6"></p>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-6">
										<p id="test7"></p>
									</div>
									<div class="col-xs-6">
										<p id="test8"></p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-12">
					<hr>
				</div>
			</div>
			<div class="row">
				<div class="col-xs-3">
					<div class="row">
						<div class="col-xs-12">
							<P class="displaycenter">
							<strong><em>Guide</em></strong>
							</P>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12" style="padding-bottom:10px;">
							<select class="form-control headerDDLStyle display-center" id="guideNameList" onchange="guideNameChange()">
							  <option value="" disabled selected style="display:none;">Aslam</option>
							  <option>Aslam</option>
							  <option>Maualaf</option>
							  <option>Muhammad</option>
							</select>
						</div>
					</div>
					<div class="row">
						<div class="col-xs-12">
						<a href="traveler_profile.jsp">
  						<img src="..\lib\img\CCFGuest.png" class="display-center img-responsive img-circle" style="width:140px; height:auto;">
  						</a>
						</div>
					</div>
					<div class="row" style="padding-top:10px;">
						<div class="col-xs-12">
						<a href="traveler_profile.jsp"><button type="button" class="btn btn-default display-center"><span id="guideName">Aslam</span></button></a>
						</div>
					</div>
					<div class="row" style="padding-top:10px">
						<div class="col-xs-12">
							<button type="button" class="btn btn-success display-center" onclick="confirmGo()">Go With This Guide!</button>
						</div>
					</div>
				</div>
				<div class="col-xs-9">
					<div class="bubble-guide">
						<div class="row">
							<div class="col-xs-7">
								<span class="title-sizing">How about this plan on
								<select class="form-control headerDDLStyle" id="guideDay" onchange="dayChangeGuide()">
									<option selected>Select Day</option>
									<option>Day 1</option>
									<option>Day 2</option>
									<option>Day 3</option>
								</select>
								:</span>
							</div>
							<div class="col-xs-5">
								<div class="bubble-buttons">
									<div class="btn-group btn-group-xs">
										<button type="button" class="btn btn-info" onclick="loadGuideComment()">View Comments</button>
										<button type="button" class="btn btn-default" onclick="downloadGuideItinerary()">
										<span class="glyphicon glyphicon-save"></span> Download Itinerary
										</button>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<hr class="secondary">
							</div>
						</div>
						<div class="row">
							<div class="col-xs-12">
								<div class="row">
									<div class="col-xs-6">
										<p id="test9">No Day Selected</p>
									</div>
									<div class="col-xs-6">
										<p id="test10"></p>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-6">
										<p id="test11"></p>
									</div>
									<div class="col-xs-6">
										<p id="test12"></p>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-6">
										<p id="test13"></p>
									</div>
									<div class="col-xs-6">
										<p id="test14"></p>
									</div>
								</div>
								<div class="row">
									<div class="col-xs-6">
										<p id="test15"></p>
									</div>
									<div class="col-xs-6">
										<p id="test16"></p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<div id="guideHiddenBttn" class="secretCommentBttn">
		<a href="#commentGuide">test</a>
	</div>
	<div id="travellerHiddenBttn" class="secretCommentBttn">
		<a href="#commentTraveller">test</a>
	</div>
	<div id="guideHiddenPDF" class="secretCommentBttn">
		<a href="https://dl.dropboxusercontent.com/s/xw1dssysnyoelgb/Guide%20Itinerary.pdf?dl=1&token_hash=AAFUrWavhX_fOUUUsbUhIWJiT8vE8NSyeh_IEcTR4GN2xA">testing</a>
	</div>
	<div id="travellerHiddenPDF" class="secretCommentBttn">
		<a href="https://dl.dropboxusercontent.com/s/xokolaloxa7r9cg/Traveller%20Itinerary.pdf?dl=1&token_hash=AAF5OHHco6VVxiQAUecRK4yJ0NxnRQig1ErKFsR69njqww">testing</a>
	</div>
	
	<div id="commentTraveller" class="modalDialog">
		<div>
			<a href="#close" title="Close" class="close">X</a>
			<h2>Comment</h2>
			I want to go to those places that are famous and only known by Singaporeans.<br>
			As for guide's fees, I am willing to pay $300 for the 3 day's trip. Negotiable.
		</div>
	</div>
	
	<div id="commentGuide" class="modalDialog">
		<div>
			<a href="#close" title="Close" class="close">X</a>
			<h2>Comment</h2>
			The Sentosa item on day 3 can be brought forward to day 1 due to close proximity.<br>
			As for the fees, $300 is good for me!
		</div>
	</div>
	
</jsp:body>
</t:master>