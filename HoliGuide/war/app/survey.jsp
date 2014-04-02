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
							By agreeing to this form...
						</p>
						<p>
							Furthermore...
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
						<div>
							Please perform the following task:
							<ol>
								<li>...
								<li>...
								<li>...
							</ol>
						</div>
					</div>
					<div id="submit">
						<button onClick="openWindow()">Go to application</button>
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
				window.open("http://localhost:8888/createitinerary2","_blank");
			}
		</script>
	</body>
</html>