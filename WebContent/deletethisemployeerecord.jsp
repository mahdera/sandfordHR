<%@page import="com.empadmin.server.classes.*" %>
<%
	long empId = Long.parseLong(request.getParameter("empId"));
	//before deleting the employee rec, we need to delete all the related records found in many different tables....
	WorksAt.deleteWorksAtInforamtionForEmployee(empId);
	EducationInformation.deleteEducationInformationForEmployee(empId);
	Experience.deleteExperienceInformationForEmployee(empId);
	TrainingInformation.deleteTrainingInformationForEmployee(empId);
	Address.deleteAddressInformationForEmployee(empId);
	EmergencyContact.deleteEmergenceContaceInformationForEmployee(empId);
	Dependant.deleteDependantInformationForEmployee(empId);
	EmployeePhoto.deletePhotoForEmployee(empId);
	
	Employee.deleteEmployee(empId);
	
%>
<%@include file="showlistofemployeesfordelete.jsp" %>
<p class="msg done">Employee deleted successfully!</p>