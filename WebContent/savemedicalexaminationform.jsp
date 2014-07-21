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
	Date medicationDate = Date.valueOf(request.getParameter("medicationDate"));
	String weight = request.getParameter("weight");
	String height = request.getParameter("height");
	String bp = request.getParameter("bp");
	String pulse = request.getParameter("pulse");
	String temperature = request.getParameter("temperature");
	String skin = request.getParameter("skin");
	String vision = request.getParameter("vision");
	String hearing = request.getParameter("hearing");
	String teeth = request.getParameter("teeth");
	String chest = request.getParameter("chest");
	String abdomen = request.getParameter("abdomen");
	String general = request.getParameter("general");
	String abilityToAdjust = request.getParameter("abilityToAdjust");
	String aboveSeaLevel = request.getParameter("aboveSeaLevel");
	String doctorName = request.getParameter("doctorName");
	String healthFacilityAddress = request.getParameter("healthFacilityAddress");
	
	MedicalExaminationForm medicalExaminationForm = new MedicalExaminationForm(employeeId,medicationDate,
			weight,height,bp,pulse,temperature,skin,vision,hearing,teeth,chest,abdomen,general,
			abilityToAdjust,aboveSeaLevel,doctorName,healthFacilityAddress,modifiedBy,modificationDate);
	medicalExaminationForm.save();	
%>
Medical examination form saved successfully!