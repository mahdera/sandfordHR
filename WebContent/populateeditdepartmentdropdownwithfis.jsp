<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	int fisId = Integer.parseInt(request.getParameter("fisId"));
	List<Department> departmentEditList = Department.getAllDepartmentsFoundInThisFIS(fisId);
	Iterator<Department> departmentEditItr = departmentEditList.iterator();	
%>
<select name="slcteditdepartment" id="slcteditdepartment" style="width:100%">
	<option value="0" selected="selected">--Select--</option>
	<%
		while(departmentEditItr.hasNext()){
			Department department = departmentEditItr.next();
			%>
			<option value="<%=department.getId() %>"><%=department.getDepartmentName() %></option>
			<%
		}//end while
	%>
</select>