<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div>
	<form>
	<table border="0" width="100%">
		<tr>
			<td width="20%">
				<h5>Select the education level:</h5>
			</td>
			<td width="60%">
				<%
				List<EducationLevel> educationLevelList = EducationLevel.getAllEducationLevels();
				Iterator<EducationLevel> educationLevelItr = educationLevelList.iterator();
				out.print("<select name='slcteducationlevel' id='slcteducationlevel' style='width:100%'>");
					out.print("<option value=''>--Select--</option>");
					while(educationLevelItr.hasNext()){
						EducationLevel eduLevel = educationLevelItr.next();
						%>
						<option value="<%=eduLevel.getId() %>"><%=eduLevel.getEducationLevel() %></option>
						<%
					}//end class
				out.print("</select>");
				%>
			</td>
			<td>
				<input type="button" value="go" onclick="showEmployeesWithThisEducationLevel(document.getElementById('slcteducationlevel').value);"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
	</form>
</div>