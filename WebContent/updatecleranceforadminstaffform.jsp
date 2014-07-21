<%@page import="java.sql.Date"%>
<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%
	Account account = (Account) session.getAttribute("account");
	int modifiedBy = account.getUserId();
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String currentDate = dateFormat.format(cal.getTime());
	Date modificationDate = Date.valueOf(currentDate);
	
	long clearanceFormId = Long.parseLong(request.getParameter("clearanceFormId"));
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	Date terminationDate = Date.valueOf(request.getParameter("terminationDate"));
	String immediateSupervisorName = request.getParameter("immediateSupervisorName");
	String immediateSupervisorCleared = request.getParameter("immediateSupervisorCleared");
	Date immediateSupervisorClearanceDate = Date.valueOf(request.getParameter("immediateSupervisorClearanceDate"));
	String immediateSupervisorRemark = request.getParameter("immediateSupervisorRemark");
	String libraryHeadName = request.getParameter("libraryHeadName");
	String libraryHeadCleared = request.getParameter("libraryHeadCleared");
	Date libraryHeadClearanceDate = Date.valueOf(request.getParameter("libraryHeadClearanceDate"));
	String libraryHeadRemark = request.getParameter("libraryHeadRemark");
	String financeHeadName = request.getParameter("financeHeadName");
	String financeHeadCleared = request.getParameter("financeHeadCleared");
	Date financeHeadClearanceDate = Date.valueOf(request.getParameter("financeHeadClearanceDate"));
	String financeHeadRemark = request.getParameter("financeHeadRemark");
	String propertyHousingName = request.getParameter("propertyHousingName");
	String propertyHousingCleared = request.getParameter("propertyHousingCleared");
	Date propertyHousingClearanceDate = Date.valueOf(request.getParameter("propertyHousingClearanceDate"));
	String propertyHousingRemark = request.getParameter("propertyHousingRemark");
	String accountsBudgetName = request.getParameter("accountsBudgetName");
	String accountsBudgetCleared = request.getParameter("accountsBudgetCleared");
	Date accountsBudgetClearanceDate = Date.valueOf(request.getParameter("accountsBudgetClearanceDate"));
	String accountsBudgetRemark = request.getParameter("accountsBudgetRemark");
	String procurmentName = request.getParameter("procurmentName");
	String procurmentCleared = request.getParameter("procurmentCleared");
	Date procurmentClearanceDate = Date.valueOf(request.getParameter("procurmentClearanceDate"));
	String procurmentRemark = request.getParameter("procurmentRemark");
	String hrHeadName = request.getParameter("hrHeadName");
	String hrHeadCleared = request.getParameter("hrHeadCleared");
	Date hrHeadClearanceDate = Date.valueOf(request.getParameter("hrHeadClearanceDate"));
	String hrHeadRemark = request.getParameter("hrHeadRemark");
	String personnelBenefitsName = request.getParameter("personnelBenefitsName");
	String personnelBenefitsCleared = request.getParameter("personnelBenefitsCleared");
	Date personnelBenefitsClearanceDate = Date.valueOf(request.getParameter("personnelBenefitsClearanceDate"));
	String personnelBenefitsRemark = request.getParameter("personnelBenefitsRemark");
	String maintainanceGeneralServiceName = request.getParameter("maintainanceGeneralServiceName");
	String maintainanceGeneralServiceCleared = request.getParameter("maintainanceGeneralServiceCleared");
	Date maintainanceGeneralServiceClearanceDate = Date.valueOf(request.getParameter("maintainanceGeneralServiceClearanceDate"));
	String maintainanceGeneralServiceRemark = request.getParameter("maintainanceGeneralServiceRemark");
	String itName = request.getParameter("itName");
	String itCleared = request.getParameter("itCleared");
	Date itClearanceDate = Date.valueOf(request.getParameter("itClearanceDate"));
	String itRemark = request.getParameter("itRemark");
	
	CleranceForm clearanceForm = CleranceForm.getCleranceForm(clearanceFormId);
	clearanceForm.setEmployeeId(employeeId);
	clearanceForm.setTerminationDate(terminationDate);
	clearanceForm.setImmediateSupervisorName(immediateSupervisorName);
	clearanceForm.setImmediateSupervisorCleared(immediateSupervisorCleared);
	clearanceForm.setImmediateSupervisorClearanceDate(immediateSupervisorClearanceDate);
	clearanceForm.setImmediateSupervisorRemark(immediateSupervisorRemark);
	
	clearanceForm.setLibraryHeadName(libraryHeadName);
	clearanceForm.setLibraryHeadCleared(libraryHeadCleared);
	clearanceForm.setLibraryHeadClearanceDate(libraryHeadClearanceDate);
	clearanceForm.setLibraryHeadRemark(libraryHeadRemark);
	
	clearanceForm.setFinanceHeadName(financeHeadName);
	clearanceForm.setFinanceHeadCleared(financeHeadCleared);
	clearanceForm.setFinanceHeadClearanceDate(financeHeadClearanceDate);
	clearanceForm.setFinanceHeadRemark(financeHeadRemark);
	
	clearanceForm.setPropertyHousingName(propertyHousingName);
	clearanceForm.setPropertyHousingCleared(propertyHousingCleared);
	clearanceForm.setPropertyHousingClearanceDate(propertyHousingClearanceDate);
	clearanceForm.setPropertyHousingRemark(propertyHousingRemark);
	
	clearanceForm.setAccountsBudgetName(accountsBudgetName);
	clearanceForm.setAccountsBudgetCleared(accountsBudgetCleared);
	clearanceForm.setAccountsBudgetClearanceDate(accountsBudgetClearanceDate);
	clearanceForm.setAccountsBudgetRemark(accountsBudgetRemark);
	
	clearanceForm.setProcurmentName(procurmentName);
	clearanceForm.setProcurmentCleared(procurmentCleared);
	clearanceForm.setProcurmentClearanceDate(procurmentClearanceDate);
	clearanceForm.setProcurmentRemark(procurmentRemark);
	
	clearanceForm.setHrHeadName(hrHeadName);
	clearanceForm.setHrHeadCleared(hrHeadCleared);
	clearanceForm.setHrHeadClearanceDate(hrHeadClearanceDate);
	clearanceForm.setHrHeadRemark(hrHeadRemark);
	
	clearanceForm.setPersonnelBenefitsName(personnelBenefitsName);
	clearanceForm.setPersonnelBenefitsCleared(personnelBenefitsCleared);
	clearanceForm.setPersonnelBenefitsClearanceDate(personnelBenefitsClearanceDate);
	clearanceForm.setPersonnelBenefitsRemark(personnelBenefitsRemark);
	
	clearanceForm.setMaintainanceGeneralServiceName(maintainanceGeneralServiceName);
	clearanceForm.setMaintainanceGeneralServiceCleared(maintainanceGeneralServiceCleared);
	clearanceForm.setMaintainanceGeneralServiceClearanceDate(maintainanceGeneralServiceClearanceDate);
	clearanceForm.setMaintainanceGeneralServiceRemark(maintainanceGeneralServiceRemark);
	
	clearanceForm.setItName(itName);
	clearanceForm.setItCleared(itCleared);
	clearanceForm.setItClearanceDate(itClearanceDate);
	clearanceForm.setItRemark(itRemark);
	
	clearanceForm.setModifiedBy(modifiedBy);
	clearanceForm.setModificationDate(modificationDate);
	
	CleranceForm.update(clearanceForm);
%>
<p class="msg done">Clearance form updated successfully!</p>