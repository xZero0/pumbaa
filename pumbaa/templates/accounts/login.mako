<%inherit file="/base/default.mako"/>
<%!
	from velruse import login_url
%>
<%block name="addition_header">
<style type="text/css">
	.form-signin {
	  max-width: 330px;
	  padding: 15px;
	  margin: 0 auto;
	}
	.form-signin .form-signin-heading,
	.form-signin .checkbox {
	  margin-bottom: 10px;
	}
	.form-signin .checkbox {
	  font-weight: normal;
	}
	.form-signin .form-control {
	  position: relative;
	  font-size: 16px;
	  height: auto;
	  padding: 10px;
	  -webkit-box-sizing: border-box;
	     -moz-box-sizing: border-box;
	          box-sizing: border-box;
	}
	.form-signin .form-control:focus {
	  z-index: 2;
	}
	.form-signin input[type="text"] {
	  margin-bottom: -1px;
	  border-bottom-left-radius: 0;
	  border-bottom-right-radius: 0;
	}
	.form-signin input[type="password"] {
	  margin-bottom: 10px;
	  border-top-left-radius: 0;
	  border-top-right-radius: 0;
	}
</style>
</%block>

<h1>Login</h1>

<div class="row">
	<div class="col-xs-8 col-sm-8 col-md-8 col-lg-8">
		<form class="form-signin" action="${request.route_path('login')}" method="post">
		  <h2 class="form-signin-heading">Please sign in</h2>
		  % if len(message) > 0 or form.username.errors or form.password.errors:
		  <div class="alert alert-danger">
		  	% if len(message) > 0:
		  		${message}<br/>
		  	% endif
		  	% if form.username.errors:
		  	 ${form.username.label.text} : ${"".join(form.username.errors)} <br/>
		  	% endif
		  	% if form.password.errors:
		  	 ${form.password.label.text} : ${"".join(form.password.errors)} <br/>
		  	% endif
		  </div>
		  % endif
		  
		  ${form.username(class_='form-control', placeholder=form.username.label.text, autofocus='autofocus')}
		  ${form.password(class_='form-control', placeholder=form.password.label.text)}
		  <%doc>
		  <label class="checkbox">
		    <input type="checkbox" value="remember-me"> Remember me
		  </label>
		  </%doc>
		  ${form.came_from}
		  <button class="btn btn-lg btn-primary btn-block" type="submit">Log in</button>
		  <p><a href="${request.route_path('register')}">register</a></p>
		</form>
		
	</div>
	<div class="col-xs-4 col-sm-4 col-md-4 col-lg-4">
		<form id="facebook" action="${login_url(request, 'facebook')}" method="post">
		    <button type="submit">Login with Facebook</button>
		</form>
	</div>
</div>