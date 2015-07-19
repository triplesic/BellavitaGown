	<script
	
	type="text/javascript"
	src="<?php echo base_url();?>js/order.js">

</script>
	<section>
		<div class="container">
			<div class="row">
			
				<div class="col-sm-3">
					<?php $this->load->view('template/left_category');?>
				</div>
			<!--  <img id="img_01" src="<?php echo base_url();?>images/small/image1.jpg" data-zoom-image="<?php echo base_url();?>images/large/image1.jpg"/> -->

				<div class="col-sm-9 padding-right">
					<div class="product-details"><!--product-details-->
						<div class="col-sm-5">
						<table>
							<tr>
								<td>
								<div>

<!-- 								<img id="img_01" src="images/small/image1.jpg" data-zoom-image="images/large/image1.jpg"/>  -->
									<img id="img_01" src="<?php echo base_url();?>images/small/<?php echo $productDetail[0]->IMAGE_NAME?>" data-zoom-image="<?php echo base_url();?>images/large/<?php echo $productDetail[0]->IMAGE_NAME?>"/>
								
  								<input type="hidden" id="productImage" name="productImage" value="<?php echo $productDetail[0]->IMAGE_NAME?>"/> 

								</div>
								</td>
								<td valign="top">
								<div >
								<div id="gal1"> 
									<?php foreach ($productDTLIMG as $image): ?>
<!-- 								<a href="#" data-image="images/small/image1.jpg" data-zoom-image="images/large/image1.jpg"><img id="img_01" src="images/thumb/image1.jpg" /> </a> -->
									<a href="#" data-image="<?php echo base_url();?>images/small/<?php echo $image->PRODUCT_DTL_IMG_NAME?>" data-zoom-image="<?php echo base_url();?>images/large/<?php echo $image->PRODUCT_DTL_IMG_NAME?>"> <img id="img_01" src="<?php echo base_url();?>images/thumb/<?php echo $image->PRODUCT_DTL_IMG_NAME?>"/> </a>
							
									<?php endforeach ?>	
								</div>
								</div>
								</td>
							</tr>
						
						</table>				
							<div id="similar-product" class="carousel slide" data-ride="carousel">
								
								  <!-- Wrapper for slides -->
								  
								    <div class="carousel-inner">
								    <h2 class="title text-center">สี</h2>	
							<?php 	    
							$amountProduct = count($productList);
							

							if($amountProduct%3==0)
							{
								$rows = $amountProduct/3;
								$sead = 0;
							}else
							{
								$rows = ($amountProduct/3)+1;
								$sead = $amountProduct%3;
							}
							
							for($i = 1 ; $i <= $amountProduct ;$i++)
								{	

											
									 if($i == 1)
								   {
								   	?>
								   
										<div class="item active">
										
							<?php }?>
							<?php 	

							if($i <= 3)
							{
								
									if($i>=0 && $i<=3)	
									{
							?>	
										<a href="<?php echo base_url();?>product/detail/json?pdID=<?php echo $productList[$i-1]->PRODUCT_DTL_ID?>&pID=<?php echo $productList[$i-1]->PRODUCT_ID?>"><img src="<?php echo base_url();?>images/<?php echo $productList[$i-1]->IMAGE_NAME?>" alt="" style="width: 25%; height: 25%;"></a>
							<?php }?>	
										
							<?php 			
										if( $i == 3 ||$i == $amountProduct )	
											{
							?>		 
										  </div>	
							<?php }}?>
							
							
									<?php 
									if($i > 3)
									{
									?>	
									<?php 
									if(($i-1)%3 == 0)
									{
									?>	
										<div class="item">
										
									<?php }?>	
									
									<?php 
									if($i > 3)
									{
									?>
										  <a href="<?php echo base_url();?>product/detail/json?pdID=<?php echo $productList[$i-1]->PRODUCT_DTL_ID?>&pID=<?php echo $productList[$i-1]->PRODUCT_ID?>&clrID=<?php echo $productList[$i-1]->COLOR_ID?>"><img src="<?php echo base_url();?>images/<?php echo $productList[$i-1]->IMAGE_NAME?>" alt="" style="width: 25%; height: 25%;"></a>

									<?php }?>
									
										<?php 
									if(($i > 3 && ($i-1) % 3 ==0)||$i == $amountProduct )
									{
									?>
									</div>
		<?php }?>
										
									<?php } ?>		
									<?php } ?>
									
						</div>			

								  <!-- Controls -->
								  <a class="left item-control" href="#similar-product" data-slide="prev">
									<i class="fa fa-angle-left"></i>
								  </a>
								  <a class="right item-control" href="#similar-product" data-slide="next">
									<i class="fa fa-angle-right"></i>
								  </a>
								  
								 
							</div>

						</div>
						<div class="col-sm-7">
							<div class="product-information"><!--/product-information-->
								<img src="<?php echo base_url();?>images/product-details/new.jpg" class="newarrival" alt="" />
								<h2><?php echo $productDetail[0]->PRODUCT_NM?>
								<input type="hidden" id="productName" name="productName" value="<?php echo $productDetail[0]->PRODUCT_NM?>"/>
								</h2>
								<p><?php echo lang('code')?> : <?php echo $productDetail[0]->PRODUCT_DTL_ID?>
								<input type="hidden" id="pddID" name="pddID" value="<?php echo $productDetail[0]->PRODUCT_DTL_ID?>"/>
								</p>
<!-- 								<img src="images/product-details/rating.png" alt="" /> -->
								<div>
					<!-- 			<span><?php echo $productDetail[0]->PRICE?>. บาท-->
									<input type="hidden" id="price" name="price" value="<?php echo $productDetail[0]->PRICE?>"/>
									</span>	
								</div>
								
								<p><b><?php echo lang('product')?></b> In Stock</p>
								<p><b><?php echo lang('condition')?>:</b> New</p>
								<p><b><?php echo lang('brand')?></b> Bella Vita Gown</p>
								<p><b><?php echo lang('detail')?> :</b> <?php echo $productDetail[0]->DETAIL?></p>
								<p><b><?php echo lang('color')?> :</b><?php echo $productDetail[0]->COLOR?>
								<input type="hidden" id="color" name="color" value="<?php echo $productDetail[0]->COLOR?>"/>
								</p>
								<p><b><?php echo lang('size')?> :</b> 
								
								<select name="size" id="size"  style="width: 25%;">
   								<?php foreach($sizeList as $size){ ?>
        							<option value="<?php echo $size->SIZE_ID?>"><?php echo $size->SIZE_NM?></option>;
    							<?php } ?>
								</select>
								
								
								 </p>
								 <p></p>
<!-- 								<p><b>จำนวนที่สั่ง :</b> <input type="text" placeholder="0" id="amountOrder" name="amountOrder"/></p> -->
<p> </p>
<br/>
								<p>	<button type="button" onclick="addCart();"class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										<?php echo lang('add_to_cart')?>
									</button>
									
									<button type="button" onclick="inquiryPopup();"class="btn btn-fefault cart">
										<i class="fa fa-shopping-cart"></i>
										<?php echo lang('contact_now')?>
									</button>
									</p>
<!-- 								<a href=""><img src="images/product-details/share.png" class="share img-responsive"  alt="" /></a> -->
							</div>
						</div>
					</div><!--/product-details-->
					

				</div>
			</div>
		</div>
			<script src='<?php echo base_url();?>js/jquery/jquery-1.8.3.min.js'></script>
	<script src='<?php echo base_url();?>js/jquery/jquery.elevatezoom.js'></script>
	<script>

   $("#img_01").elevateZoom({gallery:'gal1', cursor: 'pointer', galleryActiveClass: 'active', imageCrossfade: true, loadingIcon: 'http://www.elevateweb.co.uk/spinner.gif'}); 
   $("#img_01").bind("click", function(e) { var ez = $('#img_01').data('elevateZoom');	
   $.fancybox(ez.getGalleryList()); return false; }); 

	</script>
	</section>