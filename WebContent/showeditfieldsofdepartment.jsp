<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	int departmentId = Integer.parseInt(request.getParameter("departmentId"));
	Department department = Department.getDepartment(departmentId);
	FacultyInstituteSchool fis = FacultyInstituteSchool.getFacultyInstituteSchool(department.getFisId());
%>
<form>
<table border="1" width="100%" style="background:#eeeeee">
	<tr>
		<td align="right">Division</td>
		<td>
			<input type="text" name="txteditfisname" id="txteditfisname" value="<%=fis.getFisName() %>" size="70px"/>
			<input type="hidden" name="hiddenfiscode" id="hiddenfiscode" value="<%=fis.getId() %>"/>
		</td>
		<td>
			<select name='slcteditfis' id='slcteditfis' onchange="changeTheFISValues(this.value)">
				<option value='' selected="selected">--Select--</option>
				<%
					List<FacultyInstituteSchool> fisEditList = FacultyInstituteSchool.getAllFacultyInstituteSchools();
									Iterator<FacultyInstituteSchool> fisEditItr = fisEditList.iterator();
									while(fisEditItr.hasNext()){
										FacultyInstituteSchool fisObj = fisEditItr.next();
				%>
						<option value="<%=fisObj.getId() %>" title="<%=fisObj.getFisDescription() %>"><%=fisObj.getFisName() %></option>
						<%
					}//end while loop
				%>
			</select>
		</td>
	</tr>
	<tr>
		<td>Department Code:</td>
		<td><input type="text" name="txteditdepartmentcode" id="txteditdepartmentcode" value="<%=department.getDepartmentCode() %>"/></td> 
		<td></td>
	</tr>
	<tr>
		<td>Department Name:</td>
		<td><input type="text" name="txteditdepartmentname" id="txteditdepartmentname" value="<%=department.getDepartmentName() %>"/></td> 
		<td></td>
	</tr>
	<tr>
		<td>Department Description:</td>
		<td>
			<textarea name="texteditdepartmentdescription" id="texteditdepartmentdescription" cols="70" rows="4"><%=department.getDepartmentDescription() %></textarea>
		</td> 
		<td></td>
	</tr>
	<tr>
		<td colspan="3" align="center">
			<input type="button" value="Update" class="input-submit" onclick="updateDepartment(<%=departmentId %>,document.getElementById('hiddenfiscode').value, document.getElementById('txteditdepartmentcode').value,document.getElementById('txteditdepartmentname').value,
					document.getElementById('texteditdepartmentdescription').value);"/>
			<input type="reset" value="Reset to default value" class="input-submit"/>
		</td>
	</tr>
</table>
</form>