<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.sql.Timestamp" %>
<%
	Account account = (Account) session.getAttribute("account");
	int modifiedBy = account.getUserId();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String currentDate = dateFormat.format(cal.getTime());
	Date modificationDate = Date.valueOf(currentDate);

	String punchIn = request.getParameter("punchIn");
	String punchInNote = request.getParameter("punchInNote");
	String punchOut = request.getParameter("punchOut");
	String punchOutNote = request.getParameter("punchOutNote");
	String totalHour = request.getParameter("totalHour");
	long attendanceId = Long.parseLong(request.getParameter("attendanceId"));
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	java.util.Date utilDatePunchIn = sdf.parse(request.getParameter("punchIn"));
	java.util.Date utilDatePunchTo = sdf.parse(request.getParameter("punchOut"));
	Timestamp punchInTimestamp = new Timestamp(utilDatePunchIn.getTime());
	Timestamp punchOutTimestamp = new Timestamp(utilDatePunchTo.getTime());
	//fetch the obj and set the values....next update the value in the database...
	Attendance attendance = Attendance.getAttendance(attendanceId);
	attendance.setPunchIn(punchInTimestamp);
	attendance.setPunchInNote(punchInNote);
	attendance.setPunchOut(punchOutTimestamp);
	attendance.setPunchOutNote(punchOutNote);
	attendance.setModifiedBy(modifiedBy);
	attendance.setModificationDate(modificationDate);
	attendance.setTotalHour(totalHour);
	Attendance.update(attendance);
%>
<p class="msg done">Attendance information updated successfully!</p>