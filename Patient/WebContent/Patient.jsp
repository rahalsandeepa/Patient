<%@page import="model.Patient"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script src="Componet/jquery-3.5.0.min.js"></script>
<link href="Views/css/bootstrap.min.css" rel="stylesheet">
<link href="Views/css/style.css" rel="stylesheet">
<script src="Componet/patient.js"></script>


</head>
<body>

<div class="container">
		<div class="row">
			<div class="col-6">
				<h1>Patient Details</h1>
				<form id="paticientform" name="paticientform">
					
					First Name: <input id="fNmae" name="P_fname" type="text"
						class="form-control form-control-sm"> <br> 
						
					Last name:<input id="lName" name="P_lname" type="text"
						class="form-control form-control-sm"> <br>
					
					<!-- <div class="input-group input-group-sm mb-3">
						<div class="input-group-prepend">
							<span class="input-group-text" id="P_gender">Gender: </span>
						</div>
						&nbsp;&nbsp;Male <input type="radio" id="gender"
							name="P_gender" value="Male"> &nbsp;&nbsp;Female <input
							type="radio" id="gender" name="P_gender" value="Female">
					</div>-->
					
					<select class="form-control" id="gender" name ="P_gender">
									<option value="0">choose....</option>
									<option value="Male">Male</option>
									<option value="Female">Female</option>
								</select>

					
					Age: <input id="age" name="P_age" type="text"
						class="form-control form-control-sm"> <br> 
						
					NIC: <input id="patientNIC" name="P_patientNIC" type="text"
						class="form-control form-control-sm"> <br> 
						
					Address: <input id="address" name="P_address" type="text"
						class="form-control form-control-sm"> <br> 
						
					Email: <input id="patientEmail" name="P_email" type="text"
						class="form-control form-control-sm"> <br> 
						
					Password:<input id="passwod" name="P_password" type="text"
						class="form-control form-control-sm"> <br> 
						
					Phone Number: <input id="phoneNumber" name="P_phoneNo" type="text"
						class="form-control form-control-sm"> <br> <input
						id="btnSave" name="btnSave" type="button" value="Save"
						class="btn btn-primary"> <input type="hidden"
						id="hidPatientIDSave" name="hidPatientIDSave" value="">
						
				</form>
				
				<div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
			<br>
				<div id="divPatientGrid">
					 <%
					 Patient patient1Obj = new Patient();
 					 out.print(patient1Obj.readPatient());
 					  %>
					</div>


			</div>
		</div>
	</div>


</body>
</html>