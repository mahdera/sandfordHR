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
	
	long absentDayInformationId = Long.parseLong(request.getParameter("absentDayInformationId"));
	int year = Integer.parseInt(request.getParameter("year"));
	int month = Integer.parseInt(request.getParameter("month"));
	int numberOfAbsentDays = Integer.parseInt(request.getParameter("numberOfAbsentDays"));
	
	AbsentDayInformation absentDayInformation = AbsentDayInformation.getAbsentDayInformation(absentDayInformationId);
	absentDayInformation.setYear(year);
	absentDayInformation.setMonth(month);
	absentDayInformation.setNumberOfDaysToBeDeducted(numberOfAbsentDays);
	absentDayInformation.setModifiedBy(modifiedBy);
	absentDayInformation.setModificationDate(modificationDate);
	AbsentDayInformation.update(absentDayInformation);
%>