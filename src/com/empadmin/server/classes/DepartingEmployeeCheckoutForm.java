/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Mahder on macbook Pro
 * 
 */
public class DepartingEmployeeCheckoutForm {
	private long id;
	private long employeeId;
	private String reasonForLeaving;
	private String otherCauses;
	private String libraryBooksSignature;
	private Date libraryBooksDateCleared;
	private String libraryBooksRemark;
	private String curriculumNotesSignature;
	private Date curriculumNotesDateCleared;
	private String curriculumNotesRemark;
	private String textbookSignature;
	private Date textbookDateCleared;
	private String textbookRemark;
	private String roomOfficeSignature;
	private Date roomOfficeDateCleared;
	private String roomOfficeRemark;
	private String propertyFinanceSignature;
	private Date propertyFinanceDateCleared;
	private String propertyFinanceRemark;
	private String accountsUtilitiesSignature;
	private Date accountsUtilitiesDateCleared;
	private String accountsUtilitiesRemark;
	private String purchasingSignature;
	private Date purchasingDateCleared;
	private String purchasingRemark;
	private String personnelBenefitsSignature;
	private Date personnelBenefitsDateCleared;
	private String personnelBenefitsRemark;
	private String maintainanceTransportSignature;
	private Date maintainanceTransportDateCleared;
	private String maintainanceTransportRemark;
	private String itSignature;
	private Date itSignatureDateCleared;
	private String itRemark;
	private String clearedForFinalPayment;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public DepartingEmployeeCheckoutForm() {
	}

	/**
	 * @param employeeId
	 * @param reasonForLeaving
	 * @param otherCauses
	 * @param libraryBooksSignature
	 * @param libraryBooksDateCleared
	 * @param libraryBooksRemark
	 * @param curriculumNotesSignature
	 * @param curriculumNotesDateCleared
	 * @param curriculumNotesRemark
	 * @param textbookSignature
	 * @param textbookDateCleared
	 * @param textbookRemark
	 * @param roomOfficeSignature
	 * @param roomOfficeDateCleared
	 * @param roomOfficeRemark
	 * @param propertyFinanceSignature
	 * @param propertyFinanceDateCleared
	 * @param propertyFinanceRemark
	 * @param accountsUtilitiesSignature
	 * @param accountsUtilitiesDateCleared
	 * @param accountsUtilitiesRemark
	 * @param purchasingSignature
	 * @param purchasingDateCleared
	 * @param purchasingRemark
	 * @param personnelBenefitsSignature
	 * @param personnelBenefitsDateCleared
	 * @param personnelBenefitsRemark
	 * @param maintainanceTransportSignature
	 * @param maintainanceTransportDateCleared
	 * @param maintainanceTransportRemark
	 * @param itSignature
	 * @param itSignatureDateCleared
	 * @param itRemark
	 * @param clearedForFinalPayment
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public DepartingEmployeeCheckoutForm(long employeeId,
			String reasonForLeaving, String otherCauses,
			String libraryBooksSignature, Date libraryBooksDateCleared,
			String libraryBooksRemark, String curriculumNotesSignature,
			Date curriculumNotesDateCleared, String curriculumNotesRemark,
			String textbookSignature, Date textbookDateCleared,
			String textbookRemark, String roomOfficeSignature,
			Date roomOfficeDateCleared, String roomOfficeRemark,
			String propertyFinanceSignature, Date propertyFinanceDateCleared,
			String propertyFinanceRemark, String accountsUtilitiesSignature,
			Date accountsUtilitiesDateCleared, String accountsUtilitiesRemark,
			String purchasingSignature, Date purchasingDateCleared,
			String purchasingRemark, String personnelBenefitsSignature,
			Date personnelBenefitsDateCleared, String personnelBenefitsRemark,
			String maintainanceTransportSignature,
			Date maintainanceTransportDateCleared,
			String maintainanceTransportRemark, String itSignature,
			Date itSignatureDateCleared, String itRemark,String clearedForFinalPayment, int modifiedBy,
			Date modificationDate) {
		this.employeeId = employeeId;
		this.reasonForLeaving = reasonForLeaving;
		this.otherCauses = otherCauses;
		this.libraryBooksSignature = libraryBooksSignature;
		this.libraryBooksDateCleared = libraryBooksDateCleared;
		this.libraryBooksRemark = libraryBooksRemark;
		this.curriculumNotesSignature = curriculumNotesSignature;
		this.curriculumNotesDateCleared = curriculumNotesDateCleared;
		this.curriculumNotesRemark = curriculumNotesRemark;
		this.textbookSignature = textbookSignature;
		this.textbookDateCleared = textbookDateCleared;
		this.textbookRemark = textbookRemark;
		this.roomOfficeSignature = roomOfficeSignature;
		this.roomOfficeDateCleared = roomOfficeDateCleared;
		this.roomOfficeRemark = roomOfficeRemark;
		this.propertyFinanceSignature = propertyFinanceSignature;
		this.propertyFinanceDateCleared = propertyFinanceDateCleared;
		this.propertyFinanceRemark = propertyFinanceRemark;
		this.accountsUtilitiesSignature = accountsUtilitiesSignature;
		this.accountsUtilitiesDateCleared = accountsUtilitiesDateCleared;
		this.accountsUtilitiesRemark = accountsUtilitiesRemark;
		this.purchasingSignature = purchasingSignature;
		this.purchasingDateCleared = purchasingDateCleared;
		this.purchasingRemark = purchasingRemark;
		this.personnelBenefitsSignature = personnelBenefitsSignature;
		this.personnelBenefitsDateCleared = personnelBenefitsDateCleared;
		this.personnelBenefitsRemark = personnelBenefitsRemark;
		this.maintainanceTransportSignature = maintainanceTransportSignature;
		this.maintainanceTransportDateCleared = maintainanceTransportDateCleared;
		this.maintainanceTransportRemark = maintainanceTransportRemark;
		this.itSignature = itSignature;
		this.itSignatureDateCleared = itSignatureDateCleared;
		this.itRemark = itRemark;
		this.clearedForFinalPayment = clearedForFinalPayment;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param reasonForLeaving
	 * @param otherCauses
	 * @param libraryBooksSignature
	 * @param libraryBooksDateCleared
	 * @param libraryBooksRemark
	 * @param curriculumNotesSignature
	 * @param curriculumNotesDateCleared
	 * @param curriculumNotesRemark
	 * @param textbookSignature
	 * @param textbookDateCleared
	 * @param textbookRemark
	 * @param roomOfficeSignature
	 * @param roomOfficeDateCleared
	 * @param roomOfficeRemark
	 * @param propertyFinanceSignature
	 * @param propertyFinanceDateCleared
	 * @param propertyFinanceRemark
	 * @param accountsUtilitiesSignature
	 * @param accountsUtilitiesDateCleared
	 * @param accountsUtilitiesRemark
	 * @param purchasingSignature
	 * @param purchasingDateCleared
	 * @param purchasingRemark
	 * @param personnelBenefitsSignature
	 * @param personnelBenefitsDateCleared
	 * @param personnelBenefitsRemark
	 * @param maintainanceTransportSignature
	 * @param maintainanceTransportDateCleared
	 * @param maintainanceTransportRemark
	 * @param itSignature
	 * @param itSignatureDateCleared
	 * @param itRemark
	 * @param clearedForFinalPayment
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public DepartingEmployeeCheckoutForm(long id, long employeeId,
			String reasonForLeaving, String otherCauses,
			String libraryBooksSignature, Date libraryBooksDateCleared,
			String libraryBooksRemark, String curriculumNotesSignature,
			Date curriculumNotesDateCleared, String curriculumNotesRemark,
			String textbookSignature, Date textbookDateCleared,
			String textbookRemark, String roomOfficeSignature,
			Date roomOfficeDateCleared, String roomOfficeRemark,
			String propertyFinanceSignature, Date propertyFinanceDateCleared,
			String propertyFinanceRemark, String accountsUtilitiesSignature,
			Date accountsUtilitiesDateCleared, String accountsUtilitiesRemark,
			String purchasingSignature, Date purchasingDateCleared,
			String purchasingRemark, String personnelBenefitsSignature,
			Date personnelBenefitsDateCleared, String personnelBenefitsRemark,
			String maintainanceTransportSignature,
			Date maintainanceTransportDateCleared,
			String maintainanceTransportRemark, String itSignature,
			Date itSignatureDateCleared, String itRemark,String clearedForFinalPayment, int modifiedBy,
			Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.reasonForLeaving = reasonForLeaving;
		this.otherCauses = otherCauses;
		this.libraryBooksSignature = libraryBooksSignature;
		this.libraryBooksDateCleared = libraryBooksDateCleared;
		this.libraryBooksRemark = libraryBooksRemark;
		this.curriculumNotesSignature = curriculumNotesSignature;
		this.curriculumNotesDateCleared = curriculumNotesDateCleared;
		this.curriculumNotesRemark = curriculumNotesRemark;
		this.textbookSignature = textbookSignature;
		this.textbookDateCleared = textbookDateCleared;
		this.textbookRemark = textbookRemark;
		this.roomOfficeSignature = roomOfficeSignature;
		this.roomOfficeDateCleared = roomOfficeDateCleared;
		this.roomOfficeRemark = roomOfficeRemark;
		this.propertyFinanceSignature = propertyFinanceSignature;
		this.propertyFinanceDateCleared = propertyFinanceDateCleared;
		this.propertyFinanceRemark = propertyFinanceRemark;
		this.accountsUtilitiesSignature = accountsUtilitiesSignature;
		this.accountsUtilitiesDateCleared = accountsUtilitiesDateCleared;
		this.accountsUtilitiesRemark = accountsUtilitiesRemark;
		this.purchasingSignature = purchasingSignature;
		this.purchasingDateCleared = purchasingDateCleared;
		this.purchasingRemark = purchasingRemark;
		this.personnelBenefitsSignature = personnelBenefitsSignature;
		this.personnelBenefitsDateCleared = personnelBenefitsDateCleared;
		this.personnelBenefitsRemark = personnelBenefitsRemark;
		this.maintainanceTransportSignature = maintainanceTransportSignature;
		this.maintainanceTransportDateCleared = maintainanceTransportDateCleared;
		this.maintainanceTransportRemark = maintainanceTransportRemark;
		this.itSignature = itSignature;
		this.itSignatureDateCleared = itSignatureDateCleared;
		this.itRemark = itRemark;
		this.clearedForFinalPayment = clearedForFinalPayment;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}

	/**
	 * @return the employeeId
	 */
	public long getEmployeeId() {
		return employeeId;
	}

	/**
	 * @param employeeId
	 *            the employeeId to set
	 */
	public void setEmployeeId(long employeeId) {
		this.employeeId = employeeId;
	}

	/**
	 * @return the reasonForLeaving
	 */
	public String getReasonForLeaving() {
		return reasonForLeaving;
	}

	/**
	 * @param reasonForLeaving
	 *            the reasonForLeaving to set
	 */
	public void setReasonForLeaving(String reasonForLeaving) {
		this.reasonForLeaving = reasonForLeaving;
	}

	/**
	 * @return the otherCauses
	 */
	public String getOtherCauses() {
		return otherCauses;
	}

	/**
	 * @param otherCauses
	 *            the otherCauses to set
	 */
	public void setOtherCauses(String otherCauses) {
		this.otherCauses = otherCauses;
	}

	/**
	 * @return the libraryBooksSignature
	 */
	public String getLibraryBooksSignature() {
		return libraryBooksSignature;
	}

	/**
	 * @param libraryBooksSignature
	 *            the libraryBooksSignature to set
	 */
	public void setLibraryBooksSignature(String libraryBooksSignature) {
		this.libraryBooksSignature = libraryBooksSignature;
	}

	/**
	 * @return the libraryBooksDateCleared
	 */
	public Date getLibraryBooksDateCleared() {
		return libraryBooksDateCleared;
	}

	/**
	 * @param libraryBooksDateCleared
	 *            the libraryBooksDateCleared to set
	 */
	public void setLibraryBooksDateCleared(Date libraryBooksDateCleared) {
		this.libraryBooksDateCleared = libraryBooksDateCleared;
	}

	/**
	 * @return the libraryBooksRemark
	 */
	public String getLibraryBooksRemark() {
		return libraryBooksRemark;
	}

	/**
	 * @param libraryBooksRemark
	 *            the libraryBooksRemark to set
	 */
	public void setLibraryBooksRemark(String libraryBooksRemark) {
		this.libraryBooksRemark = libraryBooksRemark;
	}

	/**
	 * @return the curriculumNotesSignature
	 */
	public String getCurriculumNotesSignature() {
		return curriculumNotesSignature;
	}

	/**
	 * @param curriculumNotesSignature
	 *            the curriculumNotesSignature to set
	 */
	public void setCurriculumNotesSignature(String curriculumNotesSignature) {
		this.curriculumNotesSignature = curriculumNotesSignature;
	}

	/**
	 * @return the curriculumNotesDateCleared
	 */
	public Date getCurriculumNotesDateCleared() {
		return curriculumNotesDateCleared;
	}

	/**
	 * @param curriculumNotesDateCleared
	 *            the curriculumNotesDateCleared to set
	 */
	public void setCurriculumNotesDateCleared(Date curriculumNotesDateCleared) {
		this.curriculumNotesDateCleared = curriculumNotesDateCleared;
	}

	/**
	 * @return the curriculumNotesRemark
	 */
	public String getCurriculumNotesRemark() {
		return curriculumNotesRemark;
	}

	/**
	 * @param curriculumNotesRemark
	 *            the curriculumNotesRemark to set
	 */
	public void setCurriculumNotesRemark(String curriculumNotesRemark) {
		this.curriculumNotesRemark = curriculumNotesRemark;
	}

	/**
	 * @return the textbookSignature
	 */
	public String getTextbookSignature() {
		return textbookSignature;
	}

	/**
	 * @param textbookSignature
	 *            the textbookSignature to set
	 */
	public void setTextbookSignature(String textbookSignature) {
		this.textbookSignature = textbookSignature;
	}

	/**
	 * @return the textbookDateCleared
	 */
	public Date getTextbookDateCleared() {
		return textbookDateCleared;
	}

	/**
	 * @param textbookDateCleared
	 *            the textbookDateCleared to set
	 */
	public void setTextbookDateCleared(Date textbookDateCleared) {
		this.textbookDateCleared = textbookDateCleared;
	}

	/**
	 * @return the textbookRemark
	 */
	public String getTextbookRemark() {
		return textbookRemark;
	}

	/**
	 * @param textbookRemark
	 *            the textbookRemark to set
	 */
	public void setTextbookRemark(String textbookRemark) {
		this.textbookRemark = textbookRemark;
	}

	/**
	 * @return the roomOfficeSignature
	 */
	public String getRoomOfficeSignature() {
		return roomOfficeSignature;
	}

	/**
	 * @param roomOfficeSignature
	 *            the roomOfficeSignature to set
	 */
	public void setRoomOfficeSignature(String roomOfficeSignature) {
		this.roomOfficeSignature = roomOfficeSignature;
	}

	/**
	 * @return the roomOfficeDateCleared
	 */
	public Date getRoomOfficeDateCleared() {
		return roomOfficeDateCleared;
	}

	/**
	 * @param roomOfficeDateCleared
	 *            the roomOfficeDateCleared to set
	 */
	public void setRoomOfficeDateCleared(Date roomOfficeDateCleared) {
		this.roomOfficeDateCleared = roomOfficeDateCleared;
	}

	/**
	 * @return the roomOfficeRemark
	 */
	public String getRoomOfficeRemark() {
		return roomOfficeRemark;
	}

	/**
	 * @param roomOfficeRemark
	 *            the roomOfficeRemark to set
	 */
	public void setRoomOfficeRemark(String roomOfficeRemark) {
		this.roomOfficeRemark = roomOfficeRemark;
	}

	/**
	 * @return the propertyFinanceSignature
	 */
	public String getPropertyFinanceSignature() {
		return propertyFinanceSignature;
	}

	/**
	 * @param propertyFinanceSignature
	 *            the propertyFinanceSignature to set
	 */
	public void setPropertyFinanceSignature(String propertyFinanceSignature) {
		this.propertyFinanceSignature = propertyFinanceSignature;
	}

	/**
	 * @return the propertyFinanceDateCleared
	 */
	public Date getPropertyFinanceDateCleared() {
		return propertyFinanceDateCleared;
	}

	/**
	 * @param propertyFinanceDateCleared
	 *            the propertyFinanceDateCleared to set
	 */
	public void setPropertyFinanceDateCleared(Date propertyFinanceDateCleared) {
		this.propertyFinanceDateCleared = propertyFinanceDateCleared;
	}

	/**
	 * @return the propertyFinanceRemark
	 */
	public String getPropertyFinanceRemark() {
		return propertyFinanceRemark;
	}

	/**
	 * @param propertyFinanceRemark
	 *            the propertyFinanceRemark to set
	 */
	public void setPropertyFinanceRemark(String propertyFinanceRemark) {
		this.propertyFinanceRemark = propertyFinanceRemark;
	}

	/**
	 * @return the accountsUtilitiesSignature
	 */
	public String getAccountsUtilitiesSignature() {
		return accountsUtilitiesSignature;
	}

	/**
	 * @param accountsUtilitiesSignature
	 *            the accountsUtilitiesSignature to set
	 */
	public void setAccountsUtilitiesSignature(String accountsUtilitiesSignature) {
		this.accountsUtilitiesSignature = accountsUtilitiesSignature;
	}

	/**
	 * @return the accountsUtilitiesDateCleared
	 */
	public Date getAccountsUtilitiesDateCleared() {
		return accountsUtilitiesDateCleared;
	}

	/**
	 * @param accountsUtilitiesDateCleared
	 *            the accountsUtilitiesDateCleared to set
	 */
	public void setAccountsUtilitiesDateCleared(
			Date accountsUtilitiesDateCleared) {
		this.accountsUtilitiesDateCleared = accountsUtilitiesDateCleared;
	}

	/**
	 * @return the accountsUtilitiesRemark
	 */
	public String getAccountsUtilitiesRemark() {
		return accountsUtilitiesRemark;
	}

	/**
	 * @param accountsUtilitiesRemark
	 *            the accountsUtilitiesRemark to set
	 */
	public void setAccountsUtilitiesRemark(String accountsUtilitiesRemark) {
		this.accountsUtilitiesRemark = accountsUtilitiesRemark;
	}

	/**
	 * @return the purchasingSignature
	 */
	public String getPurchasingSignature() {
		return purchasingSignature;
	}

	/**
	 * @param purchasingSignature
	 *            the purchasingSignature to set
	 */
	public void setPurchasingSignature(String purchasingSignature) {
		this.purchasingSignature = purchasingSignature;
	}

	/**
	 * @return the purchasingDateCleared
	 */
	public Date getPurchasingDateCleared() {
		return purchasingDateCleared;
	}

	/**
	 * @param purchasingDateCleared
	 *            the purchasingDateCleared to set
	 */
	public void setPurchasingDateCleared(Date purchasingDateCleared) {
		this.purchasingDateCleared = purchasingDateCleared;
	}

	/**
	 * @return the purchasingRemark
	 */
	public String getPurchasingRemark() {
		return purchasingRemark;
	}

	/**
	 * @param purchasingRemark
	 *            the purchasingRemark to set
	 */
	public void setPurchasingRemark(String purchasingRemark) {
		this.purchasingRemark = purchasingRemark;
	}

	/**
	 * @return the personnelBenefitsSignature
	 */
	public String getPersonnelBenefitsSignature() {
		return personnelBenefitsSignature;
	}

	/**
	 * @param personnelBenefitsSignature
	 *            the personnelBenefitsSignature to set
	 */
	public void setPersonnelBenefitsSignature(String personnelBenefitsSignature) {
		this.personnelBenefitsSignature = personnelBenefitsSignature;
	}

	/**
	 * @return the personnelBenefitsDateCleared
	 */
	public Date getPersonnelBenefitsDateCleared() {
		return personnelBenefitsDateCleared;
	}

	/**
	 * @param personnelBenefitsDateCleared
	 *            the personnelBenefitsDateCleared to set
	 */
	public void setPersonnelBenefitsDateCleared(
			Date personnelBenefitsDateCleared) {
		this.personnelBenefitsDateCleared = personnelBenefitsDateCleared;
	}

	/**
	 * @return the personnelBenefitsRemark
	 */
	public String getPersonnelBenefitsRemark() {
		return personnelBenefitsRemark;
	}

	/**
	 * @param personnelBenefitsRemark
	 *            the personnelBenefitsRemark to set
	 */
	public void setPersonnelBenefitsRemark(String personnelBenefitsRemark) {
		this.personnelBenefitsRemark = personnelBenefitsRemark;
	}

	/**
	 * @return the maintainanceTransportSignature
	 */
	public String getMaintainanceTransportSignature() {
		return maintainanceTransportSignature;
	}

	/**
	 * @param maintainanceTransportSignature
	 *            the maintainanceTransportSignature to set
	 */
	public void setMaintainanceTransportSignature(
			String maintainanceTransportSignature) {
		this.maintainanceTransportSignature = maintainanceTransportSignature;
	}

	/**
	 * @return the maintainanceTransportDateCleared
	 */
	public Date getMaintainanceTransportDateCleared() {
		return maintainanceTransportDateCleared;
	}

	/**
	 * @param maintainanceTransportDateCleared
	 *            the maintainanceTransportDateCleared to set
	 */
	public void setMaintainanceTransportDateCleared(
			Date maintainanceTransportDateCleared) {
		this.maintainanceTransportDateCleared = maintainanceTransportDateCleared;
	}

	/**
	 * @return the maintainanceTransportRemark
	 */
	public String getMaintainanceTransportRemark() {
		return maintainanceTransportRemark;
	}

	/**
	 * @param maintainanceTransportRemark
	 *            the maintainanceTransportRemark to set
	 */
	public void setMaintainanceTransportRemark(
			String maintainanceTransportRemark) {
		this.maintainanceTransportRemark = maintainanceTransportRemark;
	}

	/**
	 * @return the itSignature
	 */
	public String getItSignature() {
		return itSignature;
	}

	/**
	 * @param itSignature
	 *            the itSignature to set
	 */
	public void setItSignature(String itSignature) {
		this.itSignature = itSignature;
	}

	/**
	 * @return the itSignatureDateCleared
	 */
	public Date getItSignatureDateCleared() {
		return itSignatureDateCleared;
	}

	/**
	 * @param itSignatureDateCleared
	 *            the itSignatureDateCleared to set
	 */
	public void setItSignatureDateCleared(Date itSignatureDateCleared) {
		this.itSignatureDateCleared = itSignatureDateCleared;
	}

	/**
	 * @return the itRemark
	 */
	public String getItRemark() {
		return itRemark;
	}

	/**
	 * @param itRemark
	 *            the itRemark to set
	 */
	public void setItRemark(String itRemark) {
		this.itRemark = itRemark;
	}

	/**
	 * @return the modifiedBy
	 */
	public int getModifiedBy() {
		return modifiedBy;
	}

	/**
	 * @param modifiedBy
	 *            the modifiedBy to set
	 */
	public void setModifiedBy(int modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	/**
	 * @return the modificationDate
	 */
	public Date getModificationDate() {
		return modificationDate;
	}

	/**
	 * @param modificationDate
	 *            the modificationDate to set
	 */
	public void setModificationDate(Date modificationDate) {
		this.modificationDate = modificationDate;
	}
	
	

	/**
	 * @return the clearedForFinalPayment
	 */
	public String getClearedForFinalPayment() {
		return clearedForFinalPayment;
	}

	/**
	 * @param clearedForFinalPayment the clearedForFinalPayment to set
	 */
	public void setClearedForFinalPayment(String clearedForFinalPayment) {
		this.clearedForFinalPayment = clearedForFinalPayment;
	}

	public void save() {
		try {
			String sqlStr = "insert into tbl_departing_employee_checkout_form values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setString(3, this.getReasonForLeaving());
			pStmt.setString(4, this.getOtherCauses());
			pStmt.setString(5, this.getLibraryBooksSignature());
			pStmt.setDate(6, this.getLibraryBooksDateCleared());
			pStmt.setString(7, this.getLibraryBooksRemark());
			pStmt.setString(8, this.getCurriculumNotesSignature());
			pStmt.setDate(9, this.getCurriculumNotesDateCleared());
			pStmt.setString(10, this.getCurriculumNotesRemark());
			pStmt.setString(11, this.getTextbookSignature());
			pStmt.setDate(12, this.getTextbookDateCleared());
			pStmt.setString(13, this.getTextbookRemark());
			pStmt.setString(14, this.getRoomOfficeSignature());
			pStmt.setDate(15, this.getRoomOfficeDateCleared());
			pStmt.setString(16, this.getRoomOfficeRemark());
			pStmt.setString(17, this.getPropertyFinanceSignature());
			pStmt.setDate(18, this.getPropertyFinanceDateCleared());
			pStmt.setString(19, this.getPropertyFinanceRemark());
			pStmt.setString(20, this.getAccountsUtilitiesSignature());
			pStmt.setDate(21, this.getAccountsUtilitiesDateCleared());
			pStmt.setString(22, this.getAccountsUtilitiesRemark());
			pStmt.setString(23, this.getPurchasingSignature());
			pStmt.setDate(24, this.getPurchasingDateCleared());
			pStmt.setString(25, this.getPurchasingRemark());
			pStmt.setString(26, this.getPersonnelBenefitsSignature());
			pStmt.setDate(27, this.getPersonnelBenefitsDateCleared());
			pStmt.setString(28, this.getPersonnelBenefitsRemark());
			pStmt.setString(29,this.getMaintainanceTransportSignature());
			pStmt.setDate(30, this.getMaintainanceTransportDateCleared());
			pStmt.setString(31, this.getMaintainanceTransportRemark());
			pStmt.setString(32, this.getItSignature());
			pStmt.setDate(33, this.getItSignatureDateCleared());
			pStmt.setString(34, this.getItRemark());
			pStmt.setString(35, this.getClearedForFinalPayment());
			pStmt.setInt(36, this.getModifiedBy());
			pStmt.setDate(37, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(DepartingEmployeeCheckoutForm departingEmployeeCheckoutForm) {
		try {
			String sqlStr = "update tbl_departing_employee_checkout_form set employee_id = ?," +
					"reason_for_leaving = ?, other_causes = ?, library_books_signature = ?," +
					"library_books_date_cleared = ?, library_books_remark = ?, curriculum_notes_signature = ?," +
					"curriculum_date_cleared = ?, curriculum_remark = ?, textbook_signature = ?," +
					"textbook_date_cleared = ?, textbook_remark = ?, room_office_signature = ?," +
					"room_office_date_cleared = ?, room_office_remark = ?, property_finance_signature = ?," +
					"property_finance_date_cleared = ?, property_finance_remark = ?, accounts_utilities_signature = ?," +
					"accounts_utilities_date_cleared = ?, accounts_utilities_remark = ?, purchasing_signature = ?," +
					"purchasing_date_cleared = ?, purchasing_remark = ?, personnel_benefits_signature = ?," +
					"personnel_benefits_date_cleared = ?, personnel_benefits_remark = ?, maintainance_transport_signature = ?," +
					"maintainance_transport_date_cleared = ?, maintainance_remark = ?, it_signature = ?," +
					"it_date_cleared = ?, it_remark = ?, cleared_for_final_payment = ?, modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, departingEmployeeCheckoutForm.getEmployeeId());
			pStmt.setString(2, departingEmployeeCheckoutForm.getReasonForLeaving());
			pStmt.setString(3, departingEmployeeCheckoutForm.getOtherCauses());
			pStmt.setString(4, departingEmployeeCheckoutForm.getLibraryBooksSignature());
			pStmt.setDate(5, departingEmployeeCheckoutForm.getLibraryBooksDateCleared());
			pStmt.setString(6, departingEmployeeCheckoutForm.getLibraryBooksRemark());
			pStmt.setString(7, departingEmployeeCheckoutForm.getCurriculumNotesSignature());
			pStmt.setDate(8, departingEmployeeCheckoutForm.getCurriculumNotesDateCleared());
			pStmt.setString(9, departingEmployeeCheckoutForm.getCurriculumNotesRemark());
			pStmt.setString(10, departingEmployeeCheckoutForm.getTextbookSignature());
			pStmt.setDate(11, departingEmployeeCheckoutForm.getTextbookDateCleared());
			pStmt.setString(12, departingEmployeeCheckoutForm.getTextbookRemark());
			pStmt.setString(13, departingEmployeeCheckoutForm.getRoomOfficeSignature());
			pStmt.setDate(14, departingEmployeeCheckoutForm.getRoomOfficeDateCleared());
			pStmt.setString(15, departingEmployeeCheckoutForm.getRoomOfficeRemark());
			pStmt.setString(16, departingEmployeeCheckoutForm.getPropertyFinanceSignature());
			pStmt.setDate(17, departingEmployeeCheckoutForm.getPropertyFinanceDateCleared());
			pStmt.setString(18, departingEmployeeCheckoutForm.getPropertyFinanceRemark());
			pStmt.setString(19, departingEmployeeCheckoutForm.getAccountsUtilitiesSignature());
			pStmt.setDate(20, departingEmployeeCheckoutForm.getAccountsUtilitiesDateCleared());
			pStmt.setString(21, departingEmployeeCheckoutForm.getAccountsUtilitiesRemark());
			pStmt.setString(22, departingEmployeeCheckoutForm.getPurchasingSignature());
			pStmt.setDate(23, departingEmployeeCheckoutForm.getPurchasingDateCleared());
			pStmt.setString(24, departingEmployeeCheckoutForm.getPurchasingRemark());
			pStmt.setString(25, departingEmployeeCheckoutForm.getPersonnelBenefitsSignature());
			pStmt.setDate(26, departingEmployeeCheckoutForm.getPersonnelBenefitsDateCleared());
			pStmt.setString(27, departingEmployeeCheckoutForm.getPersonnelBenefitsRemark());
			pStmt.setString(28, departingEmployeeCheckoutForm.getMaintainanceTransportSignature());
			pStmt.setDate(29, departingEmployeeCheckoutForm.getMaintainanceTransportDateCleared());
			pStmt.setString(30, departingEmployeeCheckoutForm.getMaintainanceTransportRemark());
			pStmt.setString(31, departingEmployeeCheckoutForm.getItSignature());
			pStmt.setDate(32, departingEmployeeCheckoutForm.getItSignatureDateCleared());
			pStmt.setString(33, departingEmployeeCheckoutForm.getItRemark());
			pStmt.setString(34, departingEmployeeCheckoutForm.getClearedForFinalPayment());
			pStmt.setInt(35, departingEmployeeCheckoutForm.getModifiedBy());
			pStmt.setDate(36, departingEmployeeCheckoutForm.getModificationDate());
			pStmt.setLong(37, departingEmployeeCheckoutForm.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String command = "delete from tbl_departing_employee_checkout_form where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<DepartingEmployeeCheckoutForm> getAllDepartingEmployeeCheckoutForms() {
		List<DepartingEmployeeCheckoutForm> list = new ArrayList<DepartingEmployeeCheckoutForm>();
		DepartingEmployeeCheckoutForm departingEmployeeCheckoutForm = null;
		try {
			String query = "select * from tbl_departing_employee_checkout_form order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				departingEmployeeCheckoutForm = new DepartingEmployeeCheckoutForm(rSet.getLong("id"), 
						rSet.getLong("employee_id"), rSet.getString("reason_for_leaving"), rSet.getString("other_causes"), 
						rSet.getString("library_books_signature"), rSet.getDate("library_books_date_cleared"), rSet.getString("library_books_remark"), 
						rSet.getString("curriculum_notes_signature"), rSet.getDate("curriculum_date_cleared"), 
						rSet.getString("curriculum_remark"), rSet.getString("textbook_signature"), 
						rSet.getDate("textbook_date_cleared"), rSet.getString("textbook_remark"), 
						rSet.getString("room_office_signature"), rSet.getDate("room_office_date_cleared"), 
						rSet.getString("room_office_remark"), rSet.getString("property_finance_signature"), 
						rSet.getDate("property_finance_date_cleared"), rSet.getString("property_finance_remark"), 
						rSet.getString("accounts_utilities_signature"), rSet.getDate("accounts_utilities_date_cleared"), 
						rSet.getString("accounts_utilities_remark"), rSet.getString("purchasing_signature"), 
						rSet.getDate("purchasing_date_cleared"), rSet.getString("purchasing_remark"), 
						rSet.getString("personnel_benefits_signature"), rSet.getDate("personnel_benefits_date_cleared"), 
						rSet.getString("personnel_benefits_remark"), rSet.getString("maintainance_transport_signature"), 
						rSet.getDate("maintainance_transport_date_cleared"), rSet.getString("maintainance_remark"), 
						rSet.getString("it_signature"), rSet.getDate("it_date_cleared"), 
						rSet.getString("it_remark"), rSet.getString("cleared_for_final_payment"),rSet.getInt("modified_by"), 
						rSet.getDate("modification_date"));
				list.add(departingEmployeeCheckoutForm);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static DepartingEmployeeCheckoutForm getDepartingEmployeeCheckoutForm(long id) {
		DepartingEmployeeCheckoutForm departingEmployeeCheckoutForm = null;
		try {
			String query = "select * from tbl_departing_employee_checkout_form where id = "+id;			
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				departingEmployeeCheckoutForm = new DepartingEmployeeCheckoutForm(rSet.getLong("id"), 
						rSet.getLong("employee_id"), rSet.getString("reason_for_leaving"), rSet.getString("other_causes"), 
						rSet.getString("library_books_signature"), rSet.getDate("library_books_date_cleared"), rSet.getString("library_books_remark"), 
						rSet.getString("curriculum_notes_signature"), rSet.getDate("curriculum_date_cleared"), 
						rSet.getString("curriculum_remark"), rSet.getString("textbook_signature"), 
						rSet.getDate("textbook_date_cleared"), rSet.getString("textbook_remark"), 
						rSet.getString("room_office_signature"), rSet.getDate("room_office_date_cleared"), 
						rSet.getString("room_office_remark"), rSet.getString("property_finance_signature"), 
						rSet.getDate("property_finance_date_cleared"), rSet.getString("property_finance_remark"), 
						rSet.getString("accounts_utilities_signature"), rSet.getDate("accounts_utilities_date_cleared"), 
						rSet.getString("accounts_utilities_remark"), rSet.getString("purchasing_signature"), 
						rSet.getDate("purchasing_date_cleared"), rSet.getString("purchasing_remark"), 
						rSet.getString("personnel_benefits_signature"), rSet.getDate("personnel_benefits_date_cleared"), 
						rSet.getString("personnel_benefits_remark"), rSet.getString("maintainance_transport_signature"), 
						rSet.getDate("maintainance_transport_date_cleared"), rSet.getString("maintainance_remark"), 
						rSet.getString("it_signature"), rSet.getDate("it_date_cleared"), 
						rSet.getString("it_remark"), rSet.getString("cleared_for_final_payment"),rSet.getInt("modified_by"), 
						rSet.getDate("modification_date"));			
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return departingEmployeeCheckoutForm;
	}
}// end class
