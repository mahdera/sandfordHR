<%@page import="com.empadmin.server.classes.*"%>
<%
	long promotionId = Long.parseLong(request.getParameter("promotionId"));
	Promotion.deletePromotion(promotionId);
%>
<p class="msg done">Promotion Management Deleted Successfully!</p>