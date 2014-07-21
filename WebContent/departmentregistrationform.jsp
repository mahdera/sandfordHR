<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<fieldset>
		<legend>Register Department</legend>
		<%
			Account account = (Account) session.getAttribute("account");
			String functionalityName = "departmentManagement";
			Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
			Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
			if(role.isWritable()){
		%>
		<form style="background:#eeeeee">
		<table  border='1' width='100%'>
			<tr>
				<td align="right"><font color="red">*</font> Division:</td>
				<td>
					<%
						List<FacultyInstituteSchool> fisList = FacultyInstituteSchool.getAllFacultyInstituteSchools();
												Iterator<FacultyInstituteSchool> fisItr = fisList.iterator();
												out.print("<select name='slctfis' id='slctfis' style='width:70%'>");
													out.print("<option value='' selected='selected'>--Select</option>");
													while(fisItr.hasNext()){
														FacultyInstituteSchool fis = fisItr.next();
					%>
								<option value="<%=fis.getId() %>" title="<%=fis.getFisDescription() %>"><%=fis.getFisName() %></option>
								<%
							}//end while loop
						out.print("</select>");
					%>
				</td>
			</tr>
			<tr>
				<td align="right">Department Code:</td>
				<td>
					<input type="text" name="txtdepartmentcode" id="txtdepartmentcode" />
				</td>
			</tr>	
			<tr>
				<td align="right"><font color="red">*</font> Department Name:</td>
				<td>
					<input type="text" name="txtdepartmentname" id="txtdepartmentname" />
				</td>
			</tr>
			<tr>
				<td align="right">Department Description:</td>
				<td>
					<textarea name="textareadepartmentdescription" id="textareadepartmentdescription" cols="100" rows="4"></textarea>
				</td>
			</tr>		
			<tr>
				<td colspan="2" class="t-right">
					<input type="button" value="Save" onclick="saveDepartment(document.getElementById('slctfis').value,document.getElementById('txtdepartmentcode').value,
							document.getElementById('txtdepartmentname').value,document.getElementById('textareadepartmentdescription').value);" class="input-submit"/>
					<input type="reset" value="Clear" class="input-submit"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<p class="msg info">N.B. Fields indicated with <font color="red">*</font> are required!</p>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<div id="academicUnitSaveDiv"></div>
				</td>
			</tr>
		</table>
		</form>
		<%
			}else{
				out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
			}
		%>		
	</fieldset>