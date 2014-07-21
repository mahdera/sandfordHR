<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	int fisId = Integer.parseInt(request.getParameter("fisId"));
	List<Department> departmentList = Department.getAllDepartmentsFoundInThisFIS(fisId);
	Iterator<Department> departmentItr = departmentList.iterator();	
%>
<select name="slctdepartment" id="slctdepartment" style="width:100%">
	<option value="0" selected="selected">--Select--</option>
	<%
		while(departmentItr.hasNext()){
			Department department = departmentItr.next();
			%>
			<option value="<%=department.getId() %>"><%=department.getDepartmentName() %></option>
			<%
		}//end while
	%>
</select>