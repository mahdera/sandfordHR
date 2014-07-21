<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<table border="1" width="100%">
	<tr>
		<td>Please Select Employee:</td>
		<td>
			<select name="slctemployee" id="slctemployee" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<%
					List<Employee> employeeList = Employee.getAllEmployees();
					Iterator<Employee> employeeItr = employeeList.iterator();
					while(employeeItr.hasNext()){
						Employee employee = employeeItr.next();
						String fullName = employee.getFirstName()+" "+employee.getMiddleName()+" "+employee.getLastName();
						%>
							<option value="<%=employee.getId()%>"><%=fullName %></option>
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
<div id="performanceEvaluationReportDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#slctemployee').change(function(){
			var employeeId = $(this).val();
			$('#loadingDiv').show();
			$('#performanceEvaluationReportDiv').load('showallperformanceevaluationsofthisemployee.jsp?employeeId='+employeeId);
		});
	});//end document.ready function
</script>