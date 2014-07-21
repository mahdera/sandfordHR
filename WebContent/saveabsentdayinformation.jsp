<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%
	Account account = (Account) session.getAttribute("account");
	int modifiedBy = account.getUserId();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String currentDate = dateFormat.format(cal.getTime());
	Date modificationDate = Date.valueOf(currentDate);
	
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	int year = Integer.parseInt(request.getParameter("year"));
	int month = Integer.parseInt(request.getParameter("month"));
	float numberOfDaysAbsent = Float.parseFloat(request.getParameter("numberOfDaysAbsent"));
	
	AbsentDayInformation absentDayInformation = new AbsentDayInformation(employeeId,year,month,numberOfDaysAbsent,modifiedBy,
			modificationDate);
	absentDayInformation.save();
%>