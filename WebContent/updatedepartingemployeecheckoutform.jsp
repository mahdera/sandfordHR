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
	
	long  departingEmployeeCheckoutFormId = Long.parseLong(request.getParameter("departingEmployeeCheckoutFormId"));
	int employeeId = Integer.parseInt(request.getParameter("employeeControlName"));
	String reasonForLeaving = request.getParameter("reasonForLeavingControlName");
	String otherCausesOfLeaving = request.getParameter("otherCausesOfLeavingControlName");
	String librarySignature = request.getParameter("librarySignatureControlName");
	Date libraryDateCleared = Date.valueOf(request.getParameter("libraryDateClearedControlName"));
	String libraryRemark = request.getParameter("libraryRemarkControlName");
	String curriculumSignature = request.getParameter("curriculumSignatureControlName");
	Date curriculumDateCleared = Date.valueOf(request.getParameter("curriculumDateClearedControlName"));
	String curriculumRemark = request.getParameter("curriculumRemarkControlName");
	String textbookSignature = request.getParameter("textbookSignatureControlName");
	Date textbookDateCleared = Date.valueOf(request.getParameter("textbookDateClearedControlName"));
	String textbookRemark = request.getParameter("textbookRemarkControlName");
	String roomSignature = request.getParameter("roomSignatureControlName");
	Date roomDateCleared = Date.valueOf(request.getParameter("roomDateClearedControlName"));
	String roomRemark = request.getParameter("roomRemarkControlName");
	String propertySignature = request.getParameter("propertySignatureControlName");
	Date propertyDateCleared = Date.valueOf(request.getParameter("propertyDateClearedControlName"));
	String propertyRemark = request.getParameter("propertyRemarkControlName");
	String accountsSignature = request.getParameter("accountsSignatureControlName");
	Date accountsDateCleared = Date.valueOf(request.getParameter("accountsDateClearedControlName"));
	String accountsRemark = request.getParameter("accountsRemarkControlName");
	String purchasingSignature = request.getParameter("purchasingSignatureControlName");
	Date purchasingDateCleared = Date.valueOf(request.getParameter("purchasingDateClearedControlName"));
	String purchasingRemark = request.getParameter("purchasingRemarkControlName");
	String personnelSignature = request.getParameter("personnelSignatureControlName");
	Date personnelDateCleared = Date.valueOf(request.getParameter("personnelDateClearedControlName"));
	String personnelRemark = request.getParameter("personnelRemarkControlName");
	String maintainanceSignature = request.getParameter("maintainanceSignatureControlName");
	Date maintainanceDateCleared = Date.valueOf(request.getParameter("maintainanceDateClearedControlName"));
	String maintainanceRemark = request.getParameter("maintainanceRemarkControlName");
	String itSignature = request.getParameter("itSignatureControlName");
	Date itDateCleared = Date.valueOf(request.getParameter("itDateClearedControlName"));
	String itRemark = request.getParameter("itRemarkControlName");
	String clearedForFinalPayment = request.getParameter("clearedForFinalPaymentControlName");
	
	DepartingEmployeeCheckoutForm departingEmployeeCheckoutForm = DepartingEmployeeCheckoutForm.getDepartingEmployeeCheckoutForm(departingEmployeeCheckoutFormId);
	departingEmployeeCheckoutForm.setEmployeeId(employeeId);
	departingEmployeeCheckoutForm.setReasonForLeaving(reasonForLeaving);
	departingEmployeeCheckoutForm.setOtherCauses(otherCausesOfLeaving);
	departingEmployeeCheckoutForm.setLibraryBooksSignature(librarySignature);
	departingEmployeeCheckoutForm.setLibraryBooksDateCleared(libraryDateCleared);
	departingEmployeeCheckoutForm.setLibraryBooksRemark(libraryRemark);
	departingEmployeeCheckoutForm.setCurriculumNotesSignature(curriculumSignature);
	departingEmployeeCheckoutForm.setCurriculumNotesDateCleared(curriculumDateCleared);
	departingEmployeeCheckoutForm.setCurriculumNotesRemark(curriculumRemark);
	departingEmployeeCheckoutForm.setTextbookSignature(textbookSignature);
	departingEmployeeCheckoutForm.setTextbookDateCleared(textbookDateCleared);
	departingEmployeeCheckoutForm.setTextbookRemark(textbookRemark);
	departingEmployeeCheckoutForm.setRoomOfficeSignature(roomSignature);
	departingEmployeeCheckoutForm.setRoomOfficeDateCleared(roomDateCleared);
	departingEmployeeCheckoutForm.setRoomOfficeRemark(roomRemark);
	departingEmployeeCheckoutForm.setPropertyFinanceSignature(propertySignature);
	departingEmployeeCheckoutForm.setPropertyFinanceDateCleared(propertyDateCleared);
	departingEmployeeCheckoutForm.setPropertyFinanceRemark(propertyRemark);
	departingEmployeeCheckoutForm.setAccountsUtilitiesSignature(accountsSignature);
	departingEmployeeCheckoutForm.setAccountsUtilitiesDateCleared(accountsDateCleared);
	departingEmployeeCheckoutForm.setAccountsUtilitiesRemark(accountsRemark);
	departingEmployeeCheckoutForm.setPurchasingSignature(purchasingSignature);
	departingEmployeeCheckoutForm.setPurchasingDateCleared(purchasingDateCleared);
	departingEmployeeCheckoutForm.setPurchasingRemark(purchasingRemark);
	departingEmployeeCheckoutForm.setPersonnelBenefitsSignature(personnelSignature);
	departingEmployeeCheckoutForm.setPersonnelBenefitsDateCleared(personnelDateCleared);
	departingEmployeeCheckoutForm.setPersonnelBenefitsRemark(personnelRemark);
	departingEmployeeCheckoutForm.setMaintainanceTransportSignature(maintainanceSignature);
	departingEmployeeCheckoutForm.setMaintainanceTransportDateCleared(maintainanceDateCleared);
	departingEmployeeCheckoutForm.setMaintainanceTransportRemark(maintainanceRemark);
	departingEmployeeCheckoutForm.setItSignature(itSignature);
	departingEmployeeCheckoutForm.setItSignatureDateCleared(itDateCleared);
	departingEmployeeCheckoutForm.setItRemark(itRemark);	
	departingEmployeeCheckoutForm.setClearedForFinalPayment(clearedForFinalPayment);
	departingEmployeeCheckoutForm.setModifiedBy(modifiedBy);
	departingEmployeeCheckoutForm.setModificationDate(modificationDate);
	
	DepartingEmployeeCheckoutForm.update(departingEmployeeCheckoutForm);
%>
<p class="msg done">Departing employee checkout form updated successfully!</p>