<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%
	long promotionId = Long.parseLong(request.getParameter("promotionId"));
	int promotedFromDivisionId = Integer.parseInt(request.getParameter("promotedFromDivisionId"));
	int promotedToDivisionId = Integer.parseInt(request.getParameter("promotedToDivisionId"));
	int promotedFromDepartmentId = Integer.parseInt(request.getParameter("promotedFromDepartmentId"));
	int promotedToDepartmentId = Integer.parseInt(request.getParameter("promotedToDepartmentId"));
	String promotionDetail = request.getParameter("promotionDetail");
	Date promotionDate = Date.valueOf(request.getParameter("promotionDate"));
	
	
	//Promotion.updatePromotion(promotionId, promotedFromDivisionId, promotedToDivisionId, promotedFromDepartmentId, promotedToDepartmentId, promotionDetail, promotionDate);
	Transfer.updateTransfer(promotionId, promotedFromDivisionId, promotedToDivisionId, promotedFromDepartmentId, promotedToDepartmentId, promotionDetail, promotionDate);
	
%>
<p class="msg done">Transfer Management Updated Successfully!</p>