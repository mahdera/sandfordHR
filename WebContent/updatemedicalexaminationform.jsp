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
	
	long medicalExaminationFormId = Long.parseLong(request.getParameter("medicalExaminationFormId"));
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
	
	MedicalExaminationForm medicalExaminationForm = MedicalExaminationForm.getMedicalExaminationForm(medicalExaminationFormId);
	medicalExaminationForm.setEmployeeId(employeeId);
	medicalExaminationForm.setMedicalExamDate(medicationDate);
	medicalExaminationForm.setWeight(weight);
	medicalExaminationForm.setHeight(height);
	medicalExaminationForm.setBloodPressure(bp);
	medicalExaminationForm.setPulse(pulse);
	medicalExaminationForm.setTemperature(temperature);
	medicalExaminationForm.setSkin(skin);
	medicalExaminationForm.setVision(vision);
	medicalExaminationForm.setHearing(hearing);
	medicalExaminationForm.setTeeth(teeth);
	medicalExaminationForm.setChest(chest);
	medicalExaminationForm.setAbdomen(abdomen);
	medicalExaminationForm.setGeneral(general);
	medicalExaminationForm.setAbilityAdjustWorkEnvironment(abilityToAdjust);
	medicalExaminationForm.setAbilitySeaLevel(aboveSeaLevel);
	medicalExaminationForm.setDoctorName(doctorName);
	medicalExaminationForm.setHealthFacilityAddress(healthFacilityAddress);
	MedicalExaminationForm.update(medicalExaminationForm);
%>
<p class="msg done">Medical examination form saved successfully!</p>