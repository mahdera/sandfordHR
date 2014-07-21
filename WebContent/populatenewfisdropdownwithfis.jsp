<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	int fisId = Integer.parseInt(request.getParameter("fisId"));
	List<Department> newDepartmentList = Department.getAllDepartmentsFoundInThisFIS(fisId);
	Iterator<Department> newDepartmentItr = newDepartmentList.iterator();	
%>
<select name="slctnewdepartment" id="slctnewdepartment" style="width:100%">
	<option value="0" selected="selected">--Select--</option>
	<%
		while(newDepartmentItr.hasNext()){
			Department department = newDepartmentItr.next();
			%>
			<option value="<%=department.getId() %>"><%=department.getDepartmentName() %></option>
			<%
		}//end while
	%>
</select>