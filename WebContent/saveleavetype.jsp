<%@page import="com.empadmin.server.classes.*"%>
<%
	String abbr = request.getParameter("abbr");
	String leaveTypeName = request.getParameter("leaveTypeName");
	String description = request.getParameter("description");
	
	LeaveType leaveType = new LeaveType(abbr,leaveTypeName,description);
	leaveType.save();
%>
Leave Type Saved Successfully!