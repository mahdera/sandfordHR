<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	String employeeType = request.getParameter("employeeType");
	List<Employee> employeeList = Employee.getAllEmployeesOfCategory(employeeType);
	Iterator<Employee> employeeItr = employeeList.iterator();
%>
<table border="1" width="100%">
	<tr style="background:#eee;">
		<td width="20%">Select Employee:</td>
		<td>
			<select name="slctemployee" id="slctemployee" style="width:100%">
				<option value="" selected="selected">--Select--</option>
				<%
					while(employeeItr.hasNext()){
						Employee employee = employeeItr.next();
						String fullName = employee.getFirstName()+" "+employee.getMiddleName()+" "+employee.getLastName();
						%>
						<option value="<%=employee.getId() %>"><%=fullName %></option>
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
<div id="employeeProfileReportDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#slctemployee').change(function(){
			var employeeId = $(this).val();
			var employeeType = "<%=employeeType %>";
			if(employeeType == "International"){
				$('#loadingDiv').show();
				$('#employeeProfileReportDiv').load('showinternationalemployeeprofilereport.jsp?employeeId='+employeeId);
			}else if(employeeType == "National"){
				$('#loadingDiv').show();
				$('#employeeProfileReportDiv').load('shownationalemployeeprofilereport.jsp?employeeId='+employeeId);
			}
		});
	});//end document.ready function
</script>