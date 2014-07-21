<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	int fisId = Integer.parseInt(request.getParameter("fisId"));	
	FacultyInstituteSchool fis = FacultyInstituteSchool.getFacultyInstituteSchool(fisId);
%>
<form>
<table border="1" width="100%" style="background:#eeeeee">
	<tr>
		<td align="right">Division Code</td>
		<td>
			<input type="text" name="txteditfiscode" id="txteditfiscode" value="<%=fis.getFisCode() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td align="right">Division Name</td>
		<td>
			<input type="text" name="txteditfisname" id="txteditfisname" value="<%=fis.getFisName() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td align="right">Division Description</td>
		<td>
			<textarea name="textareaeditfisdescription" id="textareaeditfisdescription"	cols="100" rows="4"><%=fis.getFisDescription() %></textarea>		
		</td>
	</tr>
	<tr>
		<td align="right">Organization</td>
		<td>
			<input type="hidden" name="hiddencollegecode" id="hiddencollegecode" value="<%=fis.getCollegeId() %>"/>
			<input type="text" name="txtcollegename" id="txtcollegename" value="<%=College.getCollege(fis.getCollegeId()).getCollegeName() %>"/>
			<select name="slcteditcollege" id="slcteditcollege" onchange="changeCollegeValue(this.value);">
			<option value="" selected="selected">--Select--</option>
			<%
				List<College> collegeList = College.getAllColleges();
					Iterator<College> collegeItr = collegeList.iterator();
					while(collegeItr.hasNext()){
						College college = collegeItr.next();
			%>
					<option value="<%=college.getId() %>"><%=college.getCollegeCode() %>: <%=college.getCollegeName() %></option>
					<%
				}//end while loop
			%>
			</select>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<input type="button" value="Update" class="input-submit" onclick="updateFIS(<%=fisId%>,document.getElementById('txteditfiscode').value, document.getElementById('txteditfisname').value,
			document.getElementById('hiddencollegecode').value,document.getElementById('textareaeditfisdescription').value);"/>
			<input type="reset" value="Reset to default value" class="input-submit"/>
		</td>
	</tr>
</table>
</form>