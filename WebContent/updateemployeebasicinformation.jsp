<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.sql.Date" %>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	String firstName = request.getParameter("firstName");
	String fatherName = request.getParameter("fatherName");
	String grandFatherName = request.getParameter("grandFatherName");
	String sex = request.getParameter("sex");
	Date dateOfBirth = Date.valueOf(request.getParameter("dateOfBirth"));
	String idNumber = request.getParameter("idNumber");
	String pensionNumber = request.getParameter("pensionNumber");
	Date employementDate = Date.valueOf(request.getParameter("employementDate"));
	int religionId = Integer.parseInt(request.getParameter("religionId"));
	String nationality = request.getParameter("nationality");
	int maritalStatusId = Integer.parseInt(request.getParameter("maritalStatusId"));
	String spouseFullName = request.getParameter("spouseFullName");
	float basicSalary = Float.parseFloat(request.getParameter("basicSalary"));
	int employeeTypeId = Integer.parseInt(request.getParameter("employeeTypeId"));
	String employeePosition = request.getParameter("employeePosition");
	int educationLevelId = Integer.parseInt(request.getParameter("educationLevelId"));	
	int budgetCenterId = Integer.parseInt(request.getParameter("budgetCenterId"));
	int employementTypeId = Integer.parseInt(request.getParameter("employementTypeId"));
	
	/* out.print(employeeId+":"+firstName+":"+fatherName+":"+grandFatherName+":"+sex+":"+dateOfBirth+":"+idNumber+":"+
			pensionNumber+":"+employementDate+":"+religionId+":"+nationality+":"+maritalStatusId+":"+spouseFullName+":"+basicSalary+":"+employeeTypeId+":"+
			employeePosition+":"+educationLevelId+":"+budgetCenterId+":"+employementTypeId); */
	Employee.updateEmployee(employeeId,firstName,fatherName,grandFatherName,
			sex,dateOfBirth,idNumber,pensionNumber,employementDate,religionId,
			nationality,maritalStatusId,spouseFullName,basicSalary,employeeTypeId,
			employeePosition,educationLevelId,budgetCenterId,employementTypeId);
%>
<p class="msg done">Employee updated successfully!</p>