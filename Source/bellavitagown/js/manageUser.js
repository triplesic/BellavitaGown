var table;
$(document).ready(function() {
   table =  $('#example').dataTable(
    		{
    	        "ajax": getBaseURL() + "users/userData",
    	        "columns": [
    	                    { data: "USER_ID" },
    	                    { data: "USER_TYPE" },
    	                    { data: "USERNAME" },
    	                    { data: "FIRSTNAME" },
    	                    { data: "LASTNAME" },
    	                    { data: "TEL" },
    	                    { data: "EMAIL" },
    	                    { data: "ADDRESS" },
    	                    { data: null, 
    	                    	render: userSession
    	                    },
    	                    { data: "CREATED_DATE" },
    	                    { data: null, 
    	                    	render: userStatus
    	                    }
    	                    ]
    	    });
} );

function userStatus(data, type, row)
{
	var html;
	if(data.STATUS == 0)
	{
		console.log(data.STATUS);
		html = '<button type="button" class="btn btn-danger btn-sm" onclick="changeStatus('+ data.USER_ID+',1)" ><spam class="glyphicon glyphicon-remove"></span></button>';
		}else if(data.STATUS == 1)
			{
			html = '<button type="button" class="btn btn-success btn-sm" onclick="changeStatus('+ data.USER_ID+',0)"><spam class="glyphicon glyphicon-ok"></span></button>';
			
			}
return html;
}

function userSession(data, type, row)
{
	console.log(data.SESSION_ACTIVATE);
	var html;
	if(data.SESSION_ACTIVATE == 0)
		{
		html = '<button type="button" class="btn btn-danger btn-sm" disabled ><spam class="glyphicon glyphicon-remove"></span></button>';
		}else if(data.SESSION_ACTIVATE == 1)
			{
			html = '<button type="button" class="btn btn-success btn-sm" disabled ><spam class="glyphicon glyphicon-ok"></span></button>';			
			}
return html;
}

function changeStatus(id,status)
{	
	
//	$.blockUI.defaults.css = {
//		padding : 0,
//		margin : 0,
//		width : '30%',
//		top : '30%',
//		left : '35%',
//		textAlign : 'center',
//		cursor : 'wait'
//	};
//	$.blockUI({
//		overlayCSS : {
//			backgroundColor : '#fff'
//		},
//		message : '<br><img src="' + getBaseURL()
//				+ 'images/294.gif"/><br><h3>Please wait</h3>'
//	});

	$.ajax({
		type : "POST",
		url : getBaseURL() + "users/changeStatus",
		dataType : "json",
		data : {
			id : id,
			st : status
		},
		cache : false,
		success : function(data) {
			if (data.status == true) {
				
				alert(data.msg);
//				$.unblockUI();
				location.reload();
						
			} else if (data.status == false) {
				
				alert(data.msg);	
//				$.unblockUI();			
			}
		}
	});
}