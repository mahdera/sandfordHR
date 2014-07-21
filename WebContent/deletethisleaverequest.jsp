<%@page import="com.empadmin.server.classes.*"%>
<%
	long leaveRequestId = Long.parseLong(request.getParameter("leaveRequestId"));
	LeaveRequest.delete(leaveRequestId);
%>
<p class="msg done">Leave request record deleted successfully!</p>
