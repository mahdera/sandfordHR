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
	String reasonForLeaving = request.getParameter("reasonForLeaving");
	String otherCausesForLeaving = request.getParameter("otherCausesForLeaving");
	String librarySignature = request.getParameter("librarySignature");
	Date libraryClearanceDate = Date.valueOf(request.getParameter("libraryClearanceDate"));
	String libraryRemark = request.getParameter("libraryRemark");
	String curriculumNotesSignature = request.getParameter("curriculumNotesSignature");
	Date curriculumNotesClearanceDate = Date.valueOf(request.getParameter("curriculumNotesClearanceDate"));
	String curriculumNotesRemark = request.getParameter("curriculumNotesRemark");
	String textbookSignature = request.getParameter("textbookSignature");
	Date textbookClearanceDate = Date.valueOf(request.getParameter("textbookClearanceDate"));
	String textbookRemark = request.getParameter("textbookRemark");
	String roomOfficeSignature = request.getParameter("roomOfficeSignature");
	Date roomOfficeClearanceDate = Date.valueOf(request.getParameter("roomOfficeClearanceDate"));
	String roomOfficeRemark = request.getParameter("roomOfficeRemark");
	String propertyHousingSignature = request.getParameter("propertyHousingSignature");
	Date propertyHousingClearanceDate = Date.valueOf(request.getParameter("propertyHousingClearanceDate"));
	String propertyHousingRemark = request.getParameter("propertyHousingRemark");
	String accountsUtilitiesSignature = request.getParameter("accountsUtilitiesSignature");
	Date accountsUtilitiesClearanceDate = Date.valueOf(request.getParameter("accountsUtilitiesClearanceDate"));
	String accountsUtilitiesRemark = request.getParameter("accountsUtilitiesRemark");
	String purchasingSignature = request.getParameter("purchasingSignature");
	Date purchasingClearanceDate = Date.valueOf(request.getParameter("purchasingClearanceDate"));
	String purchasingRemark = request.getParameter("purchasingRemark");
	String personnelBenefitsSignature = request.getParameter("personnelBenefitsSignature");
	Date personnelBenefitsClearanceDate = Date.valueOf(request.getParameter("personnelBenefitsClearanceDate"));
	String personnelBenefitsRemark = request.getParameter("personnelBenefitsRemark");
	String maintainanceTransportSignature = request.getParameter("maintainanceTransportSignature");
	Date maintainanceTransportClearanceDate = Date.valueOf(request.getParameter("maintainanceTransportClearanceDate"));
	String maintainanceTransportRemark = request.getParameter("maintainanceTransportRemark");
	String itSignature = request.getParameter("itSignature");
	Date itClearanceDate = Date.valueOf(request.getParameter("itClearanceDate"));
	String itRemark = request.getParameter("itRemark");
	String clearedForFinalPayment = request.getParameter("clearedForFinalPayment");
	
	DepartingEmployeeCheckoutForm departingEmployeeCheckoutForm = new DepartingEmployeeCheckoutForm( employeeId,
			 reasonForLeaving,otherCausesForLeaving,librarySignature,libraryClearanceDate,
			 libraryRemark,curriculumNotesSignature,curriculumNotesClearanceDate,curriculumNotesRemark,
			 textbookSignature,textbookClearanceDate,textbookRemark,roomOfficeSignature,
			 roomOfficeClearanceDate,roomOfficeRemark,propertyHousingSignature,  propertyHousingClearanceDate,
			 propertyHousingRemark,accountsUtilitiesSignature,accountsUtilitiesClearanceDate,accountsUtilitiesRemark,
			 purchasingSignature,purchasingClearanceDate,purchasingRemark,personnelBenefitsSignature,
			 personnelBenefitsClearanceDate,personnelBenefitsRemark,maintainanceTransportSignature,
			 maintainanceTransportClearanceDate,maintainanceTransportRemark,itSignature,itClearanceDate,itRemark,
			 modifiedBy,modificationDate);
	departingEmployeeCheckoutForm.save();	
%>
Departing employee form saved successfully!