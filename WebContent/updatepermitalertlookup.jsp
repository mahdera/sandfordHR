<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%@page import="java.sql.Date" %>
<%
	Account account = (Account) session.getAttribute("account");
	int modifiedBy = account.getUserId();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String currentDate = dateFormat.format(cal.getTime());
	Date modificationDate = Date.valueOf(currentDate);

	int workPermitPeriod = Integer.parseInt(request.getParameter("workPermitPeriod"));
	int residencePermitPeriod = Integer.parseInt(request.getParameter("residencePermitPeriod"));
	int passportExpiryPeriod = Integer.parseInt(request.getParameter("passportExpiryPeriod"));
	int permitAlertId = Integer.parseInt(request.getParameter("permitAlertId"));
	//now fetch the object and set its values...then update database values...
	PermitAlertLookup permitAlertLookup = PermitAlertLookup.getPermitAlertLookup(permitAlertId);
	permitAlertLookup.setWorkPermitPeriod(workPermitPeriod);
	permitAlertLookup.setResidencePermitPeriod(residencePermitPeriod);
	permitAlertLookup.setPassportExpiryPeriod(passportExpiryPeriod);
	permitAlertLookup.setModifiedBy(modifiedBy);
	permitAlertLookup.setModificationDate(modificationDate);
	PermitAlertLookup.update(permitAlertLookup);
%>
<p class="msg done">Permit alert lookup updated successfully!</p>