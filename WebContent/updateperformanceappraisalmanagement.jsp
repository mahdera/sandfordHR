<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.sql.Date" %>
<%
	long performanceAppraisalId = Long.parseLong(request.getParameter("performanceAppraisalId"));
	String positionTitle = request.getParameter("positionTitle");
	Date employmentDate = Date.valueOf(request.getParameter("employmentDate"));
	int departmentId = Integer.parseInt(request.getParameter("departmentId"));
	Date appraisalDate = Date.valueOf(request.getParameter("appraisalDate"));
	String periodCovered = request.getParameter("periodCovered");
	Date lastAppraisalDate = Date.valueOf(request.getParameter("lastAppraisalDate"));
	String summaryOfDuites = request.getParameter("summaryOfDuites");
	String specificGoalsAndObjectives = request.getParameter("specificGoalsAndObjectives");
	String dependability = request.getParameter("dependability");
	String quality = request.getParameter("quality");
	String jobKnowledgeSkill = request.getParameter("jobKnowledgeSkill");
	String attendanceUseOfTime = request.getParameter("attendanceUseOfTime");
	String communicationAbility = request.getParameter("communicationAbility");
	String policiesAndGuidelines = request.getParameter("policiesAndGuidelines");
	String cooperationUnderstanding = request.getParameter("cooperationUnderstanding");
	String responsibility = request.getParameter("responsibility");
	String behaviorAndPersonality = request.getParameter("behaviorAndPersonality");
	String initiativeAndResourcefulness = request.getParameter("initiativeAndResourcefulness");
	
	PerformanceAppraisal performanceAppraisal = PerformanceAppraisal.getPerformanceAppraisal(performanceAppraisalId);
	performanceAppraisal.setPositionTitle(positionTitle);
	performanceAppraisal.setEmploymentDate(employmentDate);
	performanceAppraisal.setDepartmentId(departmentId);
	performanceAppraisal.setAppraisalDate(appraisalDate);
	performanceAppraisal.setPeriodCovered(periodCovered);
	performanceAppraisal.setLastAppraisalDate(lastAppraisalDate);
	performanceAppraisal.setSummaryOfDuties(summaryOfDuites);
	performanceAppraisal.setSpecificGoalsObjectives(specificGoalsAndObjectives);
	performanceAppraisal.setDependability(dependability);
	performanceAppraisal.setQuality(quality);
	performanceAppraisal.setJobKnowledgeSkill(jobKnowledgeSkill);
	performanceAppraisal.setAttendanceUseOfTime(attendanceUseOfTime);
	performanceAppraisal.setCommunicationAbility(communicationAbility);
	performanceAppraisal.setPoliciesAndGuidelines(policiesAndGuidelines);
	performanceAppraisal.setCooperationUnderstanding(cooperationUnderstanding);
	performanceAppraisal.setResponsibility(responsibility);
	performanceAppraisal.setBehaviorAndPersonality(behaviorAndPersonality);
	performanceAppraisal.setInitiativeAndResourcefulness(initiativeAndResourcefulness);
	
	PerformanceAppraisal.update(performanceAppraisal);
%>
<p class="msg done">Performance appraisal updated successfully!</p>