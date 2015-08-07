<script src="<?php echo base_url();?>js/login.js"></script>
<div class="header-middle">
	<div class="container">
		<div class="row">
			<div class="col-sm-5">
				<div class="signup-form">
					<!--login form-->
					<h2 class="title text-center"><?php echo lang('login_to_your_account')?></h2>
					<input type="hidden" id="popup" name="popup" value="<?php echo $popup;?>" />
					
						<form id="login-form" method="post" action="#">
							<div class="col-sm-12">
								<div class="blank-arrow" id="div-login-name"></div>
								<input type="text" placeholder="<?php echo lang('email')?>"
									id="username" name="username" />
							</div>
							<div class="col-sm-12">
								<div id="div-login-pass"></div>
								<input type="password" placeholder="<?php echo lang('password')?>" id="password" name="password" />
							</div>
							
							<div class="col-sm-6" align="left">
							<button type="button" class="btn btn-default show_hide"><?php echo lang('forgot_password')?></button>
							
							</div >	
							<div class="col-sm-6" align="right">
							<button type="submit" class="btn btn-default"><?php echo lang('login')?></button>
							</div>
						</form>
						
						<div class="slidingDiv">
						<form id="reset-form" method="post" action="#">
							<div class="col-sm-12">
								<br />
								<div>กรุณากรอกอีเมลล์ที่ถูกต้อง
									เพื่อที่จะส่งรหัสผ่านใหม่ไปให้กับคุณ</div>
								<div id="div-reset-mail"></div>
								<input type="email" placeholder="<?php echo lang('email')?>"
									id="resetMail" name="resetMail" />
								<button type="submit" class="btn btn-default">รีเซ็ตรหัสผ่าน</button>
							</div>
						</form>
						</div>
					</div>
				</div>

				<div class="col-sm-1">
					<h2 class="or">OR</h2>
				</div>

			<div class="col-sm-6">
				<div class="signup-form">
					<h2 class="title text-center"><?php echo lang('new_user_signup')?></h2>
						<form id="register-form" method="post" action="#">
							<div class="col-sm-6">
								<div id="div-register-firstName"></div>
								<input type="text" id="firstName" name="firstName" placeholder="ชื่อ" />
							</div>
							<div class="col-sm-6">
								<div id="div-register-lastName"></div>
								<input type="text" id="lastName" name="lastName" placeholder="นามสกุล" />
							</div>
							<div class="col-sm-12">
								<div id="div-register-email"></div>
								<input type="email" id="email" name="email"
									placeholder="<?php echo lang('email')?>" />
								<div id="div-register-password"></div>
								<input type="password" id="regPassword" name="regPassword"
									placeholder="รหัสผ่าน" />
								<div id="div-register-confirmPassword"></div>
								<input type="password" id="confirmPassword"
									name="confirmPassword" placeholder="ยืนยันรหัสผ่าน" />
								<div id="div-register-address"></div>
								<textarea name="address" id="address" rows="5"
									placeholder=" <?php echo lang('contact_info')?>"></textarea>
								
							</div >
							<div class="col-sm-12" align="right" >
							<button type="submit" class="btn btn-default"><?php echo lang('signup')?></button>
							</div>
						</form>
				</div>
			</div>
		</div>
		</div>
		</div>