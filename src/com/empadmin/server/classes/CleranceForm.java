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
public class CleranceForm {
	private long id;
	private long employeeId;
	private Date terminationDate;
	private String immediateSupervisorName;
	private String immediateSupervisorCleared;
	private Date immediateSupervisorClearanceDate;
	private String immediateSupervisorRemark;
	private String libraryHeadName;
	private String libraryHeadCleared;
	private Date libraryHeadClearanceDate;
	private String libraryHeadRemark;
	private String financeHeadName;
	private String financeHeadCleared;
	private Date financeHeadClearanceDate;
	private String financeHeadRemark;
	private String propertyHousingName;
	private String propertyHousingCleared;
	private Date propertyHousingClearanceDate;
	private String propertyHousingRemark;
	private String accountsBudgetName;
	private String accountsBudgetCleared;
	private Date accountsBudgetClearanceDate;
	private String accountsBudgetRemark;
	private String procurmentName;
	private String procurmentCleared;
	private Date procurmentClearanceDate;
	private String procurmentRemark;
	private String hrHeadName;
	private String hrHeadCleared;
	private Date hrHeadClearanceDate;
	private String hrHeadRemark;
	private String personnelBenefitsName;
	private String personnelBenefitsCleared;
	private Date personnelBenefitsClearanceDate;
	private String personnelBenefitsRemark;
	private String maintainanceGeneralServiceName;
	private String maintainanceGeneralServiceCleared;
	private Date maintainanceGeneralServiceClearanceDate;
	private String maintainanceGeneralServiceRemark;
	private String itName;
	private String itCleared;
	private Date itClearanceDate;
	private String itRemark;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public CleranceForm() {
	}

	/**
	 * @param employeeId
	 * @param terminationDate
	 * @param immediateSupervisorName
	 * @param immediateSupervisorCleared
	 * @param immediateSupervisorClearanceDate
	 * @param immediateSupervisorRemark
	 * @param libraryHeadName
	 * @param libraryHeadCleared
	 * @param libraryHeadClearanceDate
	 * @param libraryHeadRemark
	 * @param financeHeadName
	 * @param financeHeadCleared
	 * @param financeHeadClearanceDate
	 * @param financeHeadRemark
	 * @param propertyHousingName
	 * @param propertyHousingCleared
	 * @param propertyHousingClearanceDate
	 * @param propertyHousingRemark
	 * @param accountsBudgetName
	 * @param accountsBudgetCleared
	 * @param accountsBudgetClearanceDate
	 * @param accountsBudgetRemark
	 * @param procurmentName
	 * @param procurmentCleared
	 * @param procurmentClearanceDate
	 * @param procurmentRemark
	 * @param hrHeadName
	 * @param hrHeadCleared
	 * @param hrHeadClearanceDate
	 * @param hrHeadRemark
	 * @param personnelBenefitsName
	 * @param personnelBenefitsCleared
	 * @param personnelBenefitsClearanceDate
	 * @param personnelBenefitsRemark
	 * @param maintainanceGeneralServiceName
	 * @param maintainanceGeneralServiceCleared
	 * @param maintainanceGeneralServiceClearanceDate
	 * @param maintainanceGeneralServiceRemark
	 * @param itName
	 * @param itCleared
	 * @param itClearanceDate
	 * @param itRemark
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public CleranceForm(long employeeId, Date terminationDate,
			String immediateSupervisorName, String immediateSupervisorCleared,
			Date immediateSupervisorClearanceDate,
			String immediateSupervisorRemark, String libraryHeadName,
			String libraryHeadCleared, Date libraryHeadClearanceDate,
			String libraryHeadRemark, String financeHeadName,
			String financeHeadCleared, Date financeHeadClearanceDate,
			String financeHeadRemark, String propertyHousingName,
			String propertyHousingCleared, Date propertyHousingClearanceDate,
			String propertyHousingRemark, String accountsBudgetName,
			String accountsBudgetCleared, Date accountsBudgetClearanceDate,
			String accountsBudgetRemark, String procurmentName,
			String procurmentCleared, Date procurmentClearanceDate,
			String procurmentRemark, String hrHeadName, String hrHeadCleared,
			Date hrHeadClearanceDate, String hrHeadRemark,
			String personnelBenefitsName, String personnelBenefitsCleared,
			Date personnelBenefitsClearanceDate,
			String personnelBenefitsRemark,
			String maintainanceGeneralServiceName,
			String maintainanceGeneralServiceCleared,
			Date maintainanceGeneralServiceClearanceDate,
			String maintainanceGeneralServiceRemark, String itName,
			String itCleared, Date itClearanceDate, String itRemark,
			int modifiedBy, Date modificationDate) {
		this.employeeId = employeeId;
		this.terminationDate = terminationDate;
		this.immediateSupervisorName = immediateSupervisorName;
		this.immediateSupervisorCleared = immediateSupervisorCleared;
		this.immediateSupervisorClearanceDate = immediateSupervisorClearanceDate;
		this.immediateSupervisorRemark = immediateSupervisorRemark;
		this.libraryHeadName = libraryHeadName;
		this.libraryHeadCleared = libraryHeadCleared;
		this.libraryHeadClearanceDate = libraryHeadClearanceDate;
		this.libraryHeadRemark = libraryHeadRemark;
		this.financeHeadName = financeHeadName;
		this.financeHeadCleared = financeHeadCleared;
		this.financeHeadClearanceDate = financeHeadClearanceDate;
		this.financeHeadRemark = financeHeadRemark;
		this.propertyHousingName = propertyHousingName;
		this.propertyHousingCleared = propertyHousingCleared;
		this.propertyHousingClearanceDate = propertyHousingClearanceDate;
		this.propertyHousingRemark = propertyHousingRemark;
		this.accountsBudgetName = accountsBudgetName;
		this.accountsBudgetCleared = accountsBudgetCleared;
		this.accountsBudgetClearanceDate = accountsBudgetClearanceDate;
		this.accountsBudgetRemark = accountsBudgetRemark;
		this.procurmentName = procurmentName;
		this.procurmentCleared = procurmentCleared;
		this.procurmentClearanceDate = procurmentClearanceDate;
		this.procurmentRemark = procurmentRemark;
		this.hrHeadName = hrHeadName;
		this.hrHeadCleared = hrHeadCleared;
		this.hrHeadClearanceDate = hrHeadClearanceDate;
		this.hrHeadRemark = hrHeadRemark;
		this.personnelBenefitsName = personnelBenefitsName;
		this.personnelBenefitsCleared = personnelBenefitsCleared;
		this.personnelBenefitsClearanceDate = personnelBenefitsClearanceDate;
		this.personnelBenefitsRemark = personnelBenefitsRemark;
		this.maintainanceGeneralServiceName = maintainanceGeneralServiceName;
		this.maintainanceGeneralServiceCleared = maintainanceGeneralServiceCleared;
		this.maintainanceGeneralServiceClearanceDate = maintainanceGeneralServiceClearanceDate;
		this.maintainanceGeneralServiceRemark = maintainanceGeneralServiceRemark;
		this.itName = itName;
		this.itCleared = itCleared;
		this.itClearanceDate = itClearanceDate;
		this.itRemark = itRemark;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param terminationDate
	 * @param immediateSupervisorName
	 * @param immediateSupervisorCleared
	 * @param immediateSupervisorClearanceDate
	 * @param immediateSupervisorRemark
	 * @param libraryHeadName
	 * @param libraryHeadCleared
	 * @param libraryHeadClearanceDate
	 * @param libraryHeadRemark
	 * @param financeHeadName
	 * @param financeHeadCleared
	 * @param financeHeadClearanceDate
	 * @param financeHeadRemark
	 * @param propertyHousingName
	 * @param propertyHousingCleared
	 * @param propertyHousingClearanceDate
	 * @param propertyHousingRemark
	 * @param accountsBudgetName
	 * @param accountsBudgetCleared
	 * @param accountsBudgetClearanceDate
	 * @param accountsBudgetRemark
	 * @param procurmentName
	 * @param procurmentCleared
	 * @param procurmentClearanceDate
	 * @param procurmentRemark
	 * @param hrHeadName
	 * @param hrHeadCleared
	 * @param hrHeadClearanceDate
	 * @param hrHeadRemark
	 * @param personnelBenefitsName
	 * @param personnelBenefitsCleared
	 * @param personnelBenefitsClearanceDate
	 * @param personnelBenefitsRemark
	 * @param maintainanceGeneralServiceName
	 * @param maintainanceGeneralServiceCleared
	 * @param maintainanceGeneralServiceClearanceDate
	 * @param maintainanceGeneralServiceRemark
	 * @param itName
	 * @param itCleared
	 * @param itClearanceDate
	 * @param itRemark
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public CleranceForm(long id, long employeeId, Date terminationDate,
			String immediateSupervisorName, String immediateSupervisorCleared,
			Date immediateSupervisorClearanceDate,
			String immediateSupervisorRemark, String libraryHeadName,
			String libraryHeadCleared, Date libraryHeadClearanceDate,
			String libraryHeadRemark, String financeHeadName,
			String financeHeadCleared, Date financeHeadClearanceDate,
			String financeHeadRemark, String propertyHousingName,
			String propertyHousingCleared, Date propertyHousingClearanceDate,
			String propertyHousingRemark, String accountsBudgetName,
			String accountsBudgetCleared, Date accountsBudgetClearanceDate,
			String accountsBudgetRemark, String procurmentName,
			String procurmentCleared, Date procurmentClearanceDate,
			String procurmentRemark, String hrHeadName, String hrHeadCleared,
			Date hrHeadClearanceDate, String hrHeadRemark,
			String personnelBenefitsName, String personnelBenefitsCleared,
			Date personnelBenefitsClearanceDate,
			String personnelBenefitsRemark,
			String maintainanceGeneralServiceName,
			String maintainanceGeneralServiceCleared,
			Date maintainanceGeneralServiceClearanceDate,
			String maintainanceGeneralServiceRemark, String itName,
			String itCleared, Date itClearanceDate, String itRemark,
			int modifiedBy, Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.terminationDate = terminationDate;
		this.immediateSupervisorName = immediateSupervisorName;
		this.immediateSupervisorCleared = immediateSupervisorCleared;
		this.immediateSupervisorClearanceDate = immediateSupervisorClearanceDate;
		this.immediateSupervisorRemark = immediateSupervisorRemark;
		this.libraryHeadName = libraryHeadName;
		this.libraryHeadCleared = libraryHeadCleared;
		this.libraryHeadClearanceDate = libraryHeadClearanceDate;
		this.libraryHeadRemark = libraryHeadRemark;
		this.financeHeadName = financeHeadName;
		this.financeHeadCleared = financeHeadCleared;
		this.financeHeadClearanceDate = financeHeadClearanceDate;
		this.financeHeadRemark = financeHeadRemark;
		this.propertyHousingName = propertyHousingName;
		this.propertyHousingCleared = propertyHousingCleared;
		this.propertyHousingClearanceDate = propertyHousingClearanceDate;
		this.propertyHousingRemark = propertyHousingRemark;
		this.accountsBudgetName = accountsBudgetName;
		this.accountsBudgetCleared = accountsBudgetCleared;
		this.accountsBudgetClearanceDate = accountsBudgetClearanceDate;
		this.accountsBudgetRemark = accountsBudgetRemark;
		this.procurmentName = procurmentName;
		this.procurmentCleared = procurmentCleared;
		this.procurmentClearanceDate = procurmentClearanceDate;
		this.procurmentRemark = procurmentRemark;
		this.hrHeadName = hrHeadName;
		this.hrHeadCleared = hrHeadCleared;
		this.hrHeadClearanceDate = hrHeadClearanceDate;
		this.hrHeadRemark = hrHeadRemark;
		this.personnelBenefitsName = personnelBenefitsName;
		this.personnelBenefitsCleared = personnelBenefitsCleared;
		this.personnelBenefitsClearanceDate = personnelBenefitsClearanceDate;
		this.personnelBenefitsRemark = personnelBenefitsRemark;
		this.maintainanceGeneralServiceName = maintainanceGeneralServiceName;
		this.maintainanceGeneralServiceCleared = maintainanceGeneralServiceCleared;
		this.maintainanceGeneralServiceClearanceDate = maintainanceGeneralServiceClearanceDate;
		this.maintainanceGeneralServiceRemark = maintainanceGeneralServiceRemark;
		this.itName = itName;
		this.itCleared = itCleared;
		this.itClearanceDate = itClearanceDate;
		this.itRemark = itRemark;
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
	 * @return the terminationDate
	 */
	public Date getTerminationDate() {
		return terminationDate;
	}

	/**
	 * @param terminationDate
	 *            the terminationDate to set
	 */
	public void setTerminationDate(Date terminationDate) {
		this.terminationDate = terminationDate;
	}

	/**
	 * @return the immediateSupervisorName
	 */
	public String getImmediateSupervisorName() {
		return immediateSupervisorName;
	}

	/**
	 * @param immediateSupervisorName
	 *            the immediateSupervisorName to set
	 */
	public void setImmediateSupervisorName(String immediateSupervisorName) {
		this.immediateSupervisorName = immediateSupervisorName;
	}

	/**
	 * @return the immediateSupervisorCleared
	 */
	public String getImmediateSupervisorCleared() {
		return immediateSupervisorCleared;
	}

	/**
	 * @param immediateSupervisorCleared
	 *            the immediateSupervisorCleared to set
	 */
	public void setImmediateSupervisorCleared(String immediateSupervisorCleared) {
		this.immediateSupervisorCleared = immediateSupervisorCleared;
	}

	/**
	 * @return the immediateSupervisorClearanceDate
	 */
	public Date getImmediateSupervisorClearanceDate() {
		return immediateSupervisorClearanceDate;
	}

	/**
	 * @param immediateSupervisorClearanceDate
	 *            the immediateSupervisorClearanceDate to set
	 */
	public void setImmediateSupervisorClearanceDate(
			Date immediateSupervisorClearanceDate) {
		this.immediateSupervisorClearanceDate = immediateSupervisorClearanceDate;
	}

	/**
	 * @return the immediateSupervisorRemark
	 */
	public String getImmediateSupervisorRemark() {
		return immediateSupervisorRemark;
	}

	/**
	 * @param immediateSupervisorRemark
	 *            the immediateSupervisorRemark to set
	 */
	public void setImmediateSupervisorRemark(String immediateSupervisorRemark) {
		this.immediateSupervisorRemark = immediateSupervisorRemark;
	}

	/**
	 * @return the libraryHeadName
	 */
	public String getLibraryHeadName() {
		return libraryHeadName;
	}

	/**
	 * @param libraryHeadName
	 *            the libraryHeadName to set
	 */
	public void setLibraryHeadName(String libraryHeadName) {
		this.libraryHeadName = libraryHeadName;
	}

	/**
	 * @return the libraryHeadCleared
	 */
	public String getLibraryHeadCleared() {
		return libraryHeadCleared;
	}

	/**
	 * @param libraryHeadCleared
	 *            the libraryHeadCleared to set
	 */
	public void setLibraryHeadCleared(String libraryHeadCleared) {
		this.libraryHeadCleared = libraryHeadCleared;
	}

	/**
	 * @return the libraryHeadClearanceDate
	 */
	public Date getLibraryHeadClearanceDate() {
		return libraryHeadClearanceDate;
	}

	/**
	 * @param libraryHeadClearanceDate
	 *            the libraryHeadClearanceDate to set
	 */
	public void setLibraryHeadClearanceDate(Date libraryHeadClearanceDate) {
		this.libraryHeadClearanceDate = libraryHeadClearanceDate;
	}

	/**
	 * @return the libraryHeadRemark
	 */
	public String getLibraryHeadRemark() {
		return libraryHeadRemark;
	}

	/**
	 * @param libraryHeadRemark
	 *            the libraryHeadRemark to set
	 */
	public void setLibraryHeadRemark(String libraryHeadRemark) {
		this.libraryHeadRemark = libraryHeadRemark;
	}

	/**
	 * @return the financeHeadName
	 */
	public String getFinanceHeadName() {
		return financeHeadName;
	}

	/**
	 * @param financeHeadName
	 *            the financeHeadName to set
	 */
	public void setFinanceHeadName(String financeHeadName) {
		this.financeHeadName = financeHeadName;
	}

	/**
	 * @return the financeHeadCleared
	 */
	public String getFinanceHeadCleared() {
		return financeHeadCleared;
	}

	/**
	 * @param financeHeadCleared
	 *            the financeHeadCleared to set
	 */
	public void setFinanceHeadCleared(String financeHeadCleared) {
		this.financeHeadCleared = financeHeadCleared;
	}

	/**
	 * @return the financeHeadClearanceDate
	 */
	public Date getFinanceHeadClearanceDate() {
		return financeHeadClearanceDate;
	}

	/**
	 * @param financeHeadClearanceDate
	 *            the financeHeadClearanceDate to set
	 */
	public void setFinanceHeadClearanceDate(Date financeHeadClearanceDate) {
		this.financeHeadClearanceDate = financeHeadClearanceDate;
	}

	/**
	 * @return the financeHeadRemark
	 */
	public String getFinanceHeadRemark() {
		return financeHeadRemark;
	}

	/**
	 * @param financeHeadRemark
	 *            the financeHeadRemark to set
	 */
	public void setFinanceHeadRemark(String financeHeadRemark) {
		this.financeHeadRemark = financeHeadRemark;
	}

	/**
	 * @return the propertyHousingName
	 */
	public String getPropertyHousingName() {
		return propertyHousingName;
	}

	/**
	 * @param propertyHousingName
	 *            the propertyHousingName to set
	 */
	public void setPropertyHousingName(String propertyHousingName) {
		this.propertyHousingName = propertyHousingName;
	}

	/**
	 * @return the propertyHousingCleared
	 */
	public String getPropertyHousingCleared() {
		return propertyHousingCleared;
	}

	/**
	 * @param propertyHousingCleared
	 *            the propertyHousingCleared to set
	 */
	public void setPropertyHousingCleared(String propertyHousingCleared) {
		this.propertyHousingCleared = propertyHousingCleared;
	}

	/**
	 * @return the propertyHousingClearanceDate
	 */
	public Date getPropertyHousingClearanceDate() {
		return propertyHousingClearanceDate;
	}

	/**
	 * @param propertyHousingClearanceDate
	 *            the propertyHousingClearanceDate to set
	 */
	public void setPropertyHousingClearanceDate(
			Date propertyHousingClearanceDate) {
		this.propertyHousingClearanceDate = propertyHousingClearanceDate;
	}

	/**
	 * @return the propertyHousingRemark
	 */
	public String getPropertyHousingRemark() {
		return propertyHousingRemark;
	}

	/**
	 * @param propertyHousingRemark
	 *            the propertyHousingRemark to set
	 */
	public void setPropertyHousingRemark(String propertyHousingRemark) {
		this.propertyHousingRemark = propertyHousingRemark;
	}

	/**
	 * @return the accountsBudgetName
	 */
	public String getAccountsBudgetName() {
		return accountsBudgetName;
	}

	/**
	 * @param accountsBudgetName
	 *            the accountsBudgetName to set
	 */
	public void setAccountsBudgetName(String accountsBudgetName) {
		this.accountsBudgetName = accountsBudgetName;
	}

	/**
	 * @return the accountsBudgetCleared
	 */
	public String getAccountsBudgetCleared() {
		return accountsBudgetCleared;
	}

	/**
	 * @param accountsBudgetCleared
	 *            the accountsBudgetCleared to set
	 */
	public void setAccountsBudgetCleared(String accountsBudgetCleared) {
		this.accountsBudgetCleared = accountsBudgetCleared;
	}

	/**
	 * @return the accountsBudgetClearanceDate
	 */
	public Date getAccountsBudgetClearanceDate() {
		return accountsBudgetClearanceDate;
	}

	/**
	 * @param accountsBudgetClearanceDate
	 *            the accountsBudgetClearanceDate to set
	 */
	public void setAccountsBudgetClearanceDate(Date accountsBudgetClearanceDate) {
		this.accountsBudgetClearanceDate = accountsBudgetClearanceDate;
	}

	/**
	 * @return the accountsBudgetRemark
	 */
	public String getAccountsBudgetRemark() {
		return accountsBudgetRemark;
	}

	/**
	 * @param accountsBudgetRemark
	 *            the accountsBudgetRemark to set
	 */
	public void setAccountsBudgetRemark(String accountsBudgetRemark) {
		this.accountsBudgetRemark = accountsBudgetRemark;
	}

	/**
	 * @return the procurmentName
	 */
	public String getProcurmentName() {
		return procurmentName;
	}

	/**
	 * @param procurmentName
	 *            the procurmentName to set
	 */
	public void setProcurmentName(String procurmentName) {
		this.procurmentName = procurmentName;
	}

	/**
	 * @return the procurmentCleared
	 */
	public String getProcurmentCleared() {
		return procurmentCleared;
	}

	/**
	 * @param procurmentCleared
	 *            the procurmentCleared to set
	 */
	public void setProcurmentCleared(String procurmentCleared) {
		this.procurmentCleared = procurmentCleared;
	}

	/**
	 * @return the procurmentClearanceDate
	 */
	public Date getProcurmentClearanceDate() {
		return procurmentClearanceDate;
	}

	/**
	 * @param procurmentClearanceDate
	 *            the procurmentClearanceDate to set
	 */
	public void setProcurmentClearanceDate(Date procurmentClearanceDate) {
		this.procurmentClearanceDate = procurmentClearanceDate;
	}

	/**
	 * @return the procurmentRemark
	 */
	public String getProcurmentRemark() {
		return procurmentRemark;
	}

	/**
	 * @param procurmentRemark
	 *            the procurmentRemark to set
	 */
	public void setProcurmentRemark(String procurmentRemark) {
		this.procurmentRemark = procurmentRemark;
	}

	/**
	 * @return the hrHeadName
	 */
	public String getHrHeadName() {
		return hrHeadName;
	}

	/**
	 * @param hrHeadName
	 *            the hrHeadName to set
	 */
	public void setHrHeadName(String hrHeadName) {
		this.hrHeadName = hrHeadName;
	}

	/**
	 * @return the hrHeadCleared
	 */
	public String getHrHeadCleared() {
		return hrHeadCleared;
	}

	/**
	 * @param hrHeadCleared
	 *            the hrHeadCleared to set
	 */
	public void setHrHeadCleared(String hrHeadCleared) {
		this.hrHeadCleared = hrHeadCleared;
	}

	/**
	 * @return the hrHeadClearanceDate
	 */
	public Date getHrHeadClearanceDate() {
		return hrHeadClearanceDate;
	}

	/**
	 * @param hrHeadClearanceDate
	 *            the hrHeadClearanceDate to set
	 */
	public void setHrHeadClearanceDate(Date hrHeadClearanceDate) {
		this.hrHeadClearanceDate = hrHeadClearanceDate;
	}

	/**
	 * @return the hrHeadRemark
	 */
	public String getHrHeadRemark() {
		return hrHeadRemark;
	}

	/**
	 * @param hrHeadRemark
	 *            the hrHeadRemark to set
	 */
	public void setHrHeadRemark(String hrHeadRemark) {
		this.hrHeadRemark = hrHeadRemark;
	}

	/**
	 * @return the personnelBenefitsName
	 */
	public String getPersonnelBenefitsName() {
		return personnelBenefitsName;
	}

	/**
	 * @param personnelBenefitsName
	 *            the personnelBenefitsName to set
	 */
	public void setPersonnelBenefitsName(String personnelBenefitsName) {
		this.personnelBenefitsName = personnelBenefitsName;
	}

	/**
	 * @return the personnelBenefitsCleared
	 */
	public String getPersonnelBenefitsCleared() {
		return personnelBenefitsCleared;
	}

	/**
	 * @param personnelBenefitsCleared
	 *            the personnelBenefitsCleared to set
	 */
	public void setPersonnelBenefitsCleared(String personnelBenefitsCleared) {
		this.personnelBenefitsCleared = personnelBenefitsCleared;
	}

	/**
	 * @return the personnelBenefitsClearanceDate
	 */
	public Date getPersonnelBenefitsClearanceDate() {
		return personnelBenefitsClearanceDate;
	}

	/**
	 * @param personnelBenefitsClearanceDate
	 *            the personnelBenefitsClearanceDate to set
	 */
	public void setPersonnelBenefitsClearanceDate(
			Date personnelBenefitsClearanceDate) {
		this.personnelBenefitsClearanceDate = personnelBenefitsClearanceDate;
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
	 * @return the maintainanceGeneralServiceName
	 */
	public String getMaintainanceGeneralServiceName() {
		return maintainanceGeneralServiceName;
	}

	/**
	 * @param maintainanceGeneralServiceName
	 *            the maintainanceGeneralServiceName to set
	 */
	public void setMaintainanceGeneralServiceName(
			String maintainanceGeneralServiceName) {
		this.maintainanceGeneralServiceName = maintainanceGeneralServiceName;
	}

	/**
	 * @return the maintainanceGeneralServiceCleared
	 */
	public String getMaintainanceGeneralServiceCleared() {
		return maintainanceGeneralServiceCleared;
	}

	/**
	 * @param maintainanceGeneralServiceCleared
	 *            the maintainanceGeneralServiceCleared to set
	 */
	public void setMaintainanceGeneralServiceCleared(
			String maintainanceGeneralServiceCleared) {
		this.maintainanceGeneralServiceCleared = maintainanceGeneralServiceCleared;
	}

	/**
	 * @return the maintainanceGeneralServiceClearanceDate
	 */
	public Date getMaintainanceGeneralServiceClearanceDate() {
		return maintainanceGeneralServiceClearanceDate;
	}

	/**
	 * @param maintainanceGeneralServiceClearanceDate
	 *            the maintainanceGeneralServiceClearanceDate to set
	 */
	public void setMaintainanceGeneralServiceClearanceDate(
			Date maintainanceGeneralServiceClearanceDate) {
		this.maintainanceGeneralServiceClearanceDate = maintainanceGeneralServiceClearanceDate;
	}

	/**
	 * @return the maintainanceGeneralServiceRemark
	 */
	public String getMaintainanceGeneralServiceRemark() {
		return maintainanceGeneralServiceRemark;
	}

	/**
	 * @param maintainanceGeneralServiceRemark
	 *            the maintainanceGeneralServiceRemark to set
	 */
	public void setMaintainanceGeneralServiceRemark(
			String maintainanceGeneralServiceRemark) {
		this.maintainanceGeneralServiceRemark = maintainanceGeneralServiceRemark;
	}

	/**
	 * @return the itName
	 */
	public String getItName() {
		return itName;
	}

	/**
	 * @param itName
	 *            the itName to set
	 */
	public void setItName(String itName) {
		this.itName = itName;
	}

	/**
	 * @return the itCleared
	 */
	public String getItCleared() {
		return itCleared;
	}

	/**
	 * @param itCleared
	 *            the itCleared to set
	 */
	public void setItCleared(String itCleared) {
		this.itCleared = itCleared;
	}

	/**
	 * @return the itClearanceDate
	 */
	public Date getItClearanceDate() {
		return itClearanceDate;
	}

	/**
	 * @param itClearanceDate
	 *            the itClearanceDate to set
	 */
	public void setItClearanceDate(Date itClearanceDate) {
		this.itClearanceDate = itClearanceDate;
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

	public void save() {
		try {
			String sqlStr = "insert into tbl_clerance_form values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, this.getId());
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setDate(3, this.getTerminationDate());
			
			pStmt.setString(4, this.getImmediateSupervisorName());
			pStmt.setString(5, this.getImmediateSupervisorCleared());
			pStmt.setDate(6, this.getImmediateSupervisorClearanceDate());
			pStmt.setString(7, this.getImmediateSupervisorRemark());
			
			pStmt.setString(8, this.getLibraryHeadName());
			pStmt.setString(9, this.getLibraryHeadCleared());
			pStmt.setDate(10, this.getLibraryHeadClearanceDate());
			pStmt.setString(11, this.getLibraryHeadRemark());			
			
			pStmt.setString(12, this.getFinanceHeadName());
			pStmt.setString(13, this.getFinanceHeadCleared());
			pStmt.setDate(14, this.getFinanceHeadClearanceDate());
			pStmt.setString(15, this.getFinanceHeadRemark());
			
			pStmt.setString(16, this.getPropertyHousingName());
			pStmt.setString(17, this.getPropertyHousingCleared());
			pStmt.setDate(18, this.getPropertyHousingClearanceDate());
			pStmt.setString(19, this.getPropertyHousingRemark());
			
			pStmt.setString(20, this.getAccountsBudgetName());
			pStmt.setString(21, this.getAccountsBudgetCleared());
			pStmt.setDate(22, this.getAccountsBudgetClearanceDate());
			pStmt.setString(23, this.getAccountsBudgetRemark());
			
			pStmt.setString(24, this.getProcurmentName());
			pStmt.setString(25, this.getProcurmentCleared());
			pStmt.setDate(26, this.getProcurmentClearanceDate());
			pStmt.setString(27, this.getProcurmentRemark());
			
			pStmt.setString(28, this.getHrHeadName());
			pStmt.setString(29, this.getHrHeadCleared());
			pStmt.setDate(30, this.getHrHeadClearanceDate());
			pStmt.setString(31, this.getHrHeadRemark());
			
			pStmt.setString(32, this.getPersonnelBenefitsName());
			pStmt.setString(33, this.getPersonnelBenefitsCleared());
			pStmt.setDate(34, this.getPersonnelBenefitsClearanceDate());
			pStmt.setString(35, this.getPersonnelBenefitsRemark());
			
			pStmt.setString(36, this.getMaintainanceGeneralServiceName());
			pStmt.setString(37, this.getMaintainanceGeneralServiceCleared());
			pStmt.setDate(38, this.getMaintainanceGeneralServiceClearanceDate());
			pStmt.setString(39, this.getMaintainanceGeneralServiceRemark());
			
			pStmt.setString(40, this.getItName());
			pStmt.setString(41, this.getItCleared());
			pStmt.setDate(42, this.getItClearanceDate());
			pStmt.setString(43, this.getItRemark());
			
			pStmt.setInt(44, this.getModifiedBy());
			pStmt.setDate(45, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(CleranceForm cleranceForm) {
		try {
			String sqlStr = "update tbl_clerance_form set employee_id = ?, termination_date = ?," +
					"immediate_supervisor_name = ?, immediate_supervisor_cleared = ?," +
					"immediate_supervisor_clearance_date = ?, immediate_supervisor_remark = ?," +
					"library_head_name = ?, library_head_cleared = ?, library_head_clearance_date = ?," +
					"library_head_remark = ?, finance_head_name = ?, finance_head_cleared = ?," +
					"finance_head_clearance_date = ?, finance_head_remark = ?, property_housing_name = ?," +
					"property_housing_cleared = ?, property_housing_clearance_date = ?," +
					"property_housing_remark = ?, accounts_budget_name = ?, accounts_budget_cleared = ?," +
					"accounts_budget_clearance_date = ?, accounts_budget_remark = ?, procurment_name = ?," +
					"procurment_cleared = ?, procurment_clearance_date = ?, procurment_remark = ?," +
					"hr_head_name = ?, hr_head_cleared = ?, hr_head_clearance_date = ?," +
					"hr_head_remark = ?, personnel_benefits_name = ?, personnel_benefits_cleared = ?," +
					"personnel_benefits_clearance_date = ?, personnel_benefits_remark = ?," +
					"maintainance_general_service_name = ?, maintainance_general_service_cleared = ?," +
					"maintainance_general_service_clearance_date = ?, maintainance_general_service_remark = ?," +
					"it_name = ?, it_cleared = ?, it_clearance_date = ?, it_remark = ?," +
					"modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, cleranceForm.getEmployeeId());
			pStmt.setDate(2, cleranceForm.getTerminationDate());
			pStmt.setString(3, cleranceForm.getImmediateSupervisorName());
			pStmt.setString(4, cleranceForm.getImmediateSupervisorCleared());
			pStmt.setDate(5, cleranceForm.getImmediateSupervisorClearanceDate());
			pStmt.setString(6, cleranceForm.getImmediateSupervisorRemark());
			pStmt.setString(7, cleranceForm.getLibraryHeadName());
			pStmt.setString(8, cleranceForm.getLibraryHeadCleared());
			pStmt.setDate(9, cleranceForm.getLibraryHeadClearanceDate());
			pStmt.setString(10, cleranceForm.getLibraryHeadRemark());
			pStmt.setString(11, cleranceForm.getFinanceHeadName());
			pStmt.setString(12, cleranceForm.getFinanceHeadCleared());
			pStmt.setDate(13, cleranceForm.getFinanceHeadClearanceDate());
			pStmt.setString(14, cleranceForm.getFinanceHeadRemark());
			pStmt.setString(15, cleranceForm.getPropertyHousingName());
			pStmt.setString(16, cleranceForm.getPropertyHousingCleared());
			pStmt.setDate(17, cleranceForm.getPropertyHousingClearanceDate());
			pStmt.setString(18, cleranceForm.getPropertyHousingRemark());
			pStmt.setString(19, cleranceForm.getAccountsBudgetName());
			pStmt.setString(20, cleranceForm.getAccountsBudgetCleared());
			pStmt.setDate(21, cleranceForm.getAccountsBudgetClearanceDate());
			pStmt.setString(22, cleranceForm.getAccountsBudgetRemark());
			pStmt.setString(23, cleranceForm.getProcurmentName());
			pStmt.setString(24, cleranceForm.getProcurmentCleared());
			pStmt.setDate(25, cleranceForm.getProcurmentClearanceDate());
			pStmt.setString(26, cleranceForm.getProcurmentRemark());
			pStmt.setString(27, cleranceForm.getHrHeadName());
			pStmt.setString(28, cleranceForm.getHrHeadCleared());
			pStmt.setDate(29, cleranceForm.getHrHeadClearanceDate());
			pStmt.setString(30, cleranceForm.getHrHeadRemark());
			pStmt.setString(31, cleranceForm.getPersonnelBenefitsName());
			pStmt.setString(32, cleranceForm.getPersonnelBenefitsCleared());
			pStmt.setDate(33, cleranceForm.getPersonnelBenefitsClearanceDate());
			pStmt.setString(34, cleranceForm.getPersonnelBenefitsRemark());
			pStmt.setString(35, cleranceForm.getMaintainanceGeneralServiceName());
			pStmt.setString(36, cleranceForm.getMaintainanceGeneralServiceCleared());
			pStmt.setDate(37, cleranceForm.getMaintainanceGeneralServiceClearanceDate());
			pStmt.setString(38, cleranceForm.getMaintainanceGeneralServiceRemark());
			pStmt.setString(39, cleranceForm.getItName());
			pStmt.setString(40, cleranceForm.getItCleared());
			pStmt.setDate(41, cleranceForm.getItClearanceDate());
			pStmt.setString(42, cleranceForm.getItRemark());
			pStmt.setInt(43, cleranceForm.getModifiedBy());
			pStmt.setDate(44, cleranceForm.getModificationDate());
			pStmt.setLong(45, cleranceForm.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String command = "delete from tbl_clerance_form where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<CleranceForm> getAllCleranceForms() {
		List<CleranceForm> list = new ArrayList<CleranceForm>();
		CleranceForm cleranceForm = null;
		try {
			String query = "select * from tbl_clerance_form order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				cleranceForm = new CleranceForm(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getDate("termination_date"), rSet.getString("immediate_supervisor_name"), 
						rSet.getString("immediate_supervisor_cleared"), rSet.getDate("immediate_supervisor_clearance_date"), 
						rSet.getString("immediate_supervisor_remark"), rSet.getString("library_head_name"), 
						rSet.getString("library_head_cleared"), rSet.getDate("library_head_clearance_date"), 
						rSet.getString("library_head_remark"), rSet.getString("finance_head_name"), 
						rSet.getString("finance_head_cleared"), rSet.getDate("finance_head_clearance_date"), 
						rSet.getString("finance_head_remark"), rSet.getString("property_housing_name"), 
						rSet.getString("property_housing_cleared"), rSet.getDate("property_housing_clearance_date"), 
						rSet.getString("property_housing_remark"), rSet.getString("accounts_budget_name"), 
						rSet.getString("accounts_budget_cleared"), rSet.getDate("accounts_budget_clearance_date"), 
						rSet.getString("accounts_budget_remark"), rSet.getString("procurment_name"), 
						rSet.getString("procurment_cleared"), rSet.getDate("procurment_clearance_date"), 
						rSet.getString("procurment_remark"), rSet.getString("hr_head_name"), 
						rSet.getString("hr_head_cleared"), rSet.getDate("hr_head_clearance_date"), 
						rSet.getString("hr_head_remark"), rSet.getString("personnel_benefits_name"), 
						rSet.getString("personnel_benefits_cleared"), rSet.getDate("personnel_benefits_clearance_date"), 
						rSet.getString("personnel_benefits_remark"), rSet.getString("maintainance_general_service_name"), 
						rSet.getString("maintainance_general_service_cleared"), rSet.getDate("maintainance_general_service_clearance_date"), 
						rSet.getString("maintainance_general_service_remark"), rSet.getString("it_name"), 
						rSet.getString("it_cleared"), rSet.getDate("it_clearance_date"), rSet.getString("it_remark"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(cleranceForm);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public static List<CleranceForm> getAllCleranceFormsSortedByEmployeeName(){
		List<CleranceForm> list = new ArrayList<CleranceForm>();
		CleranceForm cleranceForm = null;
		try {
			String query = "select tbl_clerance_form.*,tbl_employee.first_name, tbl_employee.last_name from tbl_clerance_form,tbl_employee order by first_name,last_name asc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				cleranceForm = new CleranceForm(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getDate("termination_date"), rSet.getString("immediate_supervisor_name"), 
						rSet.getString("immediate_supervisor_cleared"), rSet.getDate("immediate_supervisor_clearance_date"), 
						rSet.getString("immediate_supervisor_remark"), rSet.getString("library_head_name"), 
						rSet.getString("library_head_cleared"), rSet.getDate("library_head_clearance_date"), 
						rSet.getString("library_head_remark"), rSet.getString("finance_head_name"), 
						rSet.getString("finance_head_cleared"), rSet.getDate("finance_head_clearance_date"), 
						rSet.getString("finance_head_remark"), rSet.getString("property_housing_name"), 
						rSet.getString("property_housing_cleared"), rSet.getDate("property_housing_clearance_date"), 
						rSet.getString("property_housing_remark"), rSet.getString("accounts_budget_name"), 
						rSet.getString("accounts_budget_cleared"), rSet.getDate("accounts_budget_clearance_date"), 
						rSet.getString("accounts_budget_remark"), rSet.getString("procurment_name"), 
						rSet.getString("procurment_cleared"), rSet.getDate("procurment_clearance_date"), 
						rSet.getString("procurment_remark"), rSet.getString("hr_head_name"), 
						rSet.getString("hr_head_cleared"), rSet.getDate("hr_head_clearance_date"), 
						rSet.getString("hr_head_remark"), rSet.getString("personnel_benefits_name"), 
						rSet.getString("personnel_benefits_cleared"), rSet.getDate("personnel_benefits_clearance_date"), 
						rSet.getString("personnel_benefits_remark"), rSet.getString("maintainance_general_service_name"), 
						rSet.getString("maintainance_general_service_cleared"), rSet.getDate("maintainance_general_service_clearance_date"), 
						rSet.getString("maintainance_general_service_remark"), rSet.getString("it_name"), 
						rSet.getString("it_cleared"), rSet.getDate("it_clearance_date"), rSet.getString("it_remark"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(cleranceForm);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static CleranceForm getCleranceForm(long id) {
		CleranceForm cleranceForm = null;
		try {
			String query = "select * from tbl_clerance_form where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				cleranceForm = new CleranceForm(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getDate("termination_date"), rSet.getString("immediate_supervisor_name"), 
						rSet.getString("immediate_supervisor_cleared"), rSet.getDate("immediate_supervisor_clearance_date"), 
						rSet.getString("immediate_supervisor_remark"), rSet.getString("library_head_name"), 
						rSet.getString("library_head_cleared"), rSet.getDate("library_head_clearance_date"), 
						rSet.getString("library_head_remark"), rSet.getString("finance_head_name"), 
						rSet.getString("finance_head_cleared"), rSet.getDate("finance_head_clearance_date"), 
						rSet.getString("finance_head_remark"), rSet.getString("property_housing_name"), 
						rSet.getString("property_housing_cleared"), rSet.getDate("property_housing_clearance_date"), 
						rSet.getString("property_housing_remark"), rSet.getString("accounts_budget_name"), 
						rSet.getString("accounts_budget_cleared"), rSet.getDate("accounts_budget_clearance_date"), 
						rSet.getString("accounts_budget_remark"), rSet.getString("procurment_name"), 
						rSet.getString("procurment_cleared"), rSet.getDate("procurment_clearance_date"), 
						rSet.getString("procurment_remark"), rSet.getString("hr_head_name"), 
						rSet.getString("hr_head_cleared"), rSet.getDate("hr_head_clearance_date"), 
						rSet.getString("hr_head_remark"), rSet.getString("personnel_benefits_name"), 
						rSet.getString("personnel_benefits_cleared"), rSet.getDate("personnel_benefits_clearance_date"), 
						rSet.getString("personnel_benefits_remark"), rSet.getString("maintainance_general_service_name"), 
						rSet.getString("maintainance_general_service_cleared"), rSet.getDate("maintainance_general_service_clearance_date"), 
						rSet.getString("maintainance_general_service_remark"), rSet.getString("it_name"), 
						rSet.getString("it_cleared"), rSet.getDate("it_clearance_date"), rSet.getString("it_remark"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return cleranceForm;
	}
}// end class
