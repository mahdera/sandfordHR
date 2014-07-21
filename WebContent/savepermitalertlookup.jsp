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
	PermitAlertLookup permitAlertLookup = new PermitAlertLookup(workPermitPeriod,
			residencePermitPeriod,passportExpiryPeriod,modifiedBy,modificationDate);
	permitAlertLookup.save();
%>
Permit alert lookup values saved successfully!