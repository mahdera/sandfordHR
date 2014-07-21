<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	WorksAt worksAt = WorksAt.getWorksAtForEmployee(employeeId);
%>
<select name="slctpromotedfromdepartmentid" id="slctpromotedfromdepartmentid" style="width:100%" disabled="disabled">
	<option value="" selected="selected">--Select--</option>
	<%
		List<Department> departmentFromList = Department.getAllDepartments();
		Iterator<Department> departmentFromItr = departmentFromList.iterator();
		while(departmentFromItr.hasNext()){
			Department dept = departmentFromItr.next();
			if(dept.getId() == worksAt.getDepartmentId()){
			%>
				<option value="<%=dept.getId() %>" selected="selected"><%=dept.getDepartmentName() %></option>
			<%
			}else{
			%>
				<option value="<%=dept.getId() %>"><%=dept.getDepartmentName() %></option>
			<%
			}
		}//end while loop
	%>
</select>