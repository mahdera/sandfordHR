<%@page import="com.empadmin.server.classes.*"%>
<%
	long vacancyId = Long.parseLong(request.getParameter("vacancyId"));
	//out.print(vacancyId);
%>
<div>
	<table border="0" width="100%">
		<tr style="background:#CCCCCC">
			<td align="center"><a href="#.jsp" onclick="showAddFieldOfStudyCriteriaForm(<%=vacancyId%>);"><img src="design/add-icon.gif" border="0" /> <strong>Add Field of Study Criteria</strong></a></td>
			<td align="center"><a href="#.jsp" onclick="showListOfFieldOfStudyCriteria(<%=vacancyId%>);"><img src="design/viewdetail.jpeg" border="0" align="absmiddle"/> <strong>View Field of Study Criteria</strong></a></td>
			<td align="center"><a href="#.jsp" onclick="showListOfFieldOfStudyCriteriaForEdit(<%=vacancyId%>);"><img src="design/edit-icon.gif" border="0" align="absmiddle"/> <strong>Edit Field of Study Criteria</strong></a></td>
			<td align="center"><a href="#.jsp" onclick="showListOfFieldOfStudyCriteriaForDelete(<%=vacancyId%>);"><img src="design/delete.png" border="0" align="absmiddle"/> <strong>Delete Field of Study Criteria</strong></a></td>			
		</tr>
	</table>
</div>
<div id="fieldCriteriaDiv"></div>