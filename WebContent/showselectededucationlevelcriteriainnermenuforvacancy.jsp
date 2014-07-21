<%@page import="com.empadmin.server.classes.*"%>
<%
	long vacancyId = Long.parseLong(request.getParameter("vacancyId"));
	//out.print(vacancyId);
%>
<div>
	<table border="0" width="100%">
		<tr style="background:#CCCCCC">
			<td align="center"><a href="#.jsp" onclick="showAddEducationLevelCriteriaForm(<%=vacancyId%>);"><img src="design/add-icon.gif" border="0" /> <strong>Add Education Level Criteria</strong></a></td>
			<td align="center"><a href="#.jsp" onclick="showListOfEducationLevelCriteria(<%=vacancyId%>);"><img src="design/viewdetail.jpeg" border="0" align="absmiddle"/> <strong>View Education Level Criteria</strong></a></td>
			<td align="center"><a href="#.jsp" onclick="showListOfEducationLevelCriteriaForEdit(<%=vacancyId%>);"><img src="design/edit-icon.gif" border="0" align="absmiddle"/> <strong>Edit Education Level Criteria</strong></a></td>
			<td align="center"><a href="#.jsp" onclick="showListOfEducationLevelCriteriaForDelete(<%=vacancyId%>);"><img src="design/delete.png" border="0" align="absmiddle"/> <strong>Delete Education Level Criteria</strong></a></td>			
		</tr>
	</table>
</div>
<div id="eduLevelCriteriaDiv"></div>