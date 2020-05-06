
$(document).ready(function() {
	$("#alertSuccess").hide();
	$("#alertError").hide();
});

// SAVE ============================================
$(document).on("click", "#btnSave", function(event) {

	// Clear alerts---------------------
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();

	// Form validation-------------------
	var status = validatePatientForm();
	if (status != true) {
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}

	var type = ($("#hidPatientIDSave").val() == "") ? "POST" : "PUT";

	$.ajax({
		url : "PatientAPI",
		type : type,
		data : $("#paticientform").serialize(),
		dataType : "text",
		complete : function(response, status) {
			console.log(response)
			onPatientSaveComplete(response.responseText, status);
		}
	});
});

function onPatientSaveComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("Successfully saved.");
			$("#alertSuccess").show();
			$("#divPatientGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while saving.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while saving..");
		$("#alertError").show();
	}
	$("#hidPatientIDSave").val("");
	$("#P_Id")[0].reset();
}

//UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event)
		{
			$("#hidPatientIDSave").val($(this).closest("tr").find('td:eq(0)').text());
			$("#fNmae").val($(this).closest("tr").find('td:eq(1)').text());
			$("#lName").val($(this).closest("tr").find('td:eq(2)').text());
			$("#gender").val($(this).closest("tr").find('td:eq(3)').text());
			$("#age").val($(this).closest("tr").find('td:eq(4)').text());
			$("#patientNIC").val($(this).closest("tr").find('td:eq(5)').text());
			$("#address").val($(this).closest("tr").find('td:eq(6)').text());
			$("#patientEmail").val($(this).closest("tr").find('td:eq(7)').text());
			$("#passwod").val($(this).closest("tr").find('td:eq(8)').text());
			$("#phoneNumber").val($(this).closest("tr").find('td:eq(9)').text());

		});


//Remove
$(document).on("click", ".btnRemove", function(event)
		{
		 	$.ajax(
		{
			url : "PatientAPI",
			type : "DELETE",
			data : "P_Id=" + $(this).val(),
			dataType : "text",
			complete : function(response, status)
			{
				onPatientDeleteComplete(response.responseText, status);
			}
		 });
		});


	function onPatientDeleteComplete(response, status)
	{
		if (status == "success")
	{
			var resultSet = JSON.parse(response);
			if (resultSet.status.trim() == "success")
	{
			$("#alertSuccess").text("Successfully deleted.");
			$("#alertSuccess").show();
			$("#divPatientGrid").html(resultSet.data);
	} 
	else if (resultSet.status.trim() == "error")
	{
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
	}
	}
	else if (status == "error")
	{
		$("#alertError").text("Error while deleting.");
		$("#alertError").show();
	} 
	else
	{
		$("#alertError").text("Unknown error while deleting..");
		$("#alertError").show();
	}
}
// CLIENT-MODEL================================================================
function validatePatientForm() {
	// First name
	if ($("#fNmae").val().trim() == "") {
		return "Insert First Name";
	}

	// Last name
	if ($("#lName").val().trim() == "") {
		return "Insert Last Name.";
	}
	// Gender
	if ($("#gender").val().trim() == "") {
		return "Insert Gender.";
	}
	// Age
	if ($("#age").val().trim() == "") {
		return "Insert Age.";
	}

	// NIC
	if ($("#patientNIC").val().trim() == "") {
		return "Insert NIC.";
	}
	// address
	if ($("#address").val().trim() == "") {
		return "Insert address.";
	}
	// email
	if ($("#patientEmail").val().trim() == "") {
		return "Insert Email.";
	}
	// password
	if ($("#passwod").val().trim() == "") {
		return "Insert Password.";
	}
	// phone number
	if ($("#phoneNumber").val().trim() == "") {
		return "Insert Phone number.";
	}
	return true;
}


