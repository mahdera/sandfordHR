<%@page import="com.empadmin.server.classes.*"%>
<%
	long attendanceId = Long.parseLong(request.getParameter("attendanceId"));
	Attendance.delete(attendanceId);
	System.out.println("inside delete attendance record "+attendanceId);
%>
<p class="msg done">Attendance record deleted successfully!</p>