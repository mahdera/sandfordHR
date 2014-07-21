<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	String salaryRange = request.getParameter("salaryRange");
	List<Employee> employeeList = Employee.getAllEmployeesWithInThisSalaryRange(salaryRange);
	Iterator<Employee> employeeItr = employeeList.iterator();
%>
<table border="0" width="100%">
	<tr>
		<caption>List of Employees</caption>
		<th>S.No</th>
		<th>Full Name</th>
		<th>Id #</th>
		<th>Basic Salary</th>
		<th>Type</th>
		<th>Position.</th>
		<th>Edu.Level</th>
		<th>Detail</th>
	</tr>
	<%
	int ctr = 1;
	while(employeeItr.hasNext()){
		Employee e = employeeItr.next();		
		if(ctr % 2 == 0){
			out.print("<tr>");
		}else
			out.print("<tr class='bg'>");
			out.print("<td>");
				out.print(ctr);
			out.print("</td>");
			out.print("<td>");
				out.print(e.getFirstName()+" "+e.getFatherName()+" "+e.getGrandFatherName());
			out.print("</td>");
			out.print("<td>");
				out.print(e.getIdNumber());
			out.print("</td>");
			out.print("<td>");
				out.print(e.getBasicSalary());
			out.print("</td>");
			out.print("<td>");
				out.print(EmployeeType.getEmployeeType(e.getEmployeeTypeId()).getEmployeeType());
			out.print("</td>");
			out.print("<td>");
				out.print(e.getEmployeePosition());
			out.print("</td>");
			out.print("<td>");
				out.print(EducationLevel.getEducationLevel(e.getEducationLevelId()).getEducationLevel());
			out.print("</td>");
			out.print("<td>");
			%>
				<a href="#.jsp'" onclick="showEmployeeRecordDetail(<%=e.getId() %>);">Full Info</a>
			<%
			out.print("</td>");
			out.print("</tr>");
			out.print("<tr>");
			out.print("<td colspan='8'>");
				String uniqueDetailDivId = "employeeRecordViewDetailDiv"+e.getId();
				%>
					<div id='<%=uniqueDetailDivId%>'></div>
				<%
			out.print("</td>");
			out.print("</tr>");
		ctr++;
	}//end while loop
	%>
</table>