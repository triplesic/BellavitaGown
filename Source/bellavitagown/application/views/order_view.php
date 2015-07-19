<script
	
	type="text/javascript"
	src="<?php echo base_url();?>js/order.js">

</script>

<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="#">Home</a></li>
				  <li class="active">Shopping Cart</li>
				</ol>
			</div>
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>

						<tr class="cart_menu">
							<td class="image">Item</td>
							<td class="description"></td>
							<td class="price" align="center">Color</td>
							<td class="price" align="center">Size</td>
							<td class="price" align="center">Send an Inquiry to this supplier</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
				

			 <?php foreach ($cartConten as $cart): ?>

						<tr>
							<td  class="image" >
								<a href=""><img src=<?php echo base_url();?>images/<?php echo $cart['image']?> alt="" style="width: 150px;"></a>
							</td>
							<td class="cart_description">
								<h4><a href=""><?php echo $cart['name']?></a></h4>
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
							<td class="cart_price" align="center">
							
							<button class="btn btn-default get" onclick="inquiryPopup();">Contact Now</button>
							
							</td>
							<td class="cart_delete">
								<a class="cart_quantity_delete" onclick="deleteCart('<?php echo $cart['rowid']?>')" href="javascript:void(0);"><i class="fa fa-times"></i></a>
							</td>
							
						</tr>

			<?php endforeach ?>	
			
						
					</tbody>
				</table>
				
				
			</div>
		</div>
	</section> <!--/#cart_items-->
