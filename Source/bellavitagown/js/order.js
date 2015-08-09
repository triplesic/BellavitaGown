  

function addCart()
{

	var pddID = $("#pddID").val();
	var productName = $("#productName").val();
	var productImage = $("#productImage").val();
	var sizeID = $("#size").val();
	var color = $("#color").val();

	var e = document.getElementById("size");
	var size = e.options[e.selectedIndex].text;
	

	console.log(pddID);
	console.log(productName);
	console.log(productImage);
	console.log(sizeID);
	console.log(size);
	console.log(color);
	
	 	$.ajax({
		type : "POST",
		url : getBaseURL() + "order/addCart",
		dataType : "json",
		data : {
			id : pddID,
			name : productName,
			image : productImage,
			sizeID : sizeID,
			color : color
		},
		cache : false,
		success : function(data) {
			if (data.status == true) {

				document.getElementById("showCart").innerHTML = '<a href="' + getBaseURL() + 'order"><i class="fa fa-shopping-cart"></i>Cart (' + data.cartAmount + ')</a>';
				 console.log(data.conten);


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


function inquiryPopup()
{
	 cuteLittleWindow = window.open(getBaseURL()+'contact/inquiry' , "littleWindow", "location=no,width=850,height=600"); 
}

