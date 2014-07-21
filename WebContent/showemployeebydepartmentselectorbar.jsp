<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<Department> departmentList = Department.getAllDepartments();
	Iterator<Department> departmentItr = departmentList.iterator();
%>
<table border="1" width="100%">
	<tr>
		<td>Please Select Employee:</td>
		<td>
			<select name="slctemployee" id="slctemployee" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<%
					while(departmentItr.hasNext()){
						Department department = departmentItr.next();
						%>
							<option value="<%=department.getId()%>"><%=department.getDepartmentName() %></option>
						<%
					}//end while loop
				%>
			</select>
		</td>
	</tr>
</table>
<div id="loadingDiv" style="display:none">
	<img src="images/loadingfb.gif" alt="Loading..."/>
</div>
<div id="employeeByDepartmentDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#slctemployee').change(function(){
			var departmentId = $(this).val();
			$('#loadingDiv').show();
			$('#employeeByDepartmentDiv').load('showlistofemployeesinadepartment.jsp?departmentId='+departmentId);
		});
	});//end document.ready function
</script>