<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div>
	<form>
	<table border="0" width="100%">
		<tr>
			<td width="20%">
				<h5>Select the budget center:</h5>
			</td>
			<td width="60%">
				<%
				List<FacultyInstituteSchool> fisList = FacultyInstituteSchool.getAllFacultyInstituteSchools();
				Iterator<FacultyInstituteSchool> fisItr = fisList.iterator();
				out.print("<select name='slctfis' id='slctfis' style='width:100%'>");
					out.print("<option value=''>--Select--</option>");
					while(fisItr.hasNext()){
						FacultyInstituteSchool fis = fisItr.next();
						%>
						<option value="<%=fis.getId() %>"><%=fis.getFisName() %></option>
						<%
					}//end class
				out.print("</select>");
				%>
			</td>
			<td>
				<input type="button" value="go" onclick="showEmployeesFromThisBudgetCenter(document.getElementById('slctfis').value);"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
	</form>
</div>