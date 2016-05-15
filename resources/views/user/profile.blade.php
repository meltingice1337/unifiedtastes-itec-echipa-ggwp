
<!DOCTYPE html>
<html>
<head>
	<title>UnifiedTastes | Profile</title>
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
	<link rel="stylesheet" href="{{asset('css/main.css')}}">
	<link rel="stylesheet" href="{{asset('css/simple-sidebar.css')}}">
	<link rel="stylesheet" href="{{asset('css/font-awesome.min.css')}}">
	<link rel="stylesheet" href="{{asset('css/hover-min.css')}}">
	<link rel="icon" type="image/png" href="favicon2.png">
</head>
<body>
	<div class="col-md-12 banner">
		<div class="logo col-md-offset-5 col-md-2">
			<img id="logo"class="img-responsive fixlogoindex animated  bounce"src="{{asset('images/logonoheader.png')}}"/>
		</div>
	</div> 
	<div class="col-md-12">
		@include('partials.menu')

		<div class="col-md-10">
			<div class="col-md-12" style="margin-top:15px">
				<div class="panel panel-default">
					<div class="panel-heading"><h2 style="text-align:center"> Profile Information</h2></div>
					<div class="panel-body">
						<div class="col-md-6">
							<img src="images/profilepicture.jpg"style="border-radius: 50%; height:175px; margin:0 auto "class="img-responsive" />
						</div>
						<div class="col-md-6">
							<p>Name: {{$user->name}}</p>
							<p>Member since: {{$user->created_at}}</p>
							<p>Email: {{$user->email}}</p>
							<p style="word-break:break-all;" id="interest-p">Interests: {{$user->interests}}</p>
							<input id="interest-input" type="text" class="form-control" id="firm" style="width:180px ;display:inline">
							<btn id="interest-btn" href="" class="btn btn-default enterbutton"	style=" display:inline;width:180px; margin-left:-1px" >Add interest</btn>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="panel panel-default">
					<div class="panel-heading">Change Password</div>
					<div class="panel-body"><div class="form-group">
						<label for="pwd">Old Password:</label>
						<input type="password" class="form-control" id="pwd">
					</div>
					<div class="form-group">
						<label for="pwd">New Password</label>
						<input type="password" class="form-control" id="pwd">
					</div>
					<div style="text-align:center">
						<a href="" class="btn btn-default enterbutton">Proceed</a>
					</div>
					<div class="alert alert-danger" style="margin-top:10px" role="alert"><strong>Incorrect! </strong>Make sure you completed the task corectly. </div>
				</div>
			</div>
		</div>
		<div class="col-md-6">
			<div class="panel panel-default">
				<div class="panel-heading">Change Email</div>
				<div class="panel-body"><div class="form-group">
					<label for="email">New Email:</label>
					<input type="password" class="form-control" id="pwd">
				</div>
				<div class="form-group">
					<label for="pwd">Password confirmation:</label>
					<input type="password" class="form-control" id="pwd">
				</div>
				<div style="text-align:center">
					<a href="" class="btn btn-default enterbutton">Proceed</a>
				</div>
				<div class="alert alert-danger" style="margin-top:10px" role="alert"><strong>Incorrect! </strong>Make sure you completed the task corectly. </div>
			</div>
		</div>
	</div>


</div>
</div>
@include('partials.footer')
<script>
	$('#interest-btn').click(function(e){
		e.preventDefault();
		var interest = $('#interest-input').val();
		$.post( "{{route('api.interest.post')}}", { name: interest})
		.done(function( data ) {
			if(data == 'ok')
			{
				$('#interest-p').text($('#interest-p').text() + ', ' + interest);
				$('#interest-input').val("");
			}

		});
	});
</script>
</body>
</html>
