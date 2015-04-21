<?php $this->load->view('template/header');?>


	<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2>Login to your account</h2>
						
						 <?php echo validation_errors(); ?>
   						 <?php echo form_open('login'); ?>
							<input type="text" placeholder="Email Address" id="username" name="username"/>
							<input type="password" placeholder="Password" id="passowrd" name="password"/>
							<span>
								<input type="checkbox" class="checkbox"> 
								Keep me signed in
							</span>
							<button type="submit" class="btn btn-default">Login</button>
						</form>
						
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or">OR</h2>
				</div>
				<div class="col-sm-4">
					<div ><!--sign up form-->
						<h2>New User Signup!</h2>
						<form id="main-contact-form" class="contact-form row" name="contact-form" method="post">
				            
				            <div class="form-group col-md-12">
				                <input type="text" name="subject" class="form-control" required="required" placeholder="Email">
				            </div>
				     		<div class="form-group col-md-12">
				                <input type="text" name="subject" class="form-control" required="required" placeholder="Password">
				            </div>
				            <div class="form-group col-md-12">
				                <input type="text" name="subject" class="form-control" required="required" placeholder="Confirm Password">
				            </div>
				            <div class="form-group col-md-6">
				                <input type="text" name="firstName" class="form-control" required="required" placeholder="Firstname">
				            </div>
				            <div class="form-group col-md-6">
				                <input type="email" name="Lastname" class="form-control" required="required" placeholder="Lastname">
				            </div>
				            <div class="form-group col-md-12">
				                <textarea name="message" id="message" required="required" class="form-control" rows="8" placeholder="Address"></textarea>
				            </div>                        
				            <div class="form-group col-md-12">
				                <input type="submit" name="submit" class="btn btn-primary pull-right" value="Submit">
				            </div>
				        </form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
	
	

<?php $this->load->view('template/footer');?>