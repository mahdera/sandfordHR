<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<table border="1" width="100%" style="background:#eee">
	<tr>
		<td>Select Department:</td>
		<td>
			<select name="slctdepartment" id="slctdepartment" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<%
					List<Department> departmentList = Department.getAllDepartments();
					Iterator<Department> departmentItr = departmentList.iterator();
					while(departmentItr.hasNext()){
						Department department = departmentItr.next();
						%>
						<option value="<%=department.getId() %>"><%=department.getDepartmentName() %></option>
						<%
					}//end while loop
				%>
			</select>
		</td>
	</tr>
</table>
<div id="departmentEmployeeDetailDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#slctdepartment').change(function(){
			var departmentId = $(this).val();
			if(departmentId != ""){
				$('#departmentEmployeeDetailDiv').load('showlistofattendancedataforedit.jsp?departmentId='+departmentId);
			}
		});
	});//end document.ready function
</script>