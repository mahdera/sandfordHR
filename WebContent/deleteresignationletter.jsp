<%@page import="com.empadmin.server.classes.*"%>
<%
	long resignationLetterId = Long.parseLong(request.getParameter("resignationLetterId"));
	ResignationLetter.delete(resignationLetterId);
%>
Resignation deleted successfully!