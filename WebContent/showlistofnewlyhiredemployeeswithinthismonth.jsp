<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
int departmentId = Integer.parseInt(request.getParameter("departmentId"));
int month = Integer.parseInt(request.getParameter("month"));

List<Employee> employeeList = Employee.getAllEmployeesHiredWithInThisMonthRange(departmentId,month);
Iterator<Employee> employeeItr = employeeList.iterator();
out.print("<table width='100%'>");
out.print("<caption>List of Employees</caption>");
out.print("<th>S.No</th>");
out.print("<th>Full Name</th>");	
out.print("<th>Id #</th>");
out.print("<th>Basic Salary</th>");
out.print("<th>Type</th>");
out.print("<th>Position.</th>");
out.print("<th>Edu.Level</th>");
out.print("<th>Months</th>");
out.print("<th>Detail</th>");
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
			out.print(month);
		out.print("</td>");
		out.print("<td>");
		%>
			<a href="#.jsp" onclick="showEmployeeRecordDetail(<%=e.getId() %>);">Show</a> |
			<a href="#.jsp" onclick="hideEmployeeRecordDetail(<%=e.getId() %>);">Hide</a>
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
out.print("</table>");
%>