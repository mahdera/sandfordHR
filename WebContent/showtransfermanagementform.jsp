<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<form style="background:#eeeeee">
	<table border="1" width="100%">
		<tr>
			<td colspan="2"><h2>Transfer Management Form</h2></td>
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
			<td align="right">Transfered From Division:</td>
			<td>
				<input type="text" name="txtpromotedfromdivision" id="txtpromotedfromdivision" />
				<select name="slctpromotedfromdivisionid" id="slctpromotedfromdivisionid" onchange="showFromDivision(this.value);">
					<option value="" selected="selected">--Select--</option>
					<%
						List<FacultyInstituteSchool> facultyList = FacultyInstituteSchool.getAllFacultyInstituteSchools();
						Iterator<FacultyInstituteSchool> facultyItr = facultyList.iterator();
						while(facultyItr.hasNext()){
							FacultyInstituteSchool fac = facultyItr.next();
							%>
							<option value="<%=fac.getId() %>"><%=fac.getFisName() %></option>
							<%
						}//end while loop
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td align="right">Transfered To Division:</td>
			<td>
				<input type="text" name="txtpromotedtodivision" id="txtpromotedtodivision" />
				<select name="slctpromotedtodivisionid" id="slctpromotedtodivisionid" onchange="showToDivision(this.value);">
					<option value="" selected="selected">--Select--</option>
					<%
					List<FacultyInstituteSchool> facultyToList = FacultyInstituteSchool.getAllFacultyInstituteSchools();
					Iterator<FacultyInstituteSchool> facultyToItr = facultyToList.iterator();
					while(facultyToItr.hasNext()){
						FacultyInstituteSchool fac = facultyToItr.next();
						%>
						<option value="<%=fac.getId() %>"><%=fac.getFisName() %></option>
						<%
					}//end while loop
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td align="right">Transfered From Department:</td>
			<td>
				<input type="text" name="txtpromotedfromdepartment" id="txtpromotedfromdepartment"/>
				<select name="slctpromotedfromdepartmentid" id="slctpromotedfromdepartmentid" onchange="showFromDepartment(this.value);">
					<option value="" selected="selected">--Select--</option>
					<%
					List<Department> departmentFromList = Department.getAllDepartments();
					Iterator<Department> departmentFromItr = departmentFromList.iterator();
					while(departmentFromItr.hasNext()){
						Department dept = departmentFromItr.next();
						%>
						<option value="<%=dept.getId() %>"><%=dept.getDepartmentName() %></option>
						<%
					}//end while loop
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td align="right">Transfered To Department:</td>
			<td>
				<input type="text" name="txtpromotedtodepartment" id="txtpromotedtodepartment"/>
				<select name="slctpromotedtodepartmentid" id="slctpromotedtodepartmentid" onchange="showToDepartment(this.value);">
					<option value="" selected="selected">--Select--</option>
					<%
					List<Department> departmentToList = Department.getAllDepartments();
					Iterator<Department> departmentToItr = departmentToList.iterator();
					while(departmentToItr.hasNext()){
						Department dept = departmentToItr.next();
						%>
						<option value="<%=dept.getId() %>"><%=dept.getDepartmentName() %></option>
						<%
					}//end while loop
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td align="right">Transfer Detail:</td>
			<td><textarea name="textareapromotiondetail"
					id="textareapromotiondetail" cols="50" rows="4"></textarea></td>
		</tr>
		<tr>
			<td align="right">Transfer Date:</td>
			<td><input type="text" name="txtpromotiondate" id="txtpromotiondate" />
			<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtpromotiondate')" />
			</td>
		</tr>		
		<tr>
			<td></td>
			<td align="right">
				<input type="button" value="Save" class="input-submit" onclick="saveTransferManagement(document.getElementById('slctemployee').value,
						document.getElementById('slctpromotedfromdivisionid').value,document.getElementById('slctpromotedtodivisionid').value,document.getElementById('slctpromotedfromdepartmentid').value,
						document.getElementById('slctpromotedtodepartmentid').value,document.getElementById('textareapromotiondetail').value,
						document.getElementById('txtpromotiondate').value);"/>
				<input type="reset" value="Clear All" class="input-submit"/>
			</td>
		</tr>
	</table>
	</form>
	<!-- Now comes the tabs section mahder -->
	<div>	
	
			<h3 class="tit">Promotion Management Details Tab</h3> 
 
			<div class="tabs box"> 
				<ul> 
					<li><a href="#.jsp" onclick="showListOfTransferManagement();"><span>View Transfer Management</span></a></li> 
					<li><a href="#.jsp" onclick="showListOfTransferManagementForEdit();"><span>Edit Transfer Management</span></a></li> 
					<li><a href="#.jsp" onclick="showListOfTransferManagementForDelete();"><span>Delete Transfer Management</span></a></li> 
				</ul> 
			</div> 
			
			 
			 
			<div id="tabDetailDiv"> 			
				<p class="msg info">Click on the transfer management details tab for manipulating transfer management</p>			
			</div>			
			<div id="promotionDetailDiv"></div>
			<div class="fix"></div> 
	</div>
	