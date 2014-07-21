<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<form style="background:#eeeeee">
	<table border="1" width="100%">
		<tr style="background:#000000;color:#ffffff">
			<td colspan="2">LEAVE MANAGEMNET FORM</td>
		</tr>
		<tr>
			<td align="right">Department/Unit</td>
			<td>
				<select name="" id="" style="width:100%">
					<option value="" selected="selected">--Select--</option>
				</select>
			</td>
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
			<td align="right">Starting From:</td>
			<td><input type="text" name="txtstartingfrom" id="txtstartingfrom" style="width:50%"/>
			<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtstartingfrom')" />
			</td>
		</tr>
		<tr>
			<td align="right">Up to:</td>
			<td><input type="text" name="txtupto" id="txtupto" style="width:50%" />
			<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtupto')" />
			</td>
		</tr>
		<tr>
			<td align="right">Leave Type:</td>
			<td>
				<select name="slctleavetype" id="slctleavetype" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<LeaveType> leaveTypeList = LeaveType.getAllLeaveTypes();
						Iterator<LeaveType> leaveTypeItr = leaveTypeList.iterator();
						while(leaveTypeItr.hasNext()){
							LeaveType leaveType = leaveTypeItr.next();
							%>
							<option value="<%=leaveType.getId() %>"><%=leaveType.getLeaveType() %></option>
							<%
						}//end while loop
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td align="right">Leave From Last Leave Period:</td>
			<td><input type="text" name="txtleavefromlastleaveperiod" id="txtleavefromlastleaveperiod" style="width:90%" />
			</td>
		</tr>
		<tr>
			<td align="right">Number of working days:</td>
			<td><input type="text" name="txtnumberofworkingdays" id="txtnumberofworkingdays" style="width:90%" />
			</td>
		</tr>
		<tr>
			<td align="right">Purpose of leave:</td>
			<td>
				<textarea name="textareapurpose" id="textareapurpose" cols="50" rows="3" style="width:100%"></textarea>
			</td>
		</tr>		
		<tr>
			<td></td>
			<td align="right">
				<input type="button" value="Save" class="input-submit" onclick="saveLeaveManagement(document.getElementById('slctemployee').value,
						document.getElementById('txtstartingfrom').value,document.getElementById('txtupto').value,document.getElementById('slctleavetype').value,
						document.getElementById('txtleavefromlastleaveperiod').value,document.getElementById('txtleavetaken').value,
						document.getElementById('txtleavetaken').value,document.getElementById('txtleavetonextleaveperiod').value);"/>
				<input type="reset" value="Clear All" class="input-submit"/>
			</td>
		</tr>
	</table>
	</form>
	<!-- Now comes the tabs section mahder -->
	<div>	
	
			<h3 class="tit">Leave Management Details Tab</h3> 
 
			<div class="tabs box"> 
				<ul> 
					<li><a href="#.jsp" onclick="showListOfLeaveManagement();"><span>View Leave Management</span></a></li> 
					<li><a href="#.jsp" onclick="showListOfLeaveManagementForEdit();"><span>Edit Leave Management</span></a></li> 
					<li><a href="#.jsp" onclick="showListOfLeaveManagementForDelete();"><span>Delete Leave Management</span></a></li> 
				</ul> 
			</div> 
			
			 
			 
			<div id="tabDetailDiv"> 			
				<p class="msg info">Click on the leave management details tab for manipulating leave management</p>			
			</div>			
			<div id="leaveDetailDiv"></div>
			<div class="fix"></div> 
	</div>
	