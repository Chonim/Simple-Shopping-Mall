<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<title>jQuery PrMenu Plugin Demo</title>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="jquery.prmenu.js"></script>
<link type="text/css" rel="stylesheet" href="css/prmenu.css" />
<script>
	$(document).ready(function() {
		$('#top-menu').prmenu();
	});
</script>
<style>
body {
	margin: 0;
	padding: 0;
}

.content {
	width: 90%;
	max-width: 800px;
	margin: 50px auto;
}
</style>

</head>
<body>

	<div id="container">

		<ul id="top-menu">
			<li><a href="#">Home</a></li>
			<li><a href="#">Services</a>
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">Business</a></li>
					<li><a href="#">Professional</a>
						<ul>
							<li><a href="#">Doctor</a></li>
							<li><a href="#">Lawyer</a></li>
							<li><a href="#">Accountant</a>
						</ul></li>
				</ul></li>
			<li><a href="#">Shop</a></li>
			<li><a href="#">Support</a></li>
			<li><a href="#">FAQ</a></li>
			<li><a href="#">About</a></li>
			<li><a href="#">Contact</a>
				<ul>
					<li><a href="#">Home</a></li>
					<li><a href="#">Business</a></li>
					<li><a href="#">Professional</a>
						<ul>
							<li><a href="#">Doctor</a></li>
							<li><a href="#">Lawyer</a></li>
							<li><a href="#">Accountant</a>
						</ul></li>
				</ul></li>
		</ul>


		<div class="content">

			<h1>jQuery PrMenu Plugin Demo</h1>
			<div class="jquery-script-ads">
				<script type="text/javascript">
				<!--
					google_ad_client = "ca-pub-2783044520727903";
					/* jQuery_demo */
					google_ad_slot = "2780937993";
					google_ad_width = 728;
					google_ad_height = 90;
				//-->
				</script>
				<script type="text/javascript"
					src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
					
				</script>
			</div>
			<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam
				rutrum aliquam est eget cursus. Morbi imperdiet tempus risus.
				Integer interdum facilisis ipsum, quis semper eros vehicula finibus.
				Interdum et malesuada fames ac ante ipsum primis in faucibus. Etiam
				aliquet, sapien non scelerisque faucibus, ligula nisl congue tellus,
				eu molestie nulla orci at orci. Nulla ut aliquam tellus, quis
				molestie nisi. Pellentesque ex tellus, elementum ut gravida ut,
				auctor in erat. Etiam id feugiat ligula. Integer gravida convallis
				nunc, eget accumsan urna vestibulum nec. Etiam ullamcorper, lorem at
				rutrum pellentesque, elit mauris facilisis ligula, at mollis tortor
				nisi iaculis lectus. Aliquam elementum erat ut erat interdum tempus.
				Maecenas accumsan ultrices massa ut bibendum. Praesent lobortis nisl
				sit amet est efficitur feugiat. Donec egestas risus id leo
				dignissim, in porttitor magna dignissim.</p>
			<p>Quisque mollis ligula in bibendum congue. Nullam ut commodo
				justo, non faucibus mauris. Integer tortor felis, sollicitudin quis
				rhoncus et, bibendum eget nunc. Proin lectus ex, semper et orci nec,
				sollicitudin ultricies velit. Proin sit amet felis id nibh placerat
				consequat. Praesent eget fringilla eros. Aliquam consequat lacus vel
				mi scelerisque rhoncus. Aliquam elementum a nisi et consectetur.</p>
			<p>Aliquam pretium non lectus non rutrum. Cras in convallis
				libero, nec malesuada sapien. Nullam vel massa mi. Suspendisse id
				sem ut dui fringilla mattis. Pellentesque eget molestie nibh. Nulla
				id tincidunt dui, nec blandit dui. Quisque lacinia enim est, nec
				faucibus mauris laoreet ut. Quisque dictum vel leo sit amet congue.
				Vestibulum et elit consequat, rhoncus enim quis, fermentum sapien.
				Nulla facilisi. Maecenas sit amet ultricies lacus.</p>
			<p>Maecenas et mi purus. Sed vel purus neque. Morbi dui magna,
				mollis ut bibendum at, viverra id elit. Morbi in condimentum dolor,
				nec rhoncus enim. Fusce lacus massa, consectetur ac ante eu, lacinia
				ultrices nisi. Praesent nulla metus, pellentesque nec ligula vel,
				tempus lacinia dolor. Aenean tortor erat, pellentesque non eleifend
				id, molestie quis elit. Donec vel lobortis enim, vel semper est.
				Pellentesque et hendrerit risus, et semper arcu. Pellentesque
				pretium a velit non tempor. Nunc fermentum nibh ipsum, in blandit
				odio viverra quis. Ut vel neque eget nulla semper egestas vitae quis
				mi.</p>
			<p>Donec massa mi, porttitor vitae enim ac, suscipit sagittis
				nibh. Proin luctus sapien leo, semper ornare massa ornare vitae.
				Donec vel magna orci. Morbi molestie nibh et est varius, eget
				dignissim quam ultricies. Nulla ut mollis libero. Phasellus lacinia
				est id nulla tempus aliquet. Maecenas eu velit egestas, vestibulum
				mi a, gravida sapien.</p>

		</div>





	</div>
	<!-- /container -->

	<div id="footer"></div>
	<!-- /footer -->
	<script type="text/javascript">
		var _gaq = _gaq || [];
		_gaq.push([ '_setAccount', 'UA-36251023-1' ]);
		_gaq.push([ '_setDomainName', 'jqueryscript.net' ]);
		_gaq.push([ '_trackPageview' ]);

		(function() {
			var ga = document.createElement('script');
			ga.type = 'text/javascript';
			ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl'
					: 'http://www')
					+ '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(ga, s);
		})();
	</script>
</body>
</html>
