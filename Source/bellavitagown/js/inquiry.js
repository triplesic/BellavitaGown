	jQuery(document).ready(function() {
		 
                $("#inquiry-form").validate({

                    onkeyup: false,
                    onfocusout: false,
                    errorElement: "div",
                    errorPlacement: function(error, element) {
                    	
                       if(element.attr("name") == 'inq-name')
                       {
                    	   error.insertAfter("div#div-inq-name");            	   
                       }
                       else if(element.attr("name") == 'inq-email')
                       {
                    	   error.insertAfter("div#div-inq-email");   
                       }
                       else if(element.attr("name") == 'inq-phone')
                       {
                    	   error.insertAfter("div#div-inq-phone");                  	   
                       } 
                       
                   
                    }, 
                    rules: {
                        "inq-name": {
                            required: true
                        },  
                        "inq-email": {
                            required: true
                        },
                        "inq-phone": {
                            required: true
                        }
                    },
                    messages: {
                        "inq-name": {
                            required: "<span>*</span>"
                        },  
                        "inq-email": {
                            required: "<span>*</span>"
                        },
                        "inq-phone": {
                            required: "<span>*</span>"
                        }
                    },
                    submitHandler : function(form) {
                    	
        				sendMail();

        			}
                });
                
            });
	 
	
	
	function sendMail()
	{
		
		var compName = $("#inq-compName").val();
		var name = $("#inq-name").val();
		var email = $("#inq-email").val();
		var phone = $("#inq-phone").val();
		var message = $("#inq-message").val();
		
		console.log(compName);
		console.log(name);
		console.log(email);
		console.log(phone);
		console.log(message);
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
			url : getBaseURL() + "contact/inquiryContact",
			dataType : "json",
			data : {
				name : name,
				email : email,
				phone : phone,
				message : message,
				compName : compName
			},
			cache : false,
			success : function(data) {
				if (data.status == true) {
					alert(data.msg);
					$.unblockUI();
					window.close();
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