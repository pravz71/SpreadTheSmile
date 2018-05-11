

// signup page

$("#sign_up_options input[name = role]").change(function(){
	var selected = $(this).val();
	var current = "#" + selected + "_form";
	$("#sign_up_options").css({
		margin : "2% auto"
	});
	displayForm(current);
	changeColor(selected);
	$("body").css("background-image","url(img/background_small.jpg)");
});
function displayForm(current){
	$(".sign_up_form").css("display" , "none");
	$(current).css("display" , "block");
}
function changeColor(selected){
	var pickedColor;
	var pos;
	if(selected === "contributor"){
		pickedColor = "rgb(0, 128, 0)";
	}
	else if(selected === "volunteer"){
		pickedColor = "rgb(255, 0, 0)";
	}
	else{
		pickedColor = "rgb(0, 0, 255)";
	}
	$("#sign_up_options h1").css("color", pickedColor);
}


	// Signup Validations

function validateForm(selected)
{
	var current = "#" + selected + "_form";
	var pass1 = $(current + " input[name = password]").val();
	var pass2 = $(current + " input[name = confirm_password]").val();
	var question = $(current + " select[name = security_question]").val();
	if(pass1 !== pass2)
	{
		$(current + " input[name = password]").val("");
		$(current + " input[name = confirm_password]").val("");
		alert("Passwords do not match.");
		return false;
	}
	if(question === null)
	{
		alert("Please select a question.");
		return false;
	}
	return true;
}

// cart page

$(".item input").keyup(function(){
	var item = $(this).attr("name");
	var ngoName = ("select[name='" + item + "_name"  + "']");
	$(ngoName).removeAttr('disabled');
	$(ngoName).attr('required',true);
	$(ngoName).removeClass("error");
});
	
	//functions to enable/disable ngo dropdowns
$(".item input").change(checkQuantity);
$(".item input").click(checkQuantity);
function checkQuantity()
{
	$(ngoName).removeClass("error");
	var item = $(this).attr("name");
	var num = Number($(this).val());
	var ngoName = ("select[name='" + item + "_name"  + "']");
	if(!isNaN(num) && (num >= 1 && num <= 1000))
	{
		$(this).val(Math.floor(num));
		$(ngoName).removeAttr('disabled');
	}
	else
	{
		$(this).val(0);
		$(ngoName).attr('disabled',true);
	}
}

$(".item select").click(function(){
	$(this).removeClass("error");
});

	//cart validations
function validateCart()
{
	var valid = true;
	var item_count = false; //To check if atleast one item is selected by user
	$(".item input").each(function() {
  		if(Number($(this).val()) > 0)
  		{
  			item_count = true;
  			var item = $(this).attr("name");
  			var ngoName = ("select[name='" + item + "_name"  + "']");
  			if($(ngoName).val() === null)
  			{
  				$(ngoName).addClass("error");
  				valid = false;
  			}
  		}
	});
	if(!valid){
		alert("Please select any NGO or Warehouse from the dropdown.");
	}
	if(!item_count && valid){
		valid = false;
		alert("Please select atleast one item.");
	}
	return valid;
}

//Checkout Page
	//Restrict past dates

$("#checkout input[type = 'date']").click(function () {
	var minDate = new Date();
	minDate.setDate(minDate.getDate() + 2);
	var maxDate = new Date();
	maxDate.setDate(maxDate.getDate() + 30);
	minDate = dateExtractor(minDate);
	maxDate = dateExtractor(maxDate);
	$(this).attr('min', minDate);
	$(this).attr('max', maxDate);
});
function dateExtractor(dt)
{
	var day = dt.getDate();
	var month = dt.getMonth()+1; //January is 0!
	var year = dt.getFullYear();
	 if(day < 10){
	        day = '0'+day;
    } 
    if(month < 10){
        month = '0' + month;
    } 
	dt = year + '-' + month + '-' + day;
	return dt;
}
// Admin Send from Warehouse Page

function validateSentItems()
{
	var item_count = false; //To check if atleast one item is selected by user
	$("#send_items input[type=number]").each(function() {
  		if(Number($(this).val()) > 0)
  		{
  			item_count = true;
  		}
  	});
	if(!item_count){
		alert("Please send atleast one item.");
	}
	return item_count;
} 
function validateRequestItems()
{
	var item_count = false; //To check if atleast one item is selected by user
	$("#update_request input[type=number]").each(function() {
  		if(Number($(this).val()) > 0)
  		{
  			item_count = true;
  		}
  	});
	if(!item_count){
		alert("Please send atleast one item.");
	}
	return item_count;
} 
$("#send_items input[type = 'date']").click(function () {
	var minDate = new Date();
	minDate.setDate(minDate.getDate() + 1);
	var maxDate = new Date();
	maxDate.setDate(maxDate.getDate() + 30);
	minDate = dateExtractor(minDate);
	maxDate = dateExtractor(maxDate);
	$(this).attr('min', minDate);
	$(this).attr('max', maxDate);
});   

// Change Password

function validatePassword()
{
	var pass1 = $("input[name = password]").val();
	var pass2 = $("input[name = confirm_password]").val();
	if(pass1 !== pass2)
	{
		$(" input[name = password]").val("");
		$(" input[name = confirm_password]").val("");
		alert("Passwords do not match.");
		return false;
	}
	console
	return true;
}                                                                                                                                                                                                                                                                                                                                                   