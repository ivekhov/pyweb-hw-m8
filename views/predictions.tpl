<html>
<head>
	<meta charset='utf-8'>
	<title>Гороскоп на сегодня</title>

	    <!-- bootstrap 4 below: -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

    <!-- jquery below -->
    <script
      src="http://code.jquery.com/jquery-3.3.1.min.js"
      integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
      crossorigin="anonymous">
    </script> 

</head>
	<body>
		<div class="container">
		<h1 id="main_header">Ваши предсказания на  {{date }}</h1>
			<div class="row">
				<div class="col-4" id="p-1"></div>
				<div class="col-4" id="p-2"></div>
				<div class="col-4" id="p-3"></div>
				<div class="col-4" id="p-4"></div>
				<div class="col-4" id="p-5"></div>
				<div class="col-4" id="p-6"></div>
			</div>

		</div>
	</body>

<script type="text/javascript">

	prophecy_url = [
		"http://localhost:8090/api/forecast" , 
		"http://sf-pyw.mosyag.in/m04/api/forecasts"
	];

	$("#main_header").click(function() {
		$.getJSON(prophecy_url[1], function(data) {
			prophecies = data["prophecies"];
			set_prophecies(prophecies);
		});

});

function set_prophecies(paragraphs) {

	$.each(paragraphs, function(i, d) {
		p = $("#p-" + i);
		p.html("<p>" + d + "</p>");
	});

};



</script>

</html>
