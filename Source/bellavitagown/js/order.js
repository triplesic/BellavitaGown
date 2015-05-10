function addOrder()
{

	var amountOrder = $("#amountOrder").val();
	var pddID = $("#pddID").val();
	var productName = $("#productName").val();
	var productImage = $("#productImage").val();
	var price = $("#price").val();
	var size = "";
	var color = "";
	
	console.log(amountOrder);
	console.log(pddID);
	console.log(productName);
	console.log(productImage);
	console.log(price);
	console.log(size);
	console.log(color);
	
	 	$.ajax({
		type : "POST",
		url : getBaseURL() + "order/addOrder",
		dataType : "json",
		data : {
			qty : amountOrder,
			id : pddID,
			name : productName,
			image : productImage,
			price : price,
			size : size,
			color : color
		},
		cache : false,
		success : function(data) {
			if (data.status == true) {
				
				 document.getElementById("showCart").innerHTML = '<a href="<?php echo base_url().order?>"><i class="fa fa-shopping-cart"></i>Cart ('+data.cartAmount + ')</a>';
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
				
				 document.getElementById("showCart").innerHTML = '<a href="<?php echo base_url().order?>"><i class="fa fa-shopping-cart"></i>Cart ('+ data.cartTotal+data.cartItem+')</a>';

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
