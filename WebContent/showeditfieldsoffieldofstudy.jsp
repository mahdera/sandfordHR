<%@page import="com.empadmin.server.classes.*" %>
<%
	int fieldOfStudyId = Integer.parseInt(request.getParameter("fieldOfStudy"));
	FieldOfStudy fStudy = FieldOfStudy.getFieldOfStudy(fieldOfStudyId);			
%>
<form>
<table border="1" width="100%" style="background:#eeeeee">
	<tr>
		<td align="right">Employee Type</td>
		<td>
			<input type="text" name="txteditfieldofstudy" id="txteditfieldofstudy" value="<%=fStudy.getFieldOfStudy() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<input type="button" value="Update" class="input-submit" onclick="updateFieldOfStudy(<%=fStudy.getId() %>, document.getElementById('txteditfieldofstudy').value);"/>
			<input type="reset" value="Reset to default value" class="input-submit"/>
		</td>
	</tr>
</table>
</form>