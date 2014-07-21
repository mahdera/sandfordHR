<%@page import="com.empadmin.server.classes.*"%>
<%
	long attDetailId = Long.parseLong(request.getParameter("attDetailId"));
	Attendance.deleteAttendanceDetail(attDetailId);
%>
<p class="msg done">Attendance detail deleted successfully! Click on 'Show Attendance Sheet' to refresh the list!</p>