<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long worksAtId = Long.parseLong(request.getParameter("worksAtId"));
	WorksAt worksAtFetch = WorksAt.getWorksAt(worksAtId);
%>
<form>
<div>
	<fieldset>
		<legend>Edit Works At</legend>
		<table border="1" width="100%">
			<tr>
				<td width="10%">2.1. College:<font color="red">* </font> <br />
				<input type="text" name="txteditcollegeworksat" id="txteditcollegeworksat" value="<%=College.getCollege(worksAtFetch.getCollegeId()).getCollegeName() %>" size="30"/>
				<input type="hidden" name="hiddeneditcollegeworksat" id="hiddeneditcollegeworksat" value="<%=worksAtFetch.getCollegeId()%>" size="30"/>
					<%
						List<College> editCollegeList = College.getAllColleges();
						Iterator<College> editCollegeItr = editCollegeList.iterator();
						out.print("<select name='slcteditcollege' id='slcteditcollege' onchange='populateEditFISDropdownWithCollege(this.value)' style='width:100%'>");
						out.print("<option value='0' selected='selected'>--Select--</option>");
						while (editCollegeItr.hasNext()) {
							College editC = editCollegeItr.next();
					%>
					<option value="<%=editC.getId()%>"><%=editC.getCollegeName()%></option> <%
 	}//end while loop
 	out.print("</select>");
 %>
				</td>
				<td width="10%">2.2. Faculty/Institute/School:<br />
					<%
					if(worksAtFetch.getFisId() != 0){
					%>
					<input type="text" name="txteditfacultyworksat" id="txteditfacultyworksat" value="<%=FacultyInstituteSchool.getFacultyInstituteSchool(worksAtFetch.getFisId()).getFisName() %>" size="30"/>
					<input type="hidden" name="hiddeneditfacultyworksat" id="hiddeneditfacultyworksat" value="<%=worksAtFetch.getFisId() %>"/>
					<%
					}else{
					%>
					<input type="text" name="txteditfacultyworksat" id="txteditfacultyworksat" value="---" size="30"/>
					<input type="hidden" name="hiddeneditfacultyworksat" id="hiddeneditfacultyworksat" value="0"/>
					<%
					}
					%>
					<div id="fisEditDiv">
						<select name="slcteditfis" id="slcteditfis" style="width: 100%">
							<option value="0" selected="selected">--Select--</option>
						</select>
					</div></td>
				<td width="10%">2.3. Department:<br />
					<%
					if(worksAtFetch.getDepartmentId() != 0){
					%>
					<input type="text" name="txteditdepartmentworksat" id="txteditdepartmentworksat" value="<%=Department.getDepartment(worksAtFetch.getDepartmentId()).getDepartmentName() %>" size="30"/>
					<input type="hidden" name="hiddeneditdepartmentworksat" id="hiddeneditdepartmentworksat" value="<%=worksAtFetch.getDepartmentId() %>"/>
					<%
					}else{
					%>
					<input type="text" name="txteditdepartmentworksat" id="txteditdepartmentworksat" value="---" size="30"/>
					<input type="hidden" name="hiddeneditdepartmentworksat" id="hiddeneditdepartmentworksat" value="0"/>
					<%
					}
					%>
					<div id="departmentEditDiv">
						<select name="slcteditdepartment" id="slcteditdepartment"
							style="width: 100%">
							<option value="0" selected="selected">--Select--</option>
						</select>
					</div></td>
			</tr>
			<tr>
				<td colspan="3" align="right">
					<input type="button" value="Update Works At" class="input-submit"
					onclick="updateWorksAt(<%=worksAtId%>,document.getElementById('slcteditcollege').value,document.getElementById('slcteditfis').value,
					document.getElementById('slcteditdepartment').value);"/>
					<input type="reset" value="Clear All" class="input-submit"/>
				</td>
			</tr>
		</table>
	</fieldset>
</div>
</form>