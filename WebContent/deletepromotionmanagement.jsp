<%@page import="com.empadmin.server.classes.*"%>
<%
	long promotionId = Long.parseLong(request.getParameter("promotionId"));
	Promotion.delete(promotionId);
%>
Promotion record deleted successfully!