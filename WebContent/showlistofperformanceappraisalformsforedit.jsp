<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<div>
	<table border="1" width="100%">
		<tr style="background:#eee">
			<td>Please select department</td>
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
						}//end while loops
					%>
				</select>
			</td>
		</tr>
	</table>
</div>
<div id="appraisalDetailOfDepartmentDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#slctdepartment').change(function(){
			var departmentId = $(this).val();
			$('#appraisalDetailOfDepartmentDiv').load('showlistofperformanceappraisalsbydepartmentforedit.jsp?departmentId='+departmentId);
		});
	});
</script>