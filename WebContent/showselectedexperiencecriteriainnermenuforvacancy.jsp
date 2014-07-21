<%@page import="com.empadmin.server.classes.*"%>
<%
	long vacancyId = Long.parseLong(request.getParameter("vacancyId"));
	//out.print(vacancyId);
%>
<div>
	<table border="0" width="100%">
		<tr style="background:#CCCCCC">
			<td align="center"><a href="#.jsp" onclick="showAddExperienceCriteriaForm(<%=vacancyId%>);"><img src="design/add-icon.gif" border="0" /> <strong>Add Experience Criteria</strong></a></td>
			<td align="center"><a href="#.jsp" onclick="showListOfExperienceCriteria(<%=vacancyId%>);"><img src="design/viewdetail.jpeg" border="0" align="absmiddle"/> <strong>View Experience Criteria</strong></a></td>
			<td align="center"><a href="#.jsp" onclick="showListOfExperienceCriteriaForEdit(<%=vacancyId%>);"><img src="design/edit-icon.gif" border="0" align="absmiddle"/> <strong>Edit Experience Criteria</strong></a></td>
			<td align="center"><a href="#.jsp" onclick="showListOfExperienceCriteriaForDelete(<%=vacancyId%>);"><img src="design/delete.png" border="0" align="absmiddle"/> <strong>Delete Experience Criteria</strong></a></td>			
		</tr>
	</table>
</div>
<div id="expCriteriaDiv"></div>