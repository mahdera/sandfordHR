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
	
	long recruitmentRequestId = Long.parseLong(request.getParameter("recruitmentRequestId"));
	int departmentId = Integer.parseInt(request.getParameter("departmentId"));
	String requesterTitle = request.getParameter("requesterTitle");
	Date requestDate = Date.valueOf(request.getParameter("requestDate"));
	Date desiredHireDate = Date.valueOf(request.getParameter("desiredHireDate"));
	String positionRequestedReplacementFor = request.getParameter("positionRequestedReplacementFor");
	String positionRequestedNew = request.getParameter("positionRequestedNew");
	String positionRequestedAdministrative = request.getParameter("positionRequestedAdministrative");
	String positionRequestedManagerial = request.getParameter("positionRequestedManagerial");
	String positionRequestedNonTrades = request.getParameter("positionRequestedNonTrades");
	String positionRequestedOperationsSupport = request.getParameter("positionRequestedOperationsSupport");
	String positionRequestedProfessional = request.getParameter("positionRequestedProfessional");
	String positionRequestedTrades = request.getParameter("positionRequestedTrades");
	String positionRequestedProposedJobTitle = request.getParameter("positionRequestedProposedJobTitle");
	String positionRequestedBudgetedRate = request.getParameter("positionRequestedBudgetedRate");
	String temporaryWorkerNumberOfDays = request.getParameter("temporaryWorkerNumberOfDays");
	String temporaryWorkerNumberOfWeeks = request.getParameter("temporaryWorkerNumberOfWeeks");
	String temporaryWorkerNumberOfMonths = request.getParameter("temporaryWorkerNumberOfMonths");
	Date temporaryWorkerStartDate = Date.valueOf(request.getParameter("temporaryWorkerStartDate"));
	Date temporaryWorkerEndDate = Date.valueOf(request.getParameter("temporaryWorkerEndDate"));
	String temporaryWorkerHourlyRate = request.getParameter("temporaryWorkerHourlyRate");
	String temporaryWorkerHowMany = request.getParameter("temporaryWorkerHowMany");
	String additionalInformationRequired = request.getParameter("additionalInformationRequired");
	String additionalInformationDesired = request.getParameter("additionalInformationDesired");
	
	RecruitmentRequest recruitmentRequest = RecruitmentRequest.getRecruitmentRequest(recruitmentRequestId);
	recruitmentRequest.setDepartmentId(departmentId);
	recruitmentRequest.setRequesterTitle(requesterTitle);
	recruitmentRequest.setRequestDate(requestDate);
	recruitmentRequest.setDesiredHireDate(desiredHireDate);
	recruitmentRequest.setPositionRequestedReplacementFor(positionRequestedReplacementFor);
	recruitmentRequest.setPositionRequestedNewPosition(positionRequestedNew);
	recruitmentRequest.setPositionRequestedAdministrative(positionRequestedAdministrative);
	recruitmentRequest.setPositionRequestedManagerial(positionRequestedManagerial);
	recruitmentRequest.setPositionRequestedNonTrades(positionRequestedNonTrades);
	recruitmentRequest.setPositionRequestedOperationsSupport(positionRequestedOperationsSupport);
	recruitmentRequest.setPositionRequestedProfessional(positionRequestedProfessional);
	recruitmentRequest.setPositionRequestedTrades(positionRequestedTrades);
	recruitmentRequest.setPositionRequestedProposedJobTitle(positionRequestedProposedJobTitle);
	recruitmentRequest.setPositionRequestedBudgetedRate(positionRequestedBudgetedRate);
	recruitmentRequest.setTemporaryWorkerNumberOfDays(temporaryWorkerNumberOfDays);
	recruitmentRequest.setTemporaryWorkerNumberOfWeeks(temporaryWorkerNumberOfWeeks);
	recruitmentRequest.setTemporaryWorkerNumberOfMonths(temporaryWorkerNumberOfMonths);
	recruitmentRequest.setTemporaryWorkerStartDate(temporaryWorkerStartDate);
	recruitmentRequest.setTemporaryWorkerEndDate(temporaryWorkerEndDate);
	recruitmentRequest.setTemporaryWorkerHourlyRate(temporaryWorkerHourlyRate);
	recruitmentRequest.setTemporaryWorkerHowMany(temporaryWorkerHowMany);
	recruitmentRequest.setAdditionalInformationRequired(additionalInformationRequired);
	recruitmentRequest.setAdditionalInformationDesired(additionalInformationDesired);
	RecruitmentRequest.update(recruitmentRequest);	
%>
<p class="msg done">Recruitment Request Form Successfully Updated!</p>
