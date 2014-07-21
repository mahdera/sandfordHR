<%@page import="com.empadmin.server.classes.*" %>
<div id="leftMenuDiv">
	<%
		int langId = Integer.parseInt(session.getAttribute("langId").toString());
	%>
	<ul class="box">	
		<li><a href="#" onclick="performThisFunction('manageAdminFields');"><img src="images/admin.jpg" align="absmiddle"/> <strong>	<label id="">Fields</label></strong></a></li>
		<li><a href="#" onclick="performThisFunction('fisManagement');"><img src="images/division.jpg" align="absmiddle"/> <strong><label id="lbldivision">Division</label></strong></a></li>
		<li><a href="#" onclick="performThisFunction('departmentManagement');"><img src="images/dept.jpg" align="absmiddle"/> <strong>	<label id="lbldepartment">Unit</label></strong></a></li>
		<li><a href="#" onclick="performThisFunction('employeeManagement');"><img src="images/employee.jpg" align="absmiddle"/> <strong><label id="lblemployee">Employee</label></strong></a></li>
		<li><a href="#" onclick="performThisFunction('attendanceManagement');"><img src="design/attendance.jpeg" align="absmiddle"/> <strong><label id="lblemployee">Attendance</label></strong></a></li>
		<li><a href="#" onclick="performThisFunction('accountManagement');"><img src="images/account.jpg" align="absmiddle"/> <strong><label id="lblmanageaccount">Account</label></strong></a></li>
		<li><a href="#" onclick="performThisFunction('hrModuleManagement');"><img src="images/module.jpg" align="absmiddle"/> <strong><label id="lblhrmodule">HR Modules</label></strong></a></li>		
		<li><a href="#" onclick="performThisFunction('roleManagement');"><img src="images/role.jpg" align="absmiddle"/> <strong><label id="">Role</label></strong></a></li>
		<li><a href="#" onclick="performThisFunction('userManagement');"><img src="images/user.jpg" align="absmiddle"/> <strong><label id="lbluser">User</label></strong></a></li>
		<li><a href="#" onclick="performThisFunction('viewReport');"><img src="images/report.jpg" align="absmiddle"/> <strong><label id="lblreports">Reports</label></strong></a></li>
		<li><a href="#" onclick="performThisFunction('vacancyManagement');"><img src="design/vacancy.ico" align="absmiddle"/> <strong><label id="lblreports">Vacancy</label></strong></a></li>
		<li><a href="#" onclick="performThisFunction('recruitmentRequestForm');"><img src="design/recriutment.png" align="absmiddle"/> <strong><label id="lbldocuments">Recruitment</label></strong></a></li>
		<li><a href="#" onclick="performThisFunction('userManagement');"><img src="images/help.jpg" align="absmiddle"/> <strong><label id="lblhelp">Help</label></strong></a></li>		
		<li><a href="#" onclick="performThisFunction('permitManagement');"><img src="design/permit.gif" align="absmiddle"/> <strong><label id="lblsystemlanguage">Permit</label></strong></a></li>
		<li><a href="#" onclick="performThisFunction('formsManagement');"><img src="design/form.png" align="absmiddle"/> <strong><label id="lblsystemlanguage">Form</label></strong></a></li>		
	</ul>
</div>

