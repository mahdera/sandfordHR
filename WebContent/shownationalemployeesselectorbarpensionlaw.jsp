<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<Employee> nationalEmployeeList = Employee.getAllEmployeesOfCategory("National");
	if(!nationalEmployeeList.isEmpty()){
		Iterator<Employee> nationalEmployeeItr = nationalEmployeeList.iterator();
		%>
		<form>
		<table border="0" width="100%">
			<tr>
				<td>Please Select the Employee:</td>
				<td>
					<select name="slctnationalemployee" id="slctnationalemployee" style="width:100%">
						<option value="" selected="selected">--Select--</option>
						<%
							while(nationalEmployeeItr.hasNext()){
								Employee nationalEmployee = nationalEmployeeItr.next();
								String employeeFullName = nationalEmployee.getFirstName()+" "+nationalEmployee.getMiddleName()+" "+nationalEmployee.getLastName();
								%>
								<option value="<%=nationalEmployee.getId() %>"><%=employeeFullName %></option>
								<%
							}//end while loop
						%>
					</select>
				</td>
				<td>
					<input type="button" value="Show" id="btnshow"/>
					<input type="reset" value="Clear"/>
				</td>
			</tr>
		</table>
		</form>
		<%
	}else{
		%>
			<p class="msg warning">There is/are no international employee record found!</p>
		<%
	}
%>
<div id="toWhomItMayConcernDetailDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btnshow').click(function(){
			var employeeId = $('#slctnationalemployee').val();
			if(employeeId != ""){
				$('#toWhomItMayConcernDetailDiv').load('showtowhomitmayconcernreportforemployeepensionlaw.jsp?employeeId='+employeeId);
			}
		});
	});//end document.ready function
</script>