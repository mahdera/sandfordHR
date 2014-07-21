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
	long resignationLetterId = Long.parseLong(request.getParameter("resignationLetterId"));
	ResignationLetter resignationLetter = ResignationLetter.getResignationLetter(resignationLetterId);
	resignationLetter.setEmployeeId(employeeId);
	resignationLetter.setResignationLetterDate(letterDate);
	resignationLetter.setDescription(description);
	resignationLetter.setModifiedBy(modifiedBy);
	resignationLetter.setModificationDate(modificationDate);
	ResignationLetter.update(resignationLetter);
%>
<p class="msg done">Resignation Letter Updated Successfully!</p>