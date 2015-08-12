<script
	
	type="text/javascript"
	src="<?php echo base_url();?>js/order.js">

</script>

<section id="cart_items">
		<div class="container">
	 <form class="cmxform form-horizontal col-sm-12" id="inquiry-form" method="post" action="#">		
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Item</td>
							<td class="description" align="left"></td>
							<td class="price" align="center">Color</td>
							<td class="quantity" align="center">Size</td>
							<td align="right"></td>
						</tr>
					</thead>
					<tbody>
				

			 <?php foreach ($cartConten as $cart): ?>

						<tr>
							<td  class="image" >
								<a href=""><img src=<?php echo base_url();?>images/<?php echo $cart['image']?> alt="" style="width: 150px;"></a>
							</td>
							<td class="cart_description">
								<h4><?php echo $cart['name']?></h4>
								<p>Web ID: <?php echo $cart['id']?></p>
							<!--  	<p>Row ID: <?php echo $cart['rowid']?></p>-->
							</td>
							<td class="cart_price">
								<p><?php echo $cart['color']?></p>
							</td>
							<td class="cart_price" align="center">
								<p>
								

								<select name="size" id="size"  >
   								<?php foreach($cart['sizeList'] as $size){ ?>
   								
   								 <?php if($cart['sizeID'] == $size->SIZE_ID ){ ?>
   								
        							<option value="<?php echo $size->SIZE_ID?>" selected><?php echo $size->SIZE_NM?></option>
    							<?php } else{ ?>
    								<option value="<?php echo $size->SIZE_ID?>"><?php echo $size->SIZE_NM?></option>
    							

    							<?php }} ?>
								</select>
								
								
								</p>
							</td>

							<td class="cart_delete" align="right" >
								<a onclick="deleteCart('<?php echo $cart['rowid']?>')" href="javascript:void(0);"><i class="fa fa-times"></i></a>
							</td>				
						</tr>

			<?php endforeach ?>	
			<tr>
							
							<td colspan="5"align="right"  >
							
										<div class="contact"><span>* </span>หากคุณสนใจสินค้าโปรดส่งข้อมูลของคุณ<br/><button class="btn btn-default get" onclick="inquiryPopup();">Contact Now</button></div>

							</td>
				</tr>
					</tbody>
				</table>				
			</div >
			
			</form>
			</div>
			
	</section> <!--/#cart_items-->
