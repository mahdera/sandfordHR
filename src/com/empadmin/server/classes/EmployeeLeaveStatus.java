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
public class EmployeeLeaveStatus {
	private long id;
	private long employeeId;
	private float available;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public EmployeeLeaveStatus() {
	}

	/**
	 * @param employeeId
	 * @param available
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public EmployeeLeaveStatus(long employeeId, float available,
			int modifiedBy, Date modificationDate) {
		this.employeeId = employeeId;
		this.available = available;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param available
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public EmployeeLeaveStatus(long id, long employeeId, float available,
			int modifiedBy, Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.available = available;
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
	 * @return the available
	 */
	public float getAvailable() {
		return available;
	}

	/**
	 * @param available
	 *            the available to set
	 */
	public void setAvailable(float available) {
		this.available = available;
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
			String sqlStr = "insert into tbl_employee_leave_status values(?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setFloat(3, this.getAvailable());
			pStmt.setInt(4, this.getModifiedBy());
			pStmt.setDate(5, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(EmployeeLeaveStatus employeeLeaveStatus) {
		try {
			String sqlStr = "update tbl_employee_leave_status set employee_id = ?, available = ?," +
					"modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, employeeLeaveStatus.getEmployeeId());
			pStmt.setFloat(2, employeeLeaveStatus.getAvailable());
			pStmt.setInt(3, employeeLeaveStatus.getModifiedBy());
			pStmt.setDate(4, employeeLeaveStatus.getModificationDate());
			pStmt.setLong(5, employeeLeaveStatus.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_employee_leave_status where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<EmployeeLeaveStatus> getAllEmployeeLeaveStatus() {
		List<EmployeeLeaveStatus> list = new ArrayList<EmployeeLeaveStatus>();
		EmployeeLeaveStatus employeeLeaveStatus = null;
		try {
			String query = "select * from tbl_employee_leave_status order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeeLeaveStatus = new EmployeeLeaveStatus(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getFloat("available"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(employeeLeaveStatus);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static EmployeeLeaveStatus getEmployeeLeaveStatus(long id) {
		EmployeeLeaveStatus employeeLeaveStatus = null;
		try {
			String query = "select * from tbl_employee_leave_status where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeeLeaveStatus = new EmployeeLeaveStatus(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getFloat("available"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return employeeLeaveStatus;
	}
	
	public static EmployeeLeaveStatus getEmployeeLeaveStatusForEmployee(long employeeId){
		EmployeeLeaveStatus employeeLeaveStatus = null;
		try {
			String query = "select * from tbl_employee_leave_status where employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeeLeaveStatus = new EmployeeLeaveStatus(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getFloat("available"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return employeeLeaveStatus;
	}
}// end class
