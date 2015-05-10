<script
	type="text/javascript"
	src="<?php echo base_url();?>js/order.js"></script>

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
							<td class="description">Name</td>
							<td class="price">Price</td>
							<td class="quantity">Quantity</td>
							<td class="total">Total</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
				

			 <?php foreach ($cartConten as $cart): ?>

						<tr>
							<td class="cart_product" >
								<a href=""><img src=<?php echo base_url();?>images/<?php echo $cart['image']?> alt="" style="width: 25%; height: 25%;"></a>
							</td>
							<td class="cart_description">
								<h4><a href=""><?php echo $cart['name']?></a></h4>
								<p>Web ID: <?php echo $cart['id']?></p>
							</td>
							<td class="cart_price">
								<p><?php echo $cart['price']?>.</p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<a class="cart_quantity_up" href=""> + </a>
									<input class="cart_quantity_input" type="text" name="quantity" value=<?php echo $cart['qty']?> autocomplete="off" size="2">
									<a class="cart_quantity_down" href=""> - </a>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price"><?php echo $cart['total']?>.</p>
							</td>
							<td class="cart_delete">
								<a class="cart_quantity_delete" href=""><i class="fa fa-times"></i></a>
							</td>
						</tr>

			<?php endforeach ?>	
					</tbody>
				</table>
			</div>
		</div>
	</section> <!--/#cart_items-->
