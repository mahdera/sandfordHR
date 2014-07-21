<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%
	long attendanceDetailId = Long.parseLong(request.getParameter("attendanceDetailId"));
	Date startDate = Date.valueOf(request.getParameter("startDate"));
	Date endDate = Date.valueOf(request.getParameter("endDate"));
	String reason = request.getParameter("reason");
	Attendance.updateAttendanceDetail(attendanceDetailId, startDate, endDate, reason);
%>
<p class="msg done">Attendance detail updated successfully! Click on the show attendance sheet button to refresh the list</p>