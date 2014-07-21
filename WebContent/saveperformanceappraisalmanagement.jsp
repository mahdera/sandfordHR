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
		//now save this to the database...
		PerformanceAppraisal performanceAppraisal = new PerformanceAppraisal(employeeId,positionTitle,
				employmentDate,departmentId,appraisalDate,periodCovered,lastAppraisalDate,summaryOfDuites,specificGoalsAndObjectives,
				dependability,quality,jobKnowledgeSkill,attendanceUseOfTime,communicationAbility,policiesAndGuidelines,
				cooperationUnderstanding,responsibility,behaviorAndPersonality,initiativeAndResourcefulness,
				modifiedBy,modificationDate);
		performanceAppraisal.save();
%>
<p class="msg done">Performance appraisal form saved successfully!</p>