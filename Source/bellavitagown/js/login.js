jQuery(document).ready(function(){
		 
	
	$(".slidingDiv").hide();
	$('.show_hide').click(function()	
		{
		$(".slidingDiv").slideToggle();
		});
	
               
					$("#login-form").validate({
                    onkeyup: false,
                    onfocusout: false,
                    errorElement: "div",
                    errorPlacement: function(error, element) 
                    {
                    	
                       if(element.attr("name") == 'username')
                       {
                    	   error.insertAfter("div#div-login-name");            	   
                       }
                       else if(element.attr("name") == 'password')
                       {
                    	   error.insertAfter("div#div-login-pass");   
                       }
                   
                    }, 
                    rules: {
                        "username": {
                            required: true
                        },  
                        "password": {
                            required: true
                        }
                    },
                    messages: {
                        "username": {
                            required: "<span>*</span>"
                        },  
                        "password": {
                            required: "<span>*</span>"
                        }
                    },
                    submitHandler : function(form) {	
        				login();
        			}
                });
                
                $("#register-form").validate({
                    onkeyup: false,
                    onfocusout: false,
                    errorElement: "div",
                    errorPlacement: function(error, element) 
                    {
                    	
                       if(element.attr("name") == 'firstName')
                       {
                    	   error.insertAfter("div#div-register-firstName");            	   
                       }
                       else if(element.attr("name") == 'lastName')
                       {
                    	   error.insertAfter("div#div-register-lastName");   
                       }
                       else if(element.attr("name") == 'email')
                       {
                    	   error.insertAfter("div#div-register-email");   
                       }
                       else if(element.attr("name") == 'password')
                       {
                    	   error.insertAfter("div#div-register-password");   
                       }
                       else if(element.attr("name") == 'confirmPassword')
                       {
                    	   error.insertAfter("div#div-register-confirmPassword");   
                       }
                       else if(element.attr("name") == 'address')
                       {
                    	   error.insertAfter("div#div-register-address");   
                       }
                   
                    }, 
                    rules: {
                        "firstName": {
                            required: true
                        },  
                        "lastName": {
                            required: true
                        },  
                        "email": {
                            required: true
                        },  
                        "password": {
                            required: true
                        },  
                        "confirmPassword": {
                            required: true
                        },  
                        "address": {
                            required: true
                        }
                    },
                    messages: {
                        "firstName": {
                            required: "<span>*</span>"
                        },  
                        "lastName": {
                            required: "<span>*</span>"
                        },  
                        "email": {
                            required: "<span>*</span>"
                        },  
                        "password": {
                            required: "<span>*</span>"
                        },  
                        "confirmPassword": {
                            required: "<span>*</span>"
                        },  
                        "address": {
                            required: "<span>*</span>"
                        }
                    },
                    submitHandler : function(form) {	
        				register();
        			}
                });
                
                $("#reset-form").validate({
                    onkeyup: false,
                    onfocusout: false,
                    errorElement: "div",
                    errorPlacement: function(error, element) 
                    {	
                       if(element.attr("name") == 'resetMail')
                       {
                    	   error.insertAfter("div#div-reset-mail");            	   
                       } 
                    }, 
                    rules: {
                        "resetMail": {
                            required: true
                        }
                    },
                    messages: {
                        "resetMail": {
                            required: "<span>*</span>"
                        }
                    },
                    submitHandler : function(form) {	
                		reset();
                	}
                	});
     });
	 
	
	
	
	function login()
	{
		
		var username = $("#username").val();
		var password = $("#password").val();
		var popup = $("#popup").val();

		$.blockUI.defaults.css = { 
	            padding: 0,
	            margin: 0,
	            width: '30%',
	            top: '30%',
	            left: '35%',
	            textAlign: 'center',
	            cursor: 'wait'
	        };
		$.blockUI({
			overlayCSS: { backgroundColor: '#fff' },
			message : '<br><img src="' + getBaseURL() + 'images/294.gif"/><br><h3>Please wait</h3>'
		});

		
		$.ajax({
			type : "POST",
			url : getBaseURL() + "login/check_database",
			dataType : "json",
			data : {
				username : username,
				password : password,
				popup : popup
			},
			cache : false,
			success : function(data) {
				if (data.status == true) {
					$.unblockUI();
					if(data.popup == '1')
						{
						window.location.href = getBaseURL() + 'contact/inquiry';
						}
					else
						{
						window.location.href = getBaseURL();
						}
					
				} else if (data.status == false) {
					alert(data.msg);
					$.unblockUI();
				}
			}
		});
		
	}

	function register()
	{
	
		var firstName = $("#firstName").val();
		var lastName = $("#lastName").val();
		var email = $("#email").val();
		var regPassword = $("#regPassword").val();
		var address = $("#address").val();
		
		console.log(firstName);
		console.log(lastName);
		console.log(email);
		console.log(regPassword);
		console.log(address);

		$.blockUI.defaults.css = { 
	            padding: 0,
	            margin: 0,
	            width: '30%',
	            top: '30%',
	            left: '35%',
	            textAlign: 'center',
	            cursor: 'wait'
	        };
		$.blockUI({
			overlayCSS: { backgroundColor: '#fff' },
			message : '<br><img src="' + getBaseURL() + 'images/294.gif"/><br><h3>Please wait</h3>'
		});

		
		$.ajax({
			type : "POST",
			url : getBaseURL() + "login/register",
			dataType : "json",
			data : {
				firstName : firstName,
				lastName : lastName,
				email : email,
				password : regPassword,
				address : address
			},
			cache : false,
			success : function(data) {
				if (data.status == true) {
					$.unblockUI();
					if(data.status == true)
						{
						
						}
					else
						{
						
						}
					
				} else if (data.status == false) {
					alert(data.msg);
					$.unblockUI();
				}
			}
		});
			
	}
	
	function reset()
	{
		var resetMail = $("#resetMail").val();
		
		$.blockUI.defaults.css = { 
	            padding: 0,
	            margin: 0,
	            width: '30%',
	            top: '30%',
	            left: '35%',
	            textAlign: 'center',
	            cursor: 'wait'
	        };
		$.blockUI({
			overlayCSS: { backgroundColor: '#fff' },
			message : '<br><img src="' + getBaseURL() + 'images/294.gif"/><br><h3>Please wait</h3>'
		});

		
		$.ajax({
			type : "POST",
			url : getBaseURL() + "login/reset",
			dataType : "json",
			data : {
				resetMail : resetMail
			},
			cache : false,
			success : function(data) {
				if (data.status == true) {
					$.unblockUI();
					if(data.status == true)
						{
						
						}
					else
						{
						
						}
					
				} else if (data.status == false) {
					alert(data.msg);
					$.unblockUI();
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
	 		    	return baseURL + "/Source/bellavitagown/";
	 		    }
	 		}