jQuery(document).ready(function() {

	$("#user-edit").validate({
		onkeyup : false,
		onfocusout : false,
		errorElement : "div",
		errorPlacement : function(error, element) {

			if (element.attr("name") == 'firstname') {
				error.insertAfter("div#div-user-firstname");
				
			} else if (element.attr("name") == 'lastname') {
				error.insertAfter("div#div-user-lastname");
				
			} else if (element.attr("name") == 'tel') {
				error.insertAfter("div#div-user-tel");
				
			} 
		},
		rules : {
			"firstname" : {
				required : true
			},
			"lastname" : {
				required : true
			},
			"tel" : {
				required : true
			}
		},
		messages : {
			"firstname" : {
				required : "<span>*</span>"
			},
			"lastname" : {
				required : "<span>*</span>"
			},
			"tel" : {
				required : "<span>*</span>"
			}
		},
		submitHandler : function(form) {
			editUser();
		}
});
	
	$("#password-edit").validate({
		onkeyup : false,
		onfocusout : false,
		errorElement : "div",
		errorPlacement : function(error, element) {

			if (element.attr("name") == 'oldPass') {
				error.insertAfter("div#div-edit-oldPass");
				
			} else if (element.attr("name") == 'newPass') {
				error.insertAfter("div#div-edit-newPass");
				
			} else if (element.attr("name") == 'newConfirmPass') {
				error.insertAfter("div#div-edit-newConfirmPass");
				
			} 
		},
		rules : {
			"oldPass" : {
				minlength : 8
			},
			"newPass" : {
				minlength : 8
			},
			"newConfirmPass" : {
				equalTo : "#newPass"
			}
		},
		messages : {
			"oldPass" : {
				required : "<span>*</span>"
			},
			"newPass" : {
				required : "<span>*</span>"
			},
			"newConfirmPass" : {
				required : "<span>*</span>"
			}
		},
		submitHandler : function(form) {
			changePass();
		}
});
	
})

function editUser() {

	var firstname = $("#firstname").val();
	var lastname = $("#lastname").val();
	var tel = $("#tel").val();
	var address = $("#address").val();
		
	$.blockUI.defaults.css = {
		padding : 0,
		margin : 0,
		width : '30%',
		top : '30%',
		left : '35%',
		textAlign : 'center',
		cursor : 'wait'
	};
	$.blockUI({
		overlayCSS : {
			backgroundColor : '#fff'
		},
		message : '<br><img src="' + getBaseURL()
				+ 'images/294.gif"/><br><h3>Please wait</h3>'
	});

	$.ajax({
		type : "POST",
		url : getBaseURL() + "users/editUser",
		dataType : "json",
		data : {
			firstname : firstname,
			lastname : lastname,
			tel : tel,
			address : address
		},
		cache : false,
		success : function(data) {
			if (data.status == true) {
				
				alert(data.msg);
				$.unblockUI();
						
			} else if (data.status == false) {
				
				alert(data.msg);	
				$.unblockUI();
				
			}
		}
	});
}

function changePass()
{
	
	var oldPass = $("#oldPass").val();
	var newPass = $("#newPass").val();
		
	$.blockUI.defaults.css = {
		padding : 0,
		margin : 0,
		width : '30%',
		top : '30%',
		left : '35%',
		textAlign : 'center',
		cursor : 'wait'
	};
	$.blockUI({
		overlayCSS : {
			backgroundColor : '#fff'
		},
		message : '<br><img src="' + getBaseURL()
				+ 'images/294.gif"/><br><h3>Please wait</h3>'
	});
	$.ajax({
		type : "POST",
		url : getBaseURL() + "users/changePass",
		dataType : "json",
		data : {
			oldPass : oldPass,
			newPass : newPass
		},
		cache : false,
		success : function(data) {
			if (data.status == true) {
				
				alert(data.msg);
				$.unblockUI();
						
			} else if (data.status == false) {
				
				alert(data.msg);	
				$.unblockUI();
				
			}
		}
	});

}

function getBaseURL() {
	var url = location.href; // entire url including querystring - also: window.location.href;
	var baseURL = url.substring(0, url.indexOf('/', 14));
	if (baseURL.indexOf('http://localhost') != -1) {
		// Base Url for localhost
		var url = location.href; // window.location.href;
		var pathname = location.pathname; // window.location.pathname;
		var index1 = url.indexOf(pathname);
		var index2 = url.indexOf("/", index1 + 1);
		var baseLocalUrl = url.substr(0, index2);
		return baseLocalUrl + "/Source/bellavitagown/";
	} else {
		// Root Url for domain name
		//return baseURL + "/";
		return baseURL + "/Source/bellavitagown/";
	}
}