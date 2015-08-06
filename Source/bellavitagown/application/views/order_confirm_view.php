


<script
	type="text/javascript"
	src="<?php echo base_url();?>js/order_confirm.js">
</script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script>
<script src="http://malsup.github.com/jquery.form.js"></script>	
<script>
        (function() {

            var bar = $('.bar');
            var percent = $('.percent');
            var status = $('#status');

            $('form').ajaxForm({
                beforeSend: function() {
                    status.empty();
                    var percentVal = '0%';
                    bar.width(percentVal)
                    percent.html(percentVal);
                },
                uploadProgress: function(event, position, total, percentComplete) {
                    var percentVal = percentComplete + '%';
                    bar.width(percentVal)
                    percent.html(percentVal);
                },
                success: function() {
                    var percentVal = '100%';
                    bar.width(percentVal)
                    percent.html(percentVal);
                },
                complete: function(xhr) {
                    status.html(xhr.responseText);
                }
            });
        })();
    </script>	
	
<head>
   
    <style>
        
        form { display: block; margin: 20px auto; background: #eee; border-radius: 10px; padding: 15px ;width: 400px;}
        .progress { position:relative; width:300px; border: 1px solid #ddd; padding: 1px; border-radius: 3px; height: 5px;}
        .bar { background-color: #B4F5B4; width:0%; height:2px; border-radius: 3px; }
        .percent { position:absolute; display:inline-block; top:10px; left:48%; }
        #status{margin-top: 30px;}
    </style>
</head>
<section id="cart_items">
		<div class="container">
			
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td  align="center" >หมายเลขการสั่งซื้อ</td>
							<td class="description" align="center">วันที่สั่งซื้อ</td>
							<td class="description" align="center">ยอดรวม</td>
							<td class="description" align="center">ยืนยันการจ่ายเงิน</td>
							<td class="price" align="center">หมายเลขพัสดุ 13 หลัก</td>					
						</tr>
					</thead>
				<tbody>
				

			 <?php foreach ($orderList as $order): ?>

						<tr>
							<td  class="cart_price" >
								<p><?php echo $order->ORDER_GNR_NUMBER?></p>
							</td>
							<td class="cart_description">		
								<p><?php echo $order->ORDER_CFM_TIME?></p>
							</td>
							<td class="cart_price">
								<p><?php echo $order->ORDER_PRICE_TOTAL?></p>
							</td>	
							<td class="cart_price">
								<?php if($order->ORDER_PAY_SLIP != null){?>
								<p><?php echo $order->ORDER_PAY_SLIP?></p>
								<?php }else{?>
<form action="<?php echo base_url();?>order/upload" method="post" enctype="multipart/form-data">

        <table>
            <tr><td>Name:</td><td><input type="text" name="txtname"></td></tr>
            <tr><td>File:</td><td><input type="file" name="myfile"></td></tr>
            <tr><td>&nbsp;</td><td><input type="submit" value="Upload"></td></tr>
        </table>
         <div class="progress">
        <div class="bar"></div >
        <div class="percent">0%</div >        
         <div id="status"></div>         
    </div>
    </form>
								<?php }?>
								
							</td>
							<td class="cart_quantity">
								<?php if($order->ORDER_PAY_SLIP != null){?>
								<p><?php echo $order->ORDER_PST_CODE?></p>
								<?php }else{?>
								<p>อยู่ในระหว่างดำเนินการจัดส่ง</p>
								<?php }?>
								
							</td>
						</tr>

			<?php endforeach ?>	
			
					</tbody>
				</table>
				
				
			</div>
		</div>
	</section> <!--/#cart_items-->
