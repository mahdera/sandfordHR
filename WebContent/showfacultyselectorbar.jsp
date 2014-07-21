<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div>
	<form>
	<table border="0" width="100%">
		<tr>
			<td width="20%">
				<h5>Please select the Faculty/Institute/School:</h5>
			</td>
			<td width="50%">
				<%
					List<FacultyInstituteSchool> fisList = FacultyInstituteSchool.getAllFacultyInstituteSchools();
					Iterator<FacultyInstituteSchool> fisItr = fisList.iterator();
					out.print("<select name='slctfis' id='slctfis' style='width:100%'>");
						out.print("<option value='' selected='selected'>--Select--</option>");
						while(fisItr.hasNext()){
							FacultyInstituteSchool fis = fisItr.next();
							%>
							<option value="<%=fis.getId() %>"><%=fis.getFisName() %></option>
							<%
						}//end while loop
					out.print("</select>");
				%>
			</td>
			<td>
				<input type="button" value="Go" onclick="showReportForAllEmployeesOfThisFIS(document.getElementById('slctfis').value);"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
	</form>
</div>