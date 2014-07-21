<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	long empRecId = Long.parseLong(request.getParameter("employeeRecordId"));
%>
<form style="background:#eeeeee">
<div>
<fieldset>
	<legend>2. New Works At</legend>
	<table border="1" width="100%">
		<tr>
			<td width="10%">2.1. College:<font color="red">* </font> <br />
				<%
					List<College> newCollegeList = College.getAllColleges();
					Iterator<College> newCollegeItr = newCollegeList.iterator();
					out.print("<select name='slctnewcollege' id='slctnewcollege' onchange='populateNewFISDropdownWithCollege(this.value);' style='width:100%'>");
					out.print("<option value='0' selected='selected'>--Select--</option>");
					while (newCollegeItr.hasNext()) {
						College c = newCollegeItr.next();
				%>
				<option value="<%=c.getId()%>"><%=c.getCollegeName()%></option> <%
 	}//end while loop
 	out.print("</select>");
 %>
			</td>
			<td width="10%">2.2. Faculty/Institute/School:<br />
				<div id="fisNewDiv">
					<select name="slctnewfis" id="slctnewfis" style="width: 100%">
						<option value="0" selected="selected">--Select--</option>
					</select>
				</div></td>
			<td width="10%">2.3. Department:<br />
				<div id="departmentNewDiv">
					<select name="slctnewdepartment" id="slctnewdepartment"
						style="width: 100%">
						<option value="0" selected="selected">--Select--</option>
					</select>
				</div></td>
		</tr>
		<tr>
			<td colspan="3" align="right">
				<input type="button" value="Add" class="input-submit"
				onclick="saveWorksAt(<%=empRecId%>,document.getElementById('slctnewcollege').value,
				document.getElementById('slctnewfis').value,document.getElementById('slctnewdepartment').value);"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
	</table>
</fieldset>
</div>
</form>