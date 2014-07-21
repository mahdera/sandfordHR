<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<form style="background:#eeeeee">
	<table border="1" width="100%">
		<tr>
			<td colspan="2"><h2>Benefit Management Form</h2></td>
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
			<td align="right">Benefit Name:</td>
			<td><input type="text" name="txtbenefitname" id="txtbenefitname" />
			</td>
		</tr>
		<tr>
			<td align="right">Benefit Date:</td>
			<td><input type="text" name="txtbenefitdate" id="txtbenefitdate" />
			<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtbenefitdate')" />
			</td>
		</tr>
		<tr>
			<td align="right">Description:</td>
			<td><textarea name="textareadescription"
					id="textareadescription" cols="50" rows="4"></textarea></td>
		</tr>
		<tr>
			<td></td>
			<td align="right">
				<input type="button" value="Save" class="input-submit" onclick="saveBenefitsManagement(document.getElementById('slctemployee').value,
						document.getElementById('txtbenefitname').value,document.getElementById('txtbenefitdate').value,document.getElementById('textareadescription').value);"/>
				<input type="reset" value="Clear All" class="input-submit"/>
			</td>
		</tr>
	</table>
	</form>
	<!-- Now comes the tabs section mahder -->
	<div>	
	
			<h3 class="tit">Benefit Management Details Tab</h3> 
 
			<div class="tabs box"> 
				<ul> 
					<li><a href="#.jsp" onclick="showListOfBenefitManagement();"><span>View Benefit Management</span></a></li> 
					<li><a href="#.jsp" onclick="showListOfBenefitManagementForEdit();"><span>Edit Benefit Management</span></a></li> 
					<li><a href="#.jsp" onclick="showListOfBenefitManagementForDelete();"><span>Delete Benefit Management</span></a></li> 
				</ul> 
			</div> 
			
			 
			 
			<div id="tabDetailDiv"> 			
				<p class="msg info">Click on the benefit management details tab for manipulating benefit management</p>			
			</div>			
			<div id="benefitsDetailDiv"></div>
			<div class="fix"></div> 
	</div>
	