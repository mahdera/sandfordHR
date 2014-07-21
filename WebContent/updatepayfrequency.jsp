<%@page import="com.empadmin.server.classes.*"%>
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
	
	String frequencyName = request.getParameter("frequencyName");
	int payFrequencyId = Integer.parseInt(request.getParameter("payFrequencyId"));
	//now find the pay frequency object...set it with the new data values and update the info to the database...
	PayFrequency payFrequency = PayFrequency.getPayFrequency(payFrequencyId);
	payFrequency.setFrequencyName(frequencyName);
	payFrequency.setModifiedBy(modifiedBy);
	payFrequency.setModificationDate(modificationDate);
	PayFrequency.update(payFrequency);
%>
