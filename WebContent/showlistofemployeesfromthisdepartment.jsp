<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<div id="printReportDiv">
<%
int departmentId = Integer.parseInt(request.getParameter("departmentId"));
//String  sex = request.getParameter("sex");

List<Employee> employeeList = Employee.getAllEmployeesOfDepartment(departmentId);
Iterator<Employee> employeeItr = employeeList.iterator();
out.print("<table width='100%'>");
out.print("<caption>List of Employees</caption>");
out.print("<th>S.No</th>");
out.print("<th>Full Name</th>");	
out.print("<th>Id #</th>");
out.print("<th>Basic Salary</th>");
out.print("<th>Type</th>");
out.print("<th>Position.</th>");
out.print("<th>Sex</th>");
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
			out.print(e.getSex());
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
</div>
<table border="0" width="100%">
	<tr>
		<td align="right">
			<a href="#.jsp" onclick="printDiv('printReportDiv')"><img src="images/printer.jpg" align="absmiddle"/> Print</a>
		</td>
	</tr>
</table>