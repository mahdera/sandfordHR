<%@page import="com.empadmin.server.classes.*" %>
<%
	int collegeId = Integer.parseInt(request.getParameter("collegeId"));
	College college = College.getCollege(collegeId);
%>
<form>
<table border="1" width="100%">
	<tr>
		<td align="right">College Code</td>
		<td>
			<input type="text" name="txteditcollegecode" id="txteditcollegecode" value="<%=college.getCollegeCode() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td align="right">College Name</td>
		<td>
			<input type="text" name="txteditcollegename" id="txteditcollegename" value="<%=college.getCollegeName() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td align="right">College Description</td>
		<td>
			<textarea name="textareaeditdescription" id="textareaeditdescription" cols="100" rows="5"><%=college.getCollegeDescription() %></textarea>			
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="button" value="Update" class="input-submit" onclick="updateCollege(document.getElementById('txteditcollegecode').value, document.getElementById('txteditcollegename').value,
			document.getElementById('textareaeditdescription').value);"/>
			<input type="reset" value="Reset to default value" class="input-submit"/>
		</td>
	</tr>
</table>
</form>