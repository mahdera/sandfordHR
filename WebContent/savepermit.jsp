<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.text.SimpleDateFormat" %>
<%
	Account account = (Account) session.getAttribute("account");
	int modifiedBy = account.getUserId();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String currentDate = dateFormat.format(cal.getTime());
	Date modificationDate = Date.valueOf(currentDate);

	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	String workPermitNumber = request.getParameter("workPermitNumber");
	Date workPermitFrom = Date.valueOf(request.getParameter("workPermitFrom"));
	Date workPermitUpto = Date.valueOf(request.getParameter("workPermitUpto"));
	String residenceIdNumber = request.getParameter("residenceIdNumber");
	Date residencePermitFrom = Date.valueOf(request.getParameter("residencePermitFrom"));
	Date residencePermitUpto = Date.valueOf(request.getParameter("residencePermitUpto"));
	String passportNumber = request.getParameter("passportNumber");
	Date passportIssueDate = Date.valueOf(request.getParameter("passportIssueDate"));
	Date passportExpiryDate = Date.valueOf(request.getParameter("passportExpiryDate"));
	String dependent = request.getParameter("dependent");
	
	Permit permit = new Permit(employeeId,workPermitNumber,workPermitFrom,workPermitUpto,residenceIdNumber,
			residencePermitFrom,residencePermitUpto,passportNumber,passportIssueDate,passportExpiryDate,
			dependent,modifiedBy,modificationDate);
	permit.save();
%>
<p class="msg done">Permit information saved successfully!</p>