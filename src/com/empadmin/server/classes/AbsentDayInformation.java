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
public class AbsentDayInformation {
	private long id;
	private long employeeId;
	private int year;
	private int month;
	private float numberOfDaysToBeDeducted;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public AbsentDayInformation() {
	}

	/**
	 * @param employeeId
	 * @param year
	 * @param month
	 * @param numberOfDaysToBeDeducted
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public AbsentDayInformation(long employeeId, int year, int month,
			float numberOfDaysToBeDeducted, int modifiedBy,
			Date modificationDate) {
		this.employeeId = employeeId;
		this.year = year;
		this.month = month;
		this.numberOfDaysToBeDeducted = numberOfDaysToBeDeducted;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param year
	 * @param month
	 * @param numberOfDaysToBeDeducted
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public AbsentDayInformation(long id, long employeeId, int year, int month,
			float numberOfDaysToBeDeducted, int modifiedBy,
			Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.year = year;
		this.month = month;
		this.numberOfDaysToBeDeducted = numberOfDaysToBeDeducted;
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
	 * @return the year
	 */
	public int getYear() {
		return year;
	}

	/**
	 * @param year
	 *            the year to set
	 */
	public void setYear(int year) {
		this.year = year;
	}

	/**
	 * @return the month
	 */
	public int getMonth() {
		return month;
	}

	/**
	 * @param month
	 *            the month to set
	 */
	public void setMonth(int month) {
		this.month = month;
	}

	/**
	 * @return the numberOfDaysToBeDeducted
	 */
	public float getNumberOfDaysToBeDeducted() {
		return numberOfDaysToBeDeducted;
	}

	/**
	 * @param numberOfDaysToBeDeducted
	 *            the numberOfDaysToBeDeducted to set
	 */
	public void setNumberOfDaysToBeDeducted(float numberOfDaysToBeDeducted) {
		this.numberOfDaysToBeDeducted = numberOfDaysToBeDeducted;
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
			String sqlStr = "insert into tbl_absent_day_information values(?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setInt(3, this.getYear());
			pStmt.setInt(4, this.getMonth());
			pStmt.setFloat(5, this.getNumberOfDaysToBeDeducted());
			pStmt.setInt(6, this.getModifiedBy());
			pStmt.setDate(7, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(AbsentDayInformation absentDayInformation) {
		try {
			String sqlStr = "update tbl_absent_day_information set employee_id = ?, year = ?, month = ?, " +
					"number_of_days_to_be_deducted = ?, modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, absentDayInformation.getEmployeeId());
			pStmt.setInt(2, absentDayInformation.getYear());
			pStmt.setInt(3, absentDayInformation.getMonth());
			pStmt.setFloat(4, absentDayInformation.getNumberOfDaysToBeDeducted());
			pStmt.setInt(5, absentDayInformation.getModifiedBy());
			pStmt.setDate(6, absentDayInformation.getModificationDate());
			pStmt.setLong(7, absentDayInformation.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_absent_day_information where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<AbsentDayInformation> getAllAbsentDayInformations() {
		List<AbsentDayInformation> list = new ArrayList<AbsentDayInformation>();
		AbsentDayInformation absentDayInformation = null;
		try {
			String query = "select * from tbl_absent_day_information order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				absentDayInformation = new AbsentDayInformation(rSet.getLong("id"), 
						rSet.getLong("employee_id"), rSet.getInt("year"), rSet.getInt("month"), 
						rSet.getFloat("number_of_days_to_be_deducted"), rSet.getInt("modified_by"), 
						rSet.getDate("modification_date"));
				list.add(absentDayInformation);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static AbsentDayInformation getAbsentDayInformation(long id) {
		AbsentDayInformation absentDayInformation = null;
		try {
			String query = "select * from tbl_absent_day_information where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				absentDayInformation = new AbsentDayInformation(rSet.getLong("id"), 
						rSet.getLong("employee_id"), rSet.getInt("year"), rSet.getInt("month"), 
						rSet.getFloat("number_of_days_to_be_deducted"), rSet.getInt("modified_by"), 
						rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return absentDayInformation;
	}
	
	public static List<AbsentDayInformation> getAllAbsentDayInformationsForYearAndMonth(int year, int month){
		List<AbsentDayInformation> list = new ArrayList<AbsentDayInformation>();
		AbsentDayInformation absentDayInformation = null;
		try {
			String query = "select * from tbl_absent_day_information where year = "+year+" and month = "+month+" order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				absentDayInformation = new AbsentDayInformation(rSet.getLong("id"), 
						rSet.getLong("employee_id"), rSet.getInt("year"), rSet.getInt("month"), 
						rSet.getFloat("number_of_days_to_be_deducted"), rSet.getInt("modified_by"), 
						rSet.getDate("modification_date"));
				list.add(absentDayInformation);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}// end class
