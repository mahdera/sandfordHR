<%@page import="com.empadmin.server.classes.*"%>
<%
	long promotionId = Long.parseLong(request.getParameter("promotionId"));
	//Promotion.deletePromotion(promotionId);
	Transfer.deleteTransfer(promotionId);
%>
<p class="msg done">Transfer Management Deleted Successfully!</p>