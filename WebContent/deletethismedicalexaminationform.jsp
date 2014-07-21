<%@page import="com.empadmin.server.classes.*"%>
<%
	long medicalExaminationFormId = Long.parseLong(request.getParameter("medicalExaminationFormId"));
	MedicalExaminationForm.delete(medicalExaminationFormId);
%>
<p class="msg done">Medical examination record deleted successfully!</p>