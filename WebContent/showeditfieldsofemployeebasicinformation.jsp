<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	Employee editEmpObj = Employee.getEmployee(employeeId);
%>
<fieldset>
	<legend>1. Edit Basic Information</legend>
	<table border="1" width="100%">
		<tr>
			<td width="33%">1.1. Name:<br /> <font color="red">* </font><input
				type="text" name="txteditfirstname" id="txteditfirstname" value="<%=editEmpObj.getFirstName() %>"/></td>
			<td width="33%">1.2. Father Name:<br /> <font color="red">*
			</font><input type="text" name="txteditfathername" id="txteditfathername" value="<%=editEmpObj.getFatherName() %>"/></td>
			<td width="33%">1.3. Grand Father Name:<br /> <font color="red">*
			</font><input type="text" name="txteditgrandfathername" id="txteditgrandfathername" value="<%=editEmpObj.getGrandFatherName() %>"/>
			</td>
		</tr>
		<tr>
			<td>								
			1.4. Sex:<br /> <font color="red">* </font>
			<input type="text" name="txteditsex" id="txteditsex" value="<%=editEmpObj.getSex() %>" size="12"/><br/>
			
			<select	name="slctsex" id="slcteditsex" onchange="changeSexValue(this.value);">
					<option value="" selected="selected">--Select--</option>
					<option value="Female">Female</option>
					<option value="Male">Male</option>
			</select></td>
			<td>1.5. Date of Birth:<br /> <font color="red">* </font><input
				type="text" name="txteditdateofbirth" id="txteditdateofbirth" value="<%=editEmpObj.getDateOfBirth() %>"/> <img
				src="sample/images/cal.gif"
				onclick="javascript:NewCssCal('txtdateofbirth')" /></td>
			<td>1.6. Id Number:<br /> <font color="red">* </font><input
				type="text" name="txteditidnumber" id="txteditidnumber" value="<%=editEmpObj.getIdNumber() %>"/></td>
		</tr>
		<tr>
			<td>1.7. Pension Number:<br /> <input type="text"
				name="txteditpensionnumber" id="txteditpensionnumber" value="<%=editEmpObj.getPensionNumber() %>"/></td>
			<td>1.8. Employement Date:<br /> <font color="red">* </font><input
				type="text" name="txteditemployementdate" id="txteditemployementdate" value="<%=editEmpObj.getEmployementDate() %>"/> <img
				src="sample/images/cal.gif"
				onclick="javascript:NewCssCal('txtemployementdate')" /></td>
			<td>			
			1.9. Religion:<br /> <font color="red">* </font>
			<input type="text" name="txteditreligion" id="txteditreligion" value="<%=Religion.getReligion(editEmpObj.getReligionId()).getReligion() %>" size="12"/><br/>
			<input type="hidden" name="hiddenreligionid" id="hiddenreligionid" value="<%=editEmpObj.getReligionId() %>"/> 
			<%
 	List<Religion> religionList = Religion.getAllReligions();
 	Iterator<Religion> religionItr = religionList.iterator();
 	%>
 	<select name="slctreligion" id="slctreligion" onchange="changeReligionValue(this.value);">
 	<%
 	out.print("<option value='' selected='selected'>--Select--</option>");
 	while (religionItr.hasNext()) {
 		Religion r = religionItr.next();
 %>
				<option value="<%=r.getId()%>"><%=r.getReligion()%></option> <%
 	}//end while loop
 	out.print("</select>");
 %>
			</td>
		</tr>
		<tr>
			<td>1.10. Nationality:<br /> <font color="red">* </font> <input
				type="text" name="txteditnationality" id="txteditnationality" value="<%=editEmpObj.getNationality() %>"/></td>
			<td>1.11. Marital Status:<br />
			<input type="text" name="txteditmaritalstatus" id="txteditmaritalstatus" value="<%=MaritalStatus.getMaritalStatus(editEmpObj.getMaritalStatusId()).getMaritalStatus() %>" size="12"/><br/>
			<input type="hidden" name="hiddenmaritalstatusid" id="hiddenmaritalstatusid" value="<%=editEmpObj.getMaritalStatusId() %>"/>
			<font color="red">* </font> <%
 	List<MaritalStatus> mList = MaritalStatus.getAllMaritalStatses();
 	Iterator<MaritalStatus> mItr = mList.iterator();
 	%>
 	<select name="slctmaritalstatus" id="slctmaritalstatus" onchange="changeMaritalStatusValue(this.value);">
 	<%
 	out.print("<option value='' selected='selected'>--Select--</option>");
 	while (mItr.hasNext()) {
 		MaritalStatus r = mItr.next();
 %>
				<option value="<%=r.getId()%>"><%=r.getMaritalStatus()%></option> <%
 	}//end while loop
 	out.print("</select>");
 %>
			</td>
			<td>1.12. Spouse Full Name:<br /> <input type="text"
				name="txteditspousefullname" id="txteditspousefullname" value="<%=editEmpObj.getSpouseFullName() %>"/></td>
		</tr>
		<tr>
			<td>1.13. Basic Salary:<br />
			<font color="red">* </font> <input type="text" name="txteditbasicsalary"
				id="txteditbasicsalary" value="<%=editEmpObj.getBasicSalary() %>"/></td>
			<td>1.14. Employee Type:<br />
			<input type="text" name="txteditemployeetype" id="txteditemployeetype" value="<%=EmployeeType.getEmployeeType(editEmpObj.getEmployeeTypeId()).getEmployeeType() %>" size="12"/><br/>
			<input type="hidden" name="hiddenemployeetypeid" id="hiddenemployeetypeid" value="<%=editEmpObj.getEmployeeTypeId() %>"/>
			<font color="red">* </font> <%
 	List<EmployeeType> eTypeList = EmployeeType.getAllEmployeeTypes();
 	Iterator<EmployeeType> eTypeItr = eTypeList.iterator();
 	%>
 	<select name="slctemployeetype" id="slctemployeetype" onchange="changeEmployeeType(this.value);">
 	<%
 	out.print("<option value='' selected='selected'>--Select--</option>");
 	while (eTypeItr.hasNext()) {
 		EmployeeType r = eTypeItr.next();
 %>
				<option value="<%=r.getId()%>"><%=r.getEmployeeType()%></option> <%
 	}//end while loop
 	out.print("</select>");
 %>
			</td>
			<td>1.15. Employee Position:<br /> <input type="text"
				name="txteditemployeeposition" id="txteditemployeeposition" value="<%=editEmpObj.getEmployeePosition() %>"/></td>
		</tr>
		<tr>
			<td>1.16. Maximum Education Level:<font color="red">* </font><br />
			<input type="text" name="txtediteducationlevel" id="txtediteducationlevel" value="<%=EducationLevel.getEducationLevel(editEmpObj.getEducationLevelId()).getEducationLevel() %>" /><br/>
			<input type="hidden" name="hiddeneducationlevelid" id="hiddeneducationlevelid" value="<%=editEmpObj.getEducationLevelId() %>"/>
			
				<%
					List<EducationLevel> eDList = EducationLevel
							.getAllEducationLevels();
					Iterator<EducationLevel> eDItr = eDList.iterator();
					%>
					<select name="slctfstudy" id="slctfstudy" style="width:100%" onchange="changeMaxEducationLevel(this.value);">
					<%
					out.print("<option value='' selected='selected'>--Select--</option>");
					while (eDItr.hasNext()) {
						EducationLevel fs = eDItr.next();
				%>
				<option value="<%=fs.getId()%>"><%=fs.getEducationLevel()%></option>
				<%
					}//end while loop
					out.print("</select>");
				%>
			</td>
			<td>1.17. Budget Center:<font color="red">* </font> <br />
			<input type="text" name="txteditbudgetcenter" id="txteditbudgetcenter" value="<%=FacultyInstituteSchool.getFacultyInstituteSchool(editEmpObj.getBudgetCenterId()).getFisName()  %>" /><br/>
			<input type="hidden" name="hiddenbudgetcenterid" id="hiddenbudgetcenterid" value="<%=editEmpObj.getBudgetCenterId() %>"/> 
			<%
 	List<FacultyInstituteSchool> slctbudgetcenter = FacultyInstituteSchool
 			.getAllFacultyInstituteSchools();
 	Iterator<FacultyInstituteSchool> budgetCenterItr = slctbudgetcenter
 			.iterator();
 	%>
 	<select name="slctbudgetcenter" id="slctbudgetcenter" style="width:100%" onchange="changeBudgetCenter(this.value);">
 	<%
 	out.print("<option value='' selected='selected'>--Select--</option>");
 	while (budgetCenterItr.hasNext()) {
 		FacultyInstituteSchool b = budgetCenterItr.next();
 %>
				<option value="<%=b.getId()%>"><%=b.getFisName()%></option> <%
 	}//end while loop
 	out.print("</select>");
 %>
			</td>
			<td>1.18. Employement Type:<font color="red">* </font> <br />
			<input type="text" name="txteditemployementtype" id="txteditemployementtype" value="<%=EmployementType.getEmployementType(editEmpObj.getEmployementTypeId()).getEmployementType() %>" /> <br/>
			<input type="hidden" name="hiddenemployementtypeid" id="hiddenemployementtypeid" value="<%=editEmpObj.getEmployementTypeId() %>"/>
			<%
 	List<EmployementType> empTypeList = EmployementType
 			.getAllEmployementTypes();
 	Iterator<EmployementType> empTypeItr = empTypeList.iterator();
 	%>
 	<select name="slctemployementtype" id="slctemployementtype" style="width:100%" onchange="changeEmployementType(this.value);">
 	<%
 	out.print("<option value='' selected='selected'>--Select--</option>");
 	while (empTypeItr.hasNext()) {
 		EmployementType et = empTypeItr.next();
 %>
				<option value="<%=et.getId()%>"><%=et.getEmployementType()%></option>
				<%
					}//end while loop
					out.print("</select>");
				%>
			</td>
		</tr>
		<tr>
			<td colspan="3" align="right">
				<input type="button" value="Update Basic Information" class="input-submit" onclick="updateEmployeeBasicInformation(<%=editEmpObj.getId()%>,
				document.getElementById('txteditfirstname').value,document.getElementById('txteditfathername').value,
				document.getElementById('txteditgrandfathername').value,document.getElementById('txteditsex').value,
				document.getElementById('txteditdateofbirth').value,document.getElementById('txteditidnumber').value,
				document.getElementById('txteditpensionnumber').value,document.getElementById('txteditemployementdate').value,
				document.getElementById('hiddenreligionid').value,document.getElementById('txteditnationality').value,
				document.getElementById('hiddenmaritalstatusid').value,document.getElementById('txteditspousefullname').value,
				document.getElementById('txteditbasicsalary').value,document.getElementById('hiddenemployeetypeid').value,
				document.getElementById('txteditemployeeposition').value,document.getElementById('hiddeneducationlevelid').value,
				document.getElementById('hiddenbudgetcenterid').value,document.getElementById('hiddenemployementtypeid').value);"/>
				<input type="reset" value="Reset to default values" class="input-submit"/>
			</td>
		</tr>
	</table>
</fieldset>