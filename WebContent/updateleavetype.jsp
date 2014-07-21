<%@page import="com.empadmin.server.classes.*"%>
<%
	String abbr = request.getParameter("abbr");
	String leaveTypeName = request.getParameter("leaveTypeName");
	String description = request.getParameter("description");
	int leaveTypeId = Integer.parseInt(request.getParameter("leaveTypeId"));
	
	LeaveType leaveType = LeaveType.getLeaveType(leaveTypeId);
	leaveType.setLeaveTypeAbbrivation(abbr);
	leaveType.setLeaveTypeName(leaveTypeName);
	leaveType.setDescription(description);
	LeaveType.update(leaveType);
%>
<p class='msg done'>Leave type updated successfully!</p>