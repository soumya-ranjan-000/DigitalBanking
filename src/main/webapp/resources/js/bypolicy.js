$(document).ready(function(){
	
	let polName;
    let tenure;
    let paymode;
    let sum;
    let premium;
    //1.calculate premium
    //get value from the dropdown when they change
	$("#paymentMode,#tenure,#policyName").change(function()
			{		  		
		    
		    polName=$("#policyName").val().toUpperCase();
		    tenure=$("#tenure").val();
		    paymode=$("#paymentMode").val().toLowerCase();
		    if(paymode === "" || polName ==="" || tenure ===""){
		    	console.log("empty");
		    }
		    else{	    	
		    	calcsum(polName,tenure,paymode);
		    	console.log("not empty");
		    } 
		}
	);
	
	function calcsum(name,ten,interval) {
					$.getJSON('info',
							function(data) {
		    	   				let t=parseInt(ten);
		    	   				let total;
		    	   				console.log("tenure",t);
						    	sum=parseInt(data[name][ten]);
						    	console.log("sum",sum);					    	
						    	switch(interval) {
						    	case "monthly":
						    		premium=(sum/t)/12;
						    		break;
						    	case "quarterly":
						    		premium=(sum/t)/4;
						    		break;
						    	case "yearly":
						    		premium=(sum/t);
						    		break;
						    	}
						    	total=parseFloat(sum).toFixed(2);
						    	premium=parseFloat(premium).toFixed(2);
						    	console.log("premium: ",premium);	
						    	let q="Premium Amount: "+premium;
						    	$("#premium").html(q);
						    	$('input[name="premium"]').val(premium);
						    	$('input[name="total"]').val(total);
							});
				}

	
//2.validate form-------------------------------------------------------

$('input[id$=dateOfBirth]').datepicker({
    dateFormat: 'mm/dd/yy'
});
});
