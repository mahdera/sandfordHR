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
public class Permit {
	private long id;
	private long employeeId;
	private String workPermitNumber;
	private Date workPermitFrom;
	private Date workPermitTo;
	private String residenceIdNumber;
	private Date residencePermitFrom;
	private Date residencePermitTo;
	private String passportNumber;
	private Date passportIssueDate;
	private Date passportExpiryDate;
	private String dependent;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public Permit() {
	}

	/**
	 * @param employeeId
	 * @param workPermitNumber
	 * @param workPermitFrom
	 * @param workPermitTo
	 * @param residenceIdNumber
	 * @param residencePermitFrom
	 * @param residencePermitTo
	 * @param passportNumber
	 * @param passportIssueDate
	 * @param passportExpiryDate
	 * @param dependent
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public Permit(long employeeId, String workPermitNumber,
			Date workPermitFrom, Date workPermitTo, String residenceIdNumber,
			Date residencePermitFrom, Date residencePermitTo,
			String passportNumber, Date passportIssueDate,
			Date passportExpiryDate, String dependent, int modifiedBy,
			Date modificationDate) {
		this.employeeId = employeeId;
		this.workPermitNumber = workPermitNumber;
		this.workPermitFrom = workPermitFrom;
		this.workPermitTo = workPermitTo;
		this.residenceIdNumber = residenceIdNumber;
		this.residencePermitFrom = residencePermitFrom;
		this.residencePermitTo = residencePermitTo;
		this.passportNumber = passportNumber;
		this.passportIssueDate = passportIssueDate;
		this.passportExpiryDate = passportExpiryDate;
		this.dependent = dependent;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param workPermitNumber
	 * @param workPermitFrom
	 * @param workPermitTo
	 * @param residenceIdNumber
	 * @param residencePermitFrom
	 * @param residencePermitTo
	 * @param passportNumber
	 * @param passportIssueDate
	 * @param passportExpiryDate
	 * @param dependent
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public Permit(long id, long employeeId, String workPermitNumber,
			Date workPermitFrom, Date workPermitTo, String residenceIdNumber,
			Date residencePermitFrom, Date residencePermitTo,
			String passportNumber, Date passportIssueDate,
			Date passportExpiryDate, String dependent, int modifiedBy,
			Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.workPermitNumber = workPermitNumber;
		this.workPermitFrom = workPermitFrom;
		this.workPermitTo = workPermitTo;
		this.residenceIdNumber = residenceIdNumber;
		this.residencePermitFrom = residencePermitFrom;
		this.residencePermitTo = residencePermitTo;
		this.passportNumber = passportNumber;
		this.passportIssueDate = passportIssueDate;
		this.passportExpiryDate = passportExpiryDate;
		this.dependent = dependent;
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
	 * @return the workPermitNumber
	 */
	public String getWorkPermitNumber() {
		return workPermitNumber;
	}

	/**
	 * @param workPermitNumber
	 *            the workPermitNumber to set
	 */
	public void setWorkPermitNumber(String workPermitNumber) {
		this.workPermitNumber = workPermitNumber;
	}

	/**
	 * @return the workPermitFrom
	 */
	public Date getWorkPermitFrom() {
		return workPermitFrom;
	}

	/**
	 * @param workPermitFrom
	 *            the workPermitFrom to set
	 */
	public void setWorkPermitFrom(Date workPermitFrom) {
		this.workPermitFrom = workPermitFrom;
	}

	/**
	 * @return the workPermitTo
	 */
	public Date getWorkPermitTo() {
		return workPermitTo;
	}

	/**
	 * @param workPermitTo
	 *            the workPermitTo to set
	 */
	public void setWorkPermitTo(Date workPermitTo) {
		this.workPermitTo = workPermitTo;
	}

	/**
	 * @return the residenceIdNumber
	 */
	public String getResidenceIdNumber() {
		return residenceIdNumber;
	}

	/**
	 * @param residenceIdNumber
	 *            the residenceIdNumber to set
	 */
	public void setResidenceIdNumber(String residenceIdNumber) {
		this.residenceIdNumber = residenceIdNumber;
	}

	/**
	 * @return the residencePermitFrom
	 */
	public Date getResidencePermitFrom() {
		return residencePermitFrom;
	}

	/**
	 * @param residencePermitFrom
	 *            the residencePermitFrom to set
	 */
	public void setResidencePermitFrom(Date residencePermitFrom) {
		this.residencePermitFrom = residencePermitFrom;
	}

	/**
	 * @return the residencePermitTo
	 */
	public Date getResidencePermitTo() {
		return residencePermitTo;
	}

	/**
	 * @param residencePermitTo
	 *            the residencePermitTo to set
	 */
	public void setResidencePermitTo(Date residencePermitTo) {
		this.residencePermitTo = residencePermitTo;
	}

	/**
	 * @return the passportNumber
	 */
	public String getPassportNumber() {
		return passportNumber;
	}

	/**
	 * @param passportNumber
	 *            the passportNumber to set
	 */
	public void setPassportNumber(String passportNumber) {
		this.passportNumber = passportNumber;
	}

	/**
	 * @return the passportIssueDate
	 */
	public Date getPassportIssueDate() {
		return passportIssueDate;
	}

	/**
	 * @param passportIssueDate
	 *            the passportIssueDate to set
	 */
	public void setPassportIssueDate(Date passportIssueDate) {
		this.passportIssueDate = passportIssueDate;
	}

	/**
	 * @return the passportExpiryDate
	 */
	public Date getPassportExpiryDate() {
		return passportExpiryDate;
	}

	/**
	 * @param passportExpiryDate
	 *            the passportExpiryDate to set
	 */
	public void setPassportExpiryDate(Date passportExpiryDate) {
		this.passportExpiryDate = passportExpiryDate;
	}

	/**
	 * @return the dependent
	 */
	public String getDependent() {
		return dependent;
	}

	/**
	 * @param dependent
	 *            the dependent to set
	 */
	public void setDependent(String dependent) {
		this.dependent = dependent;
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
			String sqlStr = "insert into tbl_permit values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setString(3, this.getWorkPermitNumber());
			pStmt.setDate(4, this.getWorkPermitFrom());
			pStmt.setDate(5, this.getWorkPermitTo());
			pStmt.setString(6, this.getResidenceIdNumber());
			pStmt.setDate(7, this.getResidencePermitFrom());
			pStmt.setDate(8, this.getResidencePermitTo());
			pStmt.setString(9, this.getPassportNumber());
			pStmt.setDate(10, this.getPassportIssueDate());
			pStmt.setDate(11, this.getPassportExpiryDate());
			pStmt.setString(12, this.getDependent());
			pStmt.setInt(13, this.getModifiedBy());
			pStmt.setDate(14, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(Permit permit) {
		try {
			String sqlStr = "update tbl_permit set employee_id = ?, work_permit_number = ?, work_permit_from = ?," +
					"work_permit_to = ?, residence_id_number = ?, residence_permit_from = ?, residence_permit_to = ?," +
					"passport_number = ?, passport_issue_date = ?, passport_expiry_date = ?, dependent = ?," +
					"modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, permit.getEmployeeId());
			pStmt.setString(2, permit.getWorkPermitNumber());
			pStmt.setDate(3, permit.getWorkPermitFrom());
			pStmt.setDate(4, permit.getWorkPermitTo());
			pStmt.setString(5, permit.getResidenceIdNumber());
			pStmt.setDate(6, permit.getResidencePermitFrom());
			pStmt.setDate(7, permit.getResidencePermitTo());
			pStmt.setString(8, permit.getPassportNumber());
			pStmt.setDate(9, permit.getPassportIssueDate());
			pStmt.setDate(10, permit.getPassportExpiryDate());
			pStmt.setString(11, permit.getDependent());
			pStmt.setInt(12, permit.getModifiedBy());
			pStmt.setDate(13, permit.getModificationDate());
			pStmt.setLong(14, permit.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String command = "delete from tbl_permit where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Permit> getAllPermits() {
		List<Permit> list = new ArrayList<Permit>();
		Permit permit = null;
		try {
			String query = "select * from tbl_permit order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				permit = new Permit(rSet.getLong("id"),rSet.getLong("employee_id"),rSet.getString("work_permit_number"),
						rSet.getDate("work_permit_from"),rSet.getDate("work_permit_to"),rSet.getString("residence_id_number"),
						rSet.getDate("residence_permit_from"),rSet.getDate("residence_permit_to"),rSet.getString("passport_number"),
						rSet.getDate("passport_issue_date"),rSet.getDate("passport_expiry_date"),
						rSet.getString("dependent"),rSet.getInt("modified_by"),rSet.getDate("modification_date"));
				list.add(permit);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Permit getPermit(long id) {
		Permit permit = null;
		try {
			String query = "select * from tbl_permit where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				permit = new Permit(rSet.getLong("id"),rSet.getLong("employee_id"),rSet.getString("work_permit_number"),
						rSet.getDate("work_permit_from"),rSet.getDate("work_permit_to"),rSet.getString("residence_id_number"),
						rSet.getDate("residence_permit_from"),rSet.getDate("residence_permit_to"),rSet.getString("passport_number"),
						rSet.getDate("passport_issue_date"),rSet.getDate("passport_expiry_date"),
						rSet.getString("dependent"),rSet.getInt("modified_by"),rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return permit;
	}
	
	public static boolean isThisPermitRecordLessThanItsLimitPeriod(long permitId,String permitType,int permitLimit){
		boolean permitIsLess = false;
		int permitLimitDate = permitLimit * 30;
		int countVal = 0;
		try{
			String query = null;
			if(permitType.equalsIgnoreCase("work")){
				query = "select count(*) as cnt from tbl_permit where DATEDIFF(work_permit_to,NOW()) <= "+permitLimitDate+" and id = "+permitId;
			}else if(permitType.equalsIgnoreCase("residence")){
				query = "select count(*) as cnt from tbl_permit where DATEDIFF(residence_permit_to,NOW()) <= "+permitLimitDate+" and id = "+permitId;
			}else if(permitType.equalsIgnoreCase("passport")){
				query = "select count(*) as cnt from tbl_permit where DATEDIFF(passport_expiry_date,NOW()) <= "+permitLimitDate+" and id = "+permitId;
			}
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				countVal = rSet.getInt("cnt");
				if(countVal != 0){
					permitIsLess = true;
				}
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return permitIsLess;
	}
	
	public static int countHowManyRecordsArePassedTheirTreshHoldLimits(String permitType,int permitLimit){
		int countVal = 0;
		//now convert the permitLimit period from month to dates...
		int permitLimitDate = permitLimit * 30;
		try {
			String query = null;
			if(permitType.equalsIgnoreCase("work")){
				query = "select count(*) as cnt from tbl_permit where DATEDIFF(work_permit_to,NOW()) <= "+permitLimitDate;
			}else if(permitType.equalsIgnoreCase("residence")){
				query = "select count(*) as cnt from tbl_permit where DATEDIFF(residence_permit_to,NOW()) <= "+permitLimitDate;
			}else if(permitType.equalsIgnoreCase("passport")){
				query = "select count(*) as cnt from tbl_permit where DATEDIFF(passport_expiry_date,NOW()) <= "+permitLimitDate;
			}			
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				countVal = rSet.getInt("cnt");				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return countVal;
	}
}// end class
