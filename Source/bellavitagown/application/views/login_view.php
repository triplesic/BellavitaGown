	<section id="form"><!--form-->
		<div class="container">
			<div class="row">
				<div class="col-sm-4 col-sm-offset-1">
					<div class="login-form"><!--login form-->
						<h2><?php echo lang('login_to_your_account')?></h2>
						
						 <?php echo validation_errors(); ?>
   						 <?php echo form_open('login'); ?>
							<input type="text" placeholder="<?php echo lang('email')?>" id="username" name="username"/>
							<input type="password" placeholder="<?php echo lang('password')?>" id="passowrd" name="password"/>
							<span>
								<input type="checkbox" class="checkbox"> 
								<?php echo lang('keep_me_signed_in')?>
							</span>
							<button type="submit" class="btn btn-default"><?php echo lang('login')?></button>
						</form>
						
					</div><!--/login form-->
				</div>
				<div class="col-sm-1">
					<h2 class="or"><?php echo lang('or')?></h2>
				</div>
				<div class="col-sm-4">
					<div class="signup-form"><!--sign up form-->
						<h2><?php echo lang('new_user_signup')?></h2>
						<form action="#">
							<input type="text" placeholder="<?php echo lang('name')?>"/>
							<input type="email" placeholder="<?php echo lang('email')?>"/>
							<input type="password" placeholder="<?php echo lang('password')?>"/>
							<textarea name="message" id="message" rows="8" placeholder=" <?php echo lang('contact_info')?>"></textarea>
							<button type="submit" class="btn btn-default"><?php echo lang('signup')?></button>
						</form>
					</div><!--/sign up form-->
				</div>
			</div>
		</div>
	</section><!--/form-->
