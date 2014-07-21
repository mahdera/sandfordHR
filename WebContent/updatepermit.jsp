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

	long permitId = Long.parseLong(request.getParameter("permitId"));
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
	
	//now find the permit object and modify the fields with the current value...then update it.
	Permit permit = Permit.getPermit(permitId);
	permit.setEmployeeId(employeeId);
	permit.setWorkPermitNumber(workPermitNumber);
	permit.setWorkPermitFrom(workPermitFrom);
	permit.setWorkPermitTo(workPermitUpto);
	permit.setResidenceIdNumber(residenceIdNumber);
	permit.setResidencePermitFrom(residencePermitFrom);
	permit.setResidencePermitTo(residencePermitUpto);
	permit.setPassportNumber(passportNumber);
	permit.setPassportIssueDate(passportIssueDate);
	permit.setPassportExpiryDate(passportExpiryDate);
	permit.setDependent(dependent);
	permit.setModifiedBy(modifiedBy);
	permit.setModificationDate(modificationDate);
	Permit.update(permit);
%>
<p class="msg done">Permit information updated successfully!</p>