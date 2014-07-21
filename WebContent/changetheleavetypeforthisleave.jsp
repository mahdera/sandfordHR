<%@page import="com.empadmin.server.classes.*"%>
<%
	int leaveTypeId = Integer.parseInt(request.getParameter("leaveTypeId"));
	out.print(LeaveType.getLeaveType(leaveTypeId).getLeaveType());
%>