<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div>
	<form>
	<table border="0" width="100%">
		<tr>
			<td width="20%">
				<h5>Please select the college:</h5>
			</td>
			<td width="50%">
				<%
					List<College> collegeList = College.getAllColleges();
					Iterator<College> collegeItr = collegeList.iterator();
					out.print("<select name='slctcollege' id='slctcollege' style='width:100%'>");
						out.print("<option value='' selected='selected'>--Select--</option>");
						while(collegeItr.hasNext()){
							College c = collegeItr.next();
							%>
							<option value="<%=c.getId() %>"><%=c.getCollegeName() %></option>
							<%
						}//end while loop
					out.print("</select>");
				%>
			</td>
			<td>
				<input type="button" value="Go" onclick="showReportForAllEmployeesOfThisCollege(document.getElementById('slctcollege').value);"/>
				<input type="reset" value="Clear"/>
			</td>
		</tr>
	</table>
	</form>
</div>