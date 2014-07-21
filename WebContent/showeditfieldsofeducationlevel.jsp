<%@page import="com.empadmin.server.classes.*" %>
<%
	int educationLevelId = Integer.parseInt(request.getParameter("educationLevelId"));
	EducationLevel educationLevelObj = EducationLevel.getEducationLevel(educationLevelId);	
%>
<form>
<table border="1" width="100%" style="background:#eeeeee">
	<tr>
		<td align="right">Education Level</td>
		<td>
			<input type="text" name="txtediteducationlevel" id="txtediteducationlevel" value="<%=educationLevelObj.getEducationLevel() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<input type="button" value="Update" class="input-submit" onclick="updateEducationLevel(<%=educationLevelObj.getId() %>, document.getElementById('txtediteducationlevel').value);"/>
			<input type="reset" value="Reset to default value" class="input-submit"/>
		</td>
	</tr>
</table>
</form>