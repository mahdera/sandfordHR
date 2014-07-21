<%@page import="java.util.*" %>
<%@page import="com.empadmin.server.classes.*" %>
<form style="background:#eeeeee">
		<div id="errorDiv"></div>
		<table border="0" width="100%">
		<tr style="background:#000000;color:#ffffff">
			<td colspan="2">ATTENDANCE MANAGEMENT FORM</td>
		</tr>
		<tr>			
			<td align="right">
				Please Select an Employee:			
			</td>
			<td>
				<%
					//show all employees ordered by there first and last name for selection
					List<Employee> employeeList = Employee.getAllEmployees();
					Iterator<Employee> employeeItr = employeeList.iterator();
					%>
					<select name="slctemployee" id="slctemployee" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
					while (employeeItr.hasNext()) {
						Employee employee = employeeItr.next();											
					%>
						<option value="<%=employee.getId() %>"><%=employee.getFirstName() %> <%=employee.getFatherName() %> <%=employee.getGrandFatherName() %></option> 
					<%
			 	}//end while loop			 	
 				%>		
 				</select>
			</td>
		</tr>
		<tr>
			<td align="right">Is absent on (Start Date):</td>
			<td>
				<input type="text" name="txtabsentonstartdate" id="txtabsentonstartdate"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtabsentonstartdate')" />
			</td>
		</tr>
		<tr>
			<td align="right">Is absent on (End Date):</td>
			<td>
				<input type="text" name="txtabsentonenddate" id="txtabsentonenddate"/>
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtabsentonenddate')" />
			</td>
		</tr>
		<tr>
			<td align="right">Reason for absence:</td>
			<td>
				<textarea name="textareareasonforabsence" id="textareareasonforabsence" rows="4" cols="50"></textarea>
			</td>
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="button" value="Save" onclick="saveAttendance(document.getElementById('slctemployee').value,
						document.getElementById('txtabsentonstartdate').value,document.getElementById('txtabsentonenddate').value,document.getElementById('textareareasonforabsence').value);"/>
				<input type="reset" value="Clear All"/>
			</td>
		</tr>
		
	</table>
	</form>