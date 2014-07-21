<%@page import="com.empadmin.server.classes.*"%>
<%
	long leaveId = Long.parseLong(request.getParameter("leaveId"));
	LeaveRequest.deleteLeave(leaveId);
%>
<p class="msg done">Leave Management Deleted Successfully!</p>