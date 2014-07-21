<%@page import="com.empadmin.server.classes.*"%>
<%
	int leaveTypeId = Integer.parseInt(request.getParameter("leaveTypeId"));
	LeaveType.delete(leaveTypeId);
%>
Leave type deleted successfully!