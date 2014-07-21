<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	List<Promotion> promotionManagementList = Promotion.getAllPromotionForThisEmployee(employeeId);
	Iterator<Promotion> promotionManagementItr = promotionManagementList.iterator();
%>
<table border="1" width="100%">
	<tr>
		<th>Promoted From Division</th>
		<th>Promoted To Division</th>
		<th>Promoted From Department</th>
		<th>Promoted To Department</th>
		<th>Promotion Detail</th>
		<th>Promotion Date</th>
	</tr>
	<%
	while(promotionManagementItr.hasNext()){
		Promotion promotion = promotionManagementItr.next();
		%>
		<tr>
			<td><%=FacultyInstituteSchool.getFacultyInstituteSchool(promotion.getPromotedFromDivisionId()).getFisName() %></td>
			<td><%=FacultyInstituteSchool.getFacultyInstituteSchool(promotion.getPromotedToDivisionId()).getFisName() %></td>
			<td><%=Department.getDepartment(promotion.getPromotedFromDepartmentId()).getDepartmentName() %></td>
			<td><%=Department.getDepartment(promotion.getPromotedToDepartmentId()).getDepartmentName() %></td>
			<td><%=promotion.getPromotionDetail() %></td>
			<td><%=promotion.getPromotionDate() %></td>
		</tr>
		<%
	}
	%>
</table>
