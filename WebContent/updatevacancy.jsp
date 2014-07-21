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
	
	long vacancyId = Long.parseLong(request.getParameter("vacancyId"));
	String jobTitle = request.getParameter("jobTitle");
	String vacancyName = request.getParameter("vacancyName");
	String location = request.getParameter("location");
	String subUnit = request.getParameter("subUnit");
	String hiringManager = request.getParameter("hiringManager");	
	String numberOfPositions = request.getParameter("numberOfPositions");
	String description = request.getParameter("description");
	//now fetch a Vacancy object...set its values and update the database values...
	Vacancy vacancy = Vacancy.getVacancy(vacancyId);
	vacancy.setJobTitle(jobTitle);
	vacancy.setName(vacancyName);
	vacancy.setLocation(location);
	vacancy.setSubUnit(subUnit);
	vacancy.setHiringManager(hiringManager);
	vacancy.setNumberOfPositions(numberOfPositions);
	vacancy.setDescription(description);
	vacancy.setModifiedBy(modifiedBy);
	vacancy.setModificationDate(modificationDate);
	Vacancy.update(vacancy);
%>
<p class="msg done">Vacancy updated successfully!</p>