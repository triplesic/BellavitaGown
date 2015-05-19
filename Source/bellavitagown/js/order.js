function addCart()
{

	var amountOrder = $("#amountOrder").val();
	var pddID = $("#pddID").val();
	var productName = $("#productName").val();
	var productImage = $("#productImage").val();
	var price = $("#price").val();
	var sizeID = $("#size").val();
	var color = $("#color").val();

	var e = document.getElementById("size");
	var size = e.options[e.selectedIndex].text;
	
	console.log(amountOrder);
	console.log(pddID);
	console.log(productName);
	console.log(productImage);
	console.log(price);
	console.log(sizeID);
	console.log(size);
	console.log(color);
	
	 	$.ajax({
		type : "POST",
		url : getBaseURL() + "order/addCart",
		dataType : "json",
		data : {
			qty : amountOrder,
			id : pddID,
			name : productName,
			image : productImage,
			price : price,
			sizeID : sizeID,
			size : size,
			color : color
		},
		cache : false,
		success : function(data) {
			if (data.status == true) {
				//<li id="showCart"><a href="<?php echo base_url()."order"?>"><i class="fa fa-shopping-cart"></i> Cart (<?php echo $cartAmount; ?>)</a></li>
				
				 document.getElementById("showCart").innerHTML = '<a href="' + getBaseURL() + 'order"><i class="fa fa-shopping-cart"></i>Cart (' + data.cartAmount + ')</a>';
				 console.log(data.conten);

				//alert(data.msg);
			//	$.unblockUI();
				
			} 
			
//			else if (data.status == false) {
//				window.location.href = getBaseURL() + "usermanagementcontroller/userManagementView";
//				
//			}
		}
	});
}



function destroyCart()
{

	 	$.ajax({
		type : "POST",
		url : getBaseURL() + "order/destroy",
		cache : false,
		success : function(data) {
			if (data.status == true) {
				
				 document.getElementById("showCart").innerHTML = '<a href="' + getBaseURL() + 'order"><i class="fa fa-shopping-cart"></i>Cart (' + data.cartAmount + ')</a>';
									
			} 
	
		}
	});
}

function plusQty()
{
	var quantity = $("#quantity").val();
	
	quantity = parseInt(quantity, 10)+1;
	var price = $("#price").val();
//	document.getElementById('quantity').value =  value;
//	document.getElementById("cartTotal").innerHTML = value * price;
	
	$.ajax({
		type : "POST",
		url : getBaseURL() + "order/addOrder",
		dataType : "json",
		data : {
			quantity : quantity,
			price : price
		},
		cache : false,
		success : function(data) {
			if (data.status == true) {
				 document.getElementById("showCart").innerHTML = '<a href="' + getBaseURL() + 'order"><i class="fa fa-shopping-cart"></i>Cart (' + data.cartAmount + ')</a>';
				 console.log(data.conten);

			} 
		}
	});
}

function minusQty()
{
	var quantity = $("#quantity").val();
	if(quantity>0)
		{
			document.getElementById('quantity').value =  parseInt(quantity, 10)-1;
		}
	
}

function deleteCart(rowID)
{
	$.ajax({
		type : "POST",
		url : getBaseURL() + "order/deleteCart",
		dataType : "json",
		data : {
			rowID : rowID
		},
		cache : false,
		success : function(data) {
			if (data.status == true) {
				location.reload();
			} 
		}
	});
}


function confirmOrder()
{
	alert("WORK!!!!!!!!!!!!!!!");
	var winner_seq = 0;
	$.ajax({
		type : "POST",
		url : getBaseURL() + "order/confirmOrder",
		dataType : "json",
		cache : false,
		success : function(data) 
		{
			if (data.status == true) 
			{
				alert(data.msg);
				window.location.href = getBaseURL() + "order/confirm";
			} 
			else if (data.status == false)
			{
				alert(data.msg);
			}
		}
	});	

}
function getBaseURL() {
    var url = location.href;  // entire url including querystring - also: window.location.href;
    var baseURL = url.substring(0, url.indexOf('/', 14));


    if (baseURL.indexOf('http://localhost') != -1) {
        // Base Url for localhost
        var url = location.href;  // window.location.href;
        var pathname = location.pathname;  // window.location.pathname;
        var index1 = url.indexOf(pathname);
        var index2 = url.indexOf("/", index1 + 1);
        var baseLocalUrl = url.substr(0, index2);

        return baseLocalUrl + "/Source/bellavitagown/";
    }
    else {
        // Root Url for domain name
        //return baseURL + "/";
    	return baseURL + "/";
    }

}
