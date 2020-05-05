<%@page import="model.Patient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script src="Component/jquery-3.5.0.min.js"></script>
<link href="Views/css/bootstrap.min.css" rel="stylesheet">
<link href="Views/css/style.css" rel="stylesheet">

</head>
<body>

<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Patient Details</h1>
				<form id="P_Id" name="patientId">
					
					First Name: <input id="fName" name="fName" type="text"
						class="form-control form-control-sm"> <br> 
						
					Last name:<input id="lNmae" name="lNmae" type="text"
						class="form-control form-control-sm"> <br>
					
					<div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="lblName">Gender: </span>
						</div>
						&nbsp;&nbsp;Male <input type="radio" id="rdoGenderMale"
							name="rdoGender" value="Male"> &nbsp;&nbsp;Female <input
							type="radio" id="rdoGenderFemale" name="rdoGender" value="Female">
					</div>

					
					Age: <input id="age" name="age" type="text"
						class="form-control form-control-sm"> <br> 
						
					NIC: <input id="pNIC" name="pNIC" type="text"
						class="form-control form-control-sm"> <br> 
						
					Address: <input id="address" name="address" type="text"
						class="form-control form-control-sm"> <br> 
						
					Email: <input id="pEmail" name="pEmail" type="text"
						class="form-control form-control-sm"> <br> 
						
					Password:<input id="passwod" name="passwod" type="text"
						class="form-control form-control-sm"> <br> 
						
					Phone Number: <input id="phoneNumber" name="phoneNumber" type="text"
						class="form-control form-control-sm"> <br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidItemIDSave" name="hidItemIDSave" value="">
						
				</form>
				
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
			<br>
				<div id="divItemsGrid">
					 <%
					 Patient patientObj = new Patient();
 					 out.print(patientObj.readPatient());
 					  %>
					</div>


			</div>
		</div>
	</div>


</body>
</html>