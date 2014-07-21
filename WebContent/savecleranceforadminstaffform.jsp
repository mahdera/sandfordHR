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
		
		CleranceForm cleranceForm = new CleranceForm(employeeId,terminationDate,
				 immediateSupervisorName,immediateSupervisorCleared, 
				 immediateSupervisorClearanceDate,immediateSupervisorRemark,libraryHeadName,
				 libraryHeadCleared,libraryHeadClearanceDate,libraryHeadRemark,financeHeadName,
				 financeHeadCleared,financeHeadClearanceDate,financeHeadRemark,propertyHousingName,
				 propertyHousingCleared,propertyHousingClearanceDate,propertyHousingRemark,accountsBudgetName,
				 accountsBudgetCleared,accountsBudgetClearanceDate,accountsBudgetRemark,procurmentName,
				 procurmentCleared,procurmentClearanceDate,procurmentRemark,hrHeadName,hrHeadCleared,
				 hrHeadClearanceDate,hrHeadRemark,personnelBenefitsName,personnelBenefitsCleared,
				 personnelBenefitsClearanceDate,personnelBenefitsRemark,maintainanceGeneralServiceName,
				 maintainanceGeneralServiceCleared,maintainanceGeneralServiceClearanceDate,
				 maintainanceGeneralServiceRemark,itName,itCleared,itClearanceDate,itRemark,
				 modifiedBy,modificationDate);		
		cleranceForm.save();
%>
Clearance form saved successfully!
