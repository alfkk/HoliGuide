<html>
	<head>
		<title>HoliGuide Web Experiment</title>
		
		<!-- CSS -->
		<link href="/lib/ext/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  	<link href="/lib/ext/bootstrap/css/bootstrap-theme.min.css" rel="stylesheet">
	</head>
	<body>
		<div id="content">
			<div class="col-md-12">
				<div id="consent-form">
					<div id="consent">
						<h2>Consent Form</h2>
							<p>
								Greetings! 
							</p>
							<p>
								We are Team Chumokbab conducting a web experiment to test two different user interfaces for our web application, HoliGuide. With your inputs and help, we would be able to make the HoliGuide experience better, easier, and more user friendly for travelers and tour guides. 
								For this experiment, you will be given a set of tasks to determine how easily understandable the user interface of HoiGuide is. Please read through these tasks carefully and thoroughly before beginning the experiment. 
						 	</p>
							<p>
								There are no known risks associated with this study. There are no expected benefits from this experiment.
							</p>
							<p>
								If you have read this form and have decided to participate in this project, please understand your <b>participation is voluntary</b> and you have the <b>right to withdraw your consent or discontinue participation at any time without penalty or loss of benefits to which you are otherwise entitled.  The alternative is not to participate.</b>  You have the right to refuse to answer any questions. With your additional permission, your photographs will be taken during the study.
						 	</p>
							<p>
								All information obtained from this experiment shall be kept private and confidential. All results and analysis of this study shall be published with no reference to any particular source, so as to ensure that your results will not be identifiable to you. 
						 	</p>
							<p>
								If you have any questions, concerns or complaints about this research, its procedures, risks and benefits, contact Paige Lim at 81013647 or <a href="mailto:paige.lim.2011@sis.smu.edu.sg?subject=Holiguide Web Experiment Enquiry">paige.lim.2011@sis.smu.edu.sg</a>. If you have any questions pertaining to your rights as a participant, you may contact the Institutional Review Board Secretariat at 6828-1925 or <a href="mailto:irb@smu.edu.sg?subject=Survey Participation Enquiry">irb@smu.edu.sg</a>.
					 		</p>
						</div>
					<div id="agree">
						<input type="checkbox" id="agree-check" /> I agree to the following form
					</div>
					<div id="submit">
						<button onClick="nextForm()">Next</button>
					</div>
				</div>
				
				<div id="task-form">
					<div id="task">
						<h2>Web Experiment Task</h2>
						<p>
							For this experiment, you will be tasked to create a travel itinerary by following the tasks below:
						</p>
						<ol>
							<li>Create an itinerary that takes place from 11th April 2014 to 13th April 2014.</li>
							<li>The budget is $1000.</li>
							<li>You are going to travel alone.</li>
							<li>These are the places that you would like to go to:
								<ul>
									<li>Universal Studio on day 1.</li>
									<li>Marina Bay Sands Hotel on day 2. You want to reach here early in the morning so you that you will have more time to play. You wish to reach at 10:00am.</li>
									<li>You have also heard of a small but legendary shop selling wanton noodle along Geylang. You want to go there on day 3 for lunch at 12pm.</li>
									<li>Din Tai Fung on day 3. You want to go here at 8:30pm for dinner.</li>
								</ul>
							</li>
							<li>You are also an adventurous and outgoing person who is willing to try new things. Add this information into your itinerary if you can.</li>
						</ol>
						<p>
							If you have understood the tasks, you may now proceed with the experiment by clicking the begin button below. Clicking begin will direct you to a new window so that you will be able to refer to these instructions again as you take part in the experiment, so please do be careful not to close this window. 
						</p>
					</div>
					<div id="submit">
						<button onClick="openWindow()">Begin</button>
					</div>
				</div>
			</div>
		</div>
		
		<!-- Javascript -->
		<script src="/lib/ext/jquery-2.0.3.js"></script>
		<script src="/lib/ext/bootstrap/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			$('#task-form').hide();
			
			function nextForm()
			{
				if($('#agree-check').is(':checked'))
				{
					$('#consent-form').hide();
					$('#task-form').show();
				}
				else
				{
					alert("Please agree to the form before continuing to next form.");
				}
			}
			
			function openWindow()
			{
				window.open("http://1-dot-holiguidewebtest.appspot.com/createitinerary","_blank");
			}
		</script>
	</body>
</html>