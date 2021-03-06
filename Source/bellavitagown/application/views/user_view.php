<script src="<?php echo base_url();?>js/editUser.js"></script>
<div class="container">
		<div class="row">
			<div class="col-sm-8">
				<div class="contact-form">
					<h2 class="title text-center">ข้อมูลผู้ใช้งาน</h2>
					
					<form id="user-edit"  method="post" action="#">
						<div class="row">
							<div class="form-group col-md-6">
								<div  id="div-user-firstname"></div>
								
									<input type="text" class="form-control" name="firstname" id="firstname" placeholder="Firstname" aria-describedby="basic-addon1" value="<?php echo $userData['firstName']?>">
								
							</div>
							<div class="form-group col-md-6">
								<div id="div-user-lastname"></div>
								
									<input type="text" class="form-control" name="lastname" id="lastname" placeholder="Lastname" aria-describedby="basic-addon1" value="<?php echo $userData['lastName']?>">
								
							</div>
						</div>
						<div class="row">
							<div class="form-group col-md-6">
								<div id="div-user-tel"></div>
								
									<input type="text" class="form-control" name="tel" id="tel" placeholder="เบอร์โทรศัพท์" aria-describedby="basic-addon1" value="<?php echo $userData['tel']?>">
								
							</div>
							<div class="form-group col-md-6">
								<div id="div-user-email"></div>
								
									<input type="text" class="form-control" name="email" id="email" placeholder="อีเมลล์" aria-describedby="basic-addon1" value="<?php echo $userData['email']?>" disabled="disabled">
								
							</div>
						</div>
						<div class="row">
						<div class="form-group col-md-12">
							
								<textarea class="form-control custom-control" id="address" placeholder="ที่อยู่" rows="3" style="resize: none"><?php echo $userData['address']?></textarea>
							
						</div>
						</div>

						<div class="row">
						<div class="form-group col-md-12">
							<input type="submit" name="submit" class="btn btn-primary pull-right" value="บันทึกข้อมูลผู้ใช้งาน">
						</div>
						</div>
					</form>
				</div>
			</div>
			<div class="col-sm-4">
				<div class="contact-info">
					<h2 class="title text-center">เปลี่ยนรหัสผ่าน</h2>
					<form id="password-edit"  method="post" action="#">
					<div class="row">
					<div class="form-group col-md-12">
						<div id="div-edit-oldPass"></div>
						
						<input type="password" name = "oldPass" id = "oldPass" class="form-control" required="required" placeholder="รหัสผ่านเดิม">
						
					</div>
					</div>
					<div class="row">
					<div class="form-group col-md-12">
					<div id="div-edit-newPass"></div>
					
						<input type="password" name = "newPass" id = "newPass" class="form-control" required="required" placeholder="รหัสผ่านใหม่">
					
					</div>
					</div>
					<div class="row">
					<div class="form-group col-md-12">
					<div id="div-edit-newConfirmPass"></div>

						<input type="password" name = "newConfirmPass" id = "newConfirmPass" class="form-control" required="required" placeholder="ยืนยันรหัสผ่านใหม่">
					
					</div>
					</div>
					<div class="row">
					<div class="form-group col-md-12">
					
						<input type="submit" name="submit" class="btn btn-primary pull-right" value="เปลี่ยนรหัสผ่าน">
					</div>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>

