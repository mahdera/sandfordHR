<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	Account account = (Account) session.getAttribute("account");
	String functionalityName = "departmentManagement";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(role.isUpdateable())
	{
	List<Department> departmentList = Department.getAllDepartments();
	Iterator<Department> departmentItr = departmentList.iterator();
	out.print("<table width='100%'>");
	out.print("<caption>List of Departments For Edit</caption>");
	out.print("<th>Ser.No</th>");
	//out.print("<th>Division</th>");
	out.print("<th>Department Code</th>");
	out.print("<th>Department Name</th>");
	out.print("<th>Department Description</th>");
	out.print("<th>Edit</th>");
	int ctr = 1;
	while(departmentItr.hasNext()){
		Department department = departmentItr.next();
		if(ctr % 2 == 0)
	out.print("<tr>");
		else
	out.print("<tr class='bg'>");
	out.print("<td>");
		out.print(ctr);
	out.print("</td>");
	/* out.print("<td>");
		FacultyInstituteSchool fis = FacultyInstituteSchool.getFacultyInstituteSchool(department.getFisId());
		out.print(fis.getFisName());
	out.print("</td>"); */
	out.print("<td>");
		out.print(department.getDepartmentCode());
	out.print("</td>");
	out.print("<td>");
		out.print(department.getDepartmentName());
	out.print("</td>");
	out.print("<td>");
		out.print(department.getDepartmentDescription());
	out.print("</td>");
	out.print("<td>");
%>
				<a href="#.jsp" onclick="showEditFieldsOfDepartment(<%=department.getId()%>);"><img src="design/edit-icon.gif" align="absmiddle" border="0"/></a>
			<%
			out.print("</td>");
		out.print("</tr>");
		ctr++;
	}//end while loop
	out.print("</table>");
	}else{
		out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
	}
%>
<div id="academicUnitEditDiv"></div>