<script src="<?php echo base_url();?>js/inquiry.js"></script>
<html>
    <head>
        <meta charset="utf-8">
        <title>jQuery Validation Plugin Examples</title>
    </head>

    <body>
        <!-- Custom error messages and placement -->
			<div class="step-one">
				<h2 class="heading">ยินดีต้องรับคุณ <?php echo $firstName; ?> <?php echo $lastName; ?> ส่งข้อความเพื่อติดต่อเรา หรือโทรหาเรา 089-XXX-XXXX</h2>
			</div>
       <form class="cmxform form-horizontal col-sm-12" id="inquiry-form" method="post" action="#">
        		<div class="col-sm-10">
        				<div class="replay-box">
        				
							<div class="col-sm-4">
									
									<div class="blank-arrow" id="div-inq-CompName">
										<label>Company Name</label>
									</div>	
									<input type="text" placeholder="Compnany name..." name= "inq-compName" id = "inq-compName">
															
									<div class="blank-arrow" id="div-inq-name">
										<label>Name</label>
									</div>											
									<input type="text" placeholder="your name..." name= "inq-name" id = "inq-name">
									<div class="blank-arrow" id="div-inq-phone">
										<label>Phone</label>
									</div>
									<input type="text" placeholder="your phone..." name= "inq-phone" id = "inq-phone">															
									<div class="blank-arrow" id="div-inq-email">
										<label>Email Address</label>
									</div>
									<input type="text" placeholder="your email address..." name= "inq-email" id = "inq-email">
									</div>
							<div class="col-sm-8">
								
									<div class="blank-arrow">
										<label>Your Message</label>
									</div>
									
									<textarea name="message" rows="11" name= "inq-message" id = "inq-message" placeholder="write you message..."></textarea>
									<button  class="btn btn-primary pull-right">Submit</button>
							
							</div>
							<div id="div-inq-warning"><span>* ข้อมูลที่จำเป็นต้องกรอก</span></div>
						</div>
						
        		</div>      
        </form>
    </body>
</html>