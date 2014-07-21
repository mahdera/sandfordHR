<%@page import="com.empadmin.server.classes.*"%>
<%
	long demotionId = Long.parseLong(request.getParameter("demotionId"));
	Demotion.delete(demotionId);
%>
Demotion record deleted successfully!