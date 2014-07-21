<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	List<Transfer> promotionManagementList = Transfer.getAlltransferForThisEmployee(employeeId);
	Iterator<Transfer> promotionManagementItr = promotionManagementList.iterator();
%>
<table border="1" width="100%">
	<tr>
		<th>Transfered From Division</th>
		<th>Transfered To Division</th>
		<th>Transfered From Department</th>
		<th>Transfered To Department</th>
		<th>Transfer Detail</th>
		<th>Transfer Date</th>
		<th>Edit</th>
	</tr>
	<%
	while(promotionManagementItr.hasNext()){
		Transfer promotion = promotionManagementItr.next();
		%>
		<tr>
			<td><%=FacultyInstituteSchool.getFacultyInstituteSchool(promotion.getTransferedFromDivisionId()).getFisName() %></td>
			<td><%=FacultyInstituteSchool.getFacultyInstituteSchool(promotion.getTransferedToDivisionId()).getFisName() %></td>
			<td><%=Department.getDepartment(promotion.getTransferedFromDepartmentId()).getDepartmentName() %></td>
			<td><%=Department.getDepartment(promotion.getTransferedToDepartmentId()).getDepartmentName() %></td>
			<td><%=promotion.getTransferDetail() %></td>
			<td><%=promotion.getTransferDate() %></td>
			<td>
				<a href="#.jsp" onclick="showEditFieldsOfTransfer(<%=promotion.getId() %>);"><img src="design/edit-icon.gif" align="absmiddle" border="0"/></a>
			</td>
		</tr>
		<%
	}
	%>
</table>
<div id="promotionManagementEditDiv"></div>
