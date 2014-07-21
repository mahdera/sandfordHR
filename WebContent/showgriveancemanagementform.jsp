<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<form style="background:#eeeeee">
	<table border="1" width="100%">
		<tr>
			<td colspan="2"><h2>Griveance Management Form</h2></td>
		</tr>
		<tr>
			<td align="right">Employee:</td>
			<td><select name="slctemployee" id="slctemployee"
				style="width: 100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Employee> employeeList = Employee.getAllEmployees();
						Iterator<Employee> employeeItr = employeeList.iterator();
						while (employeeItr.hasNext()) {
							Employee employee = employeeItr.next();
							String employeeFullName = employee.getFirstName() + " "
									+ employee.getFatherName() + " "
									+ employee.getGrandFatherName();
					%>
					<option value="<%=employee.getId()%>"><%=employeeFullName%></option>
					<%
						}//end while loop
					%>
			</select></td>
		</tr>
		<tr>
			<td align="right">Subject:</td>
			<td><input type="text" name="txtsubject" id="txtsubject" />
			</td>
		</tr>
		<tr>
			<td align="right">Description:</td>
			<td><textarea name="textareadescription"
					id="textareadescription" cols="50" rows="4"></textarea></td>
		</tr>
		<tr>
			<td align="right">Griveance Date:</td>
			<td><input type="text" name="txtgriveancedate" id="txtgriveancedate" />
			<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtgriveancedate')" />
			</td>
		</tr>
		<tr>
			<td></td>
			<td align="right">
				<input type="button" value="Save" class="input-submit" onclick="saveGriveanceManagement(document.getElementById('slctemployee').value,
						document.getElementById('txtsubject').value,document.getElementById('textareadescription').value,document.getElementById('txtgriveancedate').value);"/>
				<input type="reset" value="Clear All" class="input-submit"/>
			</td>
		</tr>
	</table>
	</form>
	<!-- Now comes the tabs section mahder -->
	<div>	
	
			<h3 class="tit">Griveance Management Details Tab</h3> 
 
			<div class="tabs box"> 
				<ul> 
					<li><a href="#.jsp" onclick="showListOfGriveanceManagement();"><span>View Griveance Management</span></a></li> 
					<li><a href="#.jsp" onclick="showListOfGriveanceManagementForEdit();"><span>Edit Griveance Management</span></a></li> 
					<li><a href="#.jsp" onclick="showListOfGriveanceManagementForDelete();"><span>Delete Griveance Management</span></a></li> 
				</ul> 
			</div> 
			
			 
			 
			<div id="tabDetailDiv"> 			
				<p class="msg info">Click on the griveance management details tab for manipulating griveance details</p>			
			</div>			
			<div id="griveanceDetailDiv"></div>
			<div class="fix"></div> 
	</div>
	