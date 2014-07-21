<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<Employee> internationalEmployeeList = Employee.getAllEmployeesOfCategory("International");
	if(!internationalEmployeeList.isEmpty()){
		Iterator<Employee> internationalEmployeeItr = internationalEmployeeList.iterator();
		%>
		<form>
		<table border="0" width="100%">
			<tr>
				<td>Please Select the Employee:</td>
				<td>
					<select name="slctinternationalemployee" id="slctinternationalemployee" style="width:100%">
						<option value="" selected="selected">--Select--</option>
						<%
							while(internationalEmployeeItr.hasNext()){
								Employee internationalEmployee = internationalEmployeeItr.next();
								String employeeFullName = internationalEmployee.getFirstName()+" "+internationalEmployee.getMiddleName()+" "+internationalEmployee.getLastName();
								%>
								<option value="<%=internationalEmployee.getId() %>"><%=employeeFullName %></option>
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
			var employeeId = $('#slctinternationalemployee').val();
			if(employeeId != ""){
				$('#toWhomItMayConcernDetailDiv').load('showtowhomitmayconcernreportforinternationalemployee.jsp?employeeId='+employeeId);
			}
		});
	});//end document.ready function
</script>