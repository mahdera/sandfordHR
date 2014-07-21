<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>

<%
	Employee employee = null;
	int programLevelId = 0; 
	String deptName = null;
	//String admissionTypeName = null;
	String programLevelName = null;
	String admissionTypeName = null;
	String regionName = null;
	String imagePath = null;
	
	String searchQuery = request.getParameter("query");
	String tableName = "tbl_employee";
	String fieldName = "first_name";
	out.print("<table border='1' width='100%'>");
	out.print("<caption>Search Results for query: '" + searchQuery
			+ "'</caption>");
	out.print("<tr>");
	out.print("<th>Full Name</th>");	
	out.print("<th>Id Number</th>");
	out.print("<th>Basic Salary</th>");
	out.print("<th>Employee Type</th>");
	out.print("<th>Position</th>");
	out.print("<th>Education Level</th>");
	out.print("<th>Pension Num.</th>");
	out.print("<th>Details</th>");
	out.print("</tr>");
	List<Employee> resultByFirstNameList = Employee
			.getEmployeeInformationHaving(fieldName, searchQuery);
	Iterator<Employee> resultByFirstNameItr = resultByFirstNameList
			.iterator();
	while (resultByFirstNameItr.hasNext()) {
		employee = resultByFirstNameItr.next();
		out.print("<tr>");
		out.print("<td>");
		out.print(employee.getFirstName() + " "
				+ employee.getFatherName());
		out.print("</td>");
		out.print("<td>");
		out.print(employee.getIdNumber());
		out.print("</td>");
		out.print("<td>");
		out.print(employee.getBasicSalary());
		out.print("</td>");
		out.print("<td>");
		out.print(EmployeeType.getEmployeeType(employee.getEmployeeTypeId()).getEmployeeType());
		out.print("</td>");
		out.print("<td>");		 
			out.print(employee.getEmployeePosition());
		out.print("</td>");
		out.print("<td>");		 
			out.print(EducationLevel.getEducationLevel(employee.getEducationLevelId()).getEducationLevel());
		out.print("</td>");
		out.print("<td>");
		out.print(employee.getPensionNumber());
		out.print("</td>");		
		out.print("<td>");
			%>
			<a href="#.jsp" onclick="showEmployeeRecordDetail(<%=employee.getId() %>);">Show</a> |
			<a href="#.jsp" onclick="hideEmployeeRecordDetail(<%=employee.getId() %>);">Hide</a>
			<%
		out.print("</td>");		
	  out.print("</tr>");	
	  out.print("<tr>");
		out.print("<td colspan='8'>");
			String uniqueDetailDivId = "employeeRecordViewDetailDiv"+employee.getId();
			%>
				<div id='<%=uniqueDetailDivId%>'></div>
			<%
		out.print("</td>");
		out.print("</tr>");
	}//end whilel loop
	
	////////now do the same for the father name case
	
	fieldName = "father_name";
	List<Employee> resultByFatherNameList = Employee
	.getEmployeeInformationHaving(fieldName, searchQuery);
Iterator<Employee> resultByFatherNameItr = resultByFatherNameList
	.iterator();
while (resultByFatherNameItr.hasNext()) {
	employee = resultByFatherNameItr.next();
	out.print("<tr>");
	out.print("<td>");
	out.print(employee.getFirstName() + " "
			+ employee.getFatherName());
	out.print("</td>");
	out.print("<td>");
	out.print(employee.getIdNumber());
	out.print("</td>");
	out.print("<td>");
	out.print(employee.getBasicSalary());
	out.print("</td>");
	out.print("<td>");
	out.print(EmployeeType.getEmployeeType(employee.getEmployeeTypeId()).getEmployeeType());
	out.print("</td>");
	out.print("<td>");		 
		out.print(employee.getEmployeePosition());
	out.print("</td>");
	out.print("<td>");		 
		out.print(EducationLevel.getEducationLevel(employee.getEducationLevelId()).getEducationLevel());
	out.print("</td>");
	out.print("<td>");
	out.print(employee.getPensionNumber());
	out.print("</td>");		
  out.print("</tr>");
}//end whilel loop


/////do the same for grand father
fieldName = "grand_father_name";
	List<Employee> resultByGrandFatherNameList = Employee
	.getEmployeeInformationHaving(fieldName, searchQuery);
Iterator<Employee> resultByGrandFatherNameItr = resultByGrandFatherNameList
	.iterator();
while (resultByGrandFatherNameItr.hasNext()) {
	employee = resultByGrandFatherNameItr.next();
	out.print("<tr>");
	out.print("<td>");
	out.print(employee.getFirstName() + " "
			+ employee.getFatherName());
	out.print("</td>");
	out.print("<td>");
	out.print(employee.getIdNumber());
	out.print("</td>");
	out.print("<td>");
	out.print(employee.getBasicSalary());
	out.print("</td>");
	out.print("<td>");
	out.print(EmployeeType.getEmployeeType(employee.getEmployeeTypeId()).getEmployeeType());
	out.print("</td>");
	out.print("<td>");		 
		out.print(employee.getEmployeePosition());
	out.print("</td>");
	out.print("<td>");		 
		out.print(EducationLevel.getEducationLevel(employee.getEducationLevelId()).getEducationLevel());
	out.print("</td>");
	out.print("<td>");
	out.print(employee.getPensionNumber());
	out.print("</td>");		
  out.print("</tr>");
}//end whilel loop

////////////////now do the same for id_number
fieldName = "id_number";
	List<Employee> resultByEmployeeIdList = Employee
	.getEmployeeInformationHaving(fieldName, searchQuery);
Iterator<Employee> resultByEmployeeIdItr = resultByEmployeeIdList
	.iterator();
while (resultByEmployeeIdItr.hasNext()) {
	employee = resultByEmployeeIdItr.next();
	out.print("<tr>");
	out.print("<td>");
	out.print(employee.getFirstName() + " "
			+ employee.getFatherName());
	out.print("</td>");
	out.print("<td>");
	out.print(employee.getIdNumber());
	out.print("</td>");
	out.print("<td>");
	out.print(employee.getBasicSalary());
	out.print("</td>");
	out.print("<td>");
	out.print(EmployeeType.getEmployeeType(employee.getEmployeeTypeId()).getEmployeeType());
	out.print("</td>");
	out.print("<td>");		 
		out.print(employee.getEmployeePosition());
	out.print("</td>");
	out.print("<td>");		 
		out.print(EducationLevel.getEducationLevel(employee.getEducationLevelId()).getEducationLevel());
	out.print("</td>");
	out.print("<td>");
	out.print(employee.getPensionNumber());
	out.print("</td>");		
  out.print("</tr>");
}//end whilel loop

/////////////////////now do the same for basic salary///////////////

fieldName = "basic_salary";
	List<Employee> resultByBasicSalaryList = Employee
	.getEmployeeInformationHaving(fieldName, searchQuery);
Iterator<Employee> resultByBasicSalaryItr = resultByBasicSalaryList
	.iterator();
while (resultByBasicSalaryItr.hasNext()) {
	employee = resultByBasicSalaryItr.next();
	out.print("<tr>");
	out.print("<td>");
	out.print(employee.getFirstName() + " "
			+ employee.getFatherName());
	out.print("</td>");
	out.print("<td>");
	out.print(employee.getIdNumber());
	out.print("</td>");
	out.print("<td>");
	out.print(employee.getBasicSalary());
	out.print("</td>");
	out.print("<td>");
	out.print(EmployeeType.getEmployeeType(employee.getEmployeeTypeId()).getEmployeeType());
	out.print("</td>");
	out.print("<td>");		 
		out.print(employee.getEmployeePosition());
	out.print("</td>");
	out.print("<td>");		 
		out.print(EducationLevel.getEducationLevel(employee.getEducationLevelId()).getEducationLevel());
	out.print("</td>");
	out.print("<td>");
	out.print(employee.getPensionNumber());
	out.print("</td>");		
  out.print("</tr>");
}//end whilel loop

/////////////now do the search by employee position
fieldName = "employee_position";
	List<Employee> resultByEmployeePositionList = Employee
	.getEmployeeInformationHaving(fieldName, searchQuery);
Iterator<Employee> resultByEmployeePositionItr = resultByEmployeePositionList
	.iterator();
while (resultByEmployeePositionItr.hasNext()) {
	employee = resultByEmployeePositionItr.next();
	out.print("<tr>");
	out.print("<td>");
	out.print(employee.getFirstName() + " "
			+ employee.getFatherName());
	out.print("</td>");
	out.print("<td>");
	out.print(employee.getIdNumber());
	out.print("</td>");
	out.print("<td>");
	out.print(employee.getBasicSalary());
	out.print("</td>");
	out.print("<td>");
	out.print(EmployeeType.getEmployeeType(employee.getEmployeeTypeId()).getEmployeeType());
	out.print("</td>");
	out.print("<td>");		 
		out.print(employee.getEmployeePosition());
	out.print("</td>");
	out.print("<td>");		 
		out.print(EducationLevel.getEducationLevel(employee.getEducationLevelId()).getEducationLevel());
	out.print("</td>");
	out.print("<td>");
	out.print(employee.getPensionNumber());
	out.print("</td>");		
  out.print("</tr>");
}//end whilel loop


/////////////now do the same for field of study
fieldName = "pension_number";
	List<Employee> resultByFieldOfStudyList = Employee
	.getEmployeeInformationHaving(fieldName, searchQuery);
Iterator<Employee> resultByFieldOfStudyItr = resultByFieldOfStudyList
	.iterator();
while (resultByFieldOfStudyItr.hasNext()) {
	employee = resultByFieldOfStudyItr.next();
	out.print("<tr>");
	out.print("<td>");
	out.print(employee.getFirstName() + " "
			+ employee.getFatherName());
	out.print("</td>");
	out.print("<td>");
	out.print(employee.getIdNumber());
	out.print("</td>");
	out.print("<td>");
	out.print(employee.getBasicSalary());
	out.print("</td>");
	out.print("<td>");
	out.print(EmployeeType.getEmployeeType(employee.getEmployeeTypeId()).getEmployeeType());
	out.print("</td>");
	out.print("<td>");		 
		out.print(employee.getEmployeePosition());
	out.print("</td>");
	out.print("<td>");		 
		out.print(EducationLevel.getEducationLevel(employee.getEducationLevelId()).getEducationLevel());
	out.print("</td>");
	out.print("<td>");
	out.print(employee.getPensionNumber());
	out.print("</td>");		
  out.print("</tr>");
}//end whilel loop

%>