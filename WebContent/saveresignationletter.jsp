<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date" %>
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
	Date letterDate = Date.valueOf(request.getParameter("letterDate"));
	String description = request.getParameter("description");
	//now save the info to the database...
	ResignationLetter resignationLetter = new ResignationLetter(employeeId,letterDate,
			description,modifiedBy,modificationDate);
	resignationLetter.save();
%>
Resignation Letter Saved Successfully!