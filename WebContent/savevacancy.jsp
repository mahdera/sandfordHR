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
	
	String jobTitle = request.getParameter("jobTitle");
	String vacancyName = request.getParameter("vacancyName");
	String location = request.getParameter("location");
	String subUnit = request.getParameter("subUnit");
	String hiringManager = request.getParameter("hiringManager");
	String numberOfPositions = request.getParameter("numberOfPositions");
	String description = request.getParameter("description");
	
	Vacancy vacancy = new Vacancy(jobTitle,vacancyName,location,subUnit,hiringManager,
			numberOfPositions,description,modifiedBy,modificationDate);
	vacancy.save();
%>
Vacancy saved successfully!