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
public class NationalEmployeeWorkPosition {
	private long id;
	private long employeeId;
	private String workPosition;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public NationalEmployeeWorkPosition() {
	}

	/**
	 * @param employeeId
	 * @param workPosition
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public NationalEmployeeWorkPosition(long employeeId, String workPosition,
			int modifiedBy, Date modificationDate) {
		this.employeeId = employeeId;
		this.workPosition = workPosition;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param workPosition
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public NationalEmployeeWorkPosition(long id, long employeeId,
			String workPosition, int modifiedBy, Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.workPosition = workPosition;
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
	 * @return the workPosition
	 */
	public String getWorkPosition() {
		return workPosition;
	}

	/**
	 * @param workPosition
	 *            the workPosition to set
	 */
	public void setWorkPosition(String workPosition) {
		this.workPosition = workPosition;
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
			String sqlStr = "insert into tbl_national_employee_work_position values(?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setString(3, this.getWorkPosition());
			pStmt.setInt(4, this.getModifiedBy());
			pStmt.setDate(5, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(NationalEmployeeWorkPosition nationalEmployeeWorkPosition) {
		try {
			String sqlStr = "update tbl_national_employee_work_position set employee_id = ?," +
					"work_position = ?, modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, nationalEmployeeWorkPosition.getEmployeeId());
			pStmt.setString(2, nationalEmployeeWorkPosition.getWorkPosition());
			pStmt.setInt(3, nationalEmployeeWorkPosition.getModifiedBy());
			pStmt.setDate(4, nationalEmployeeWorkPosition.getModificationDate());
			pStmt.setLong(5, nationalEmployeeWorkPosition.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_national_employee_work_position where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<NationalEmployeeWorkPosition> getAllEmployeeWorkPositions() {
		List<NationalEmployeeWorkPosition> list = new ArrayList<NationalEmployeeWorkPosition>();
		NationalEmployeeWorkPosition nationalEmployeeWorkPosition = null;
		try {
			String query = "select * from tbl_national_employee_work_position order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				nationalEmployeeWorkPosition = new NationalEmployeeWorkPosition(rSet.getLong("id"), 
						rSet.getLong("employee_id"), rSet.getString("work_position"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(nationalEmployeeWorkPosition);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static NationalEmployeeWorkPosition getNationalEmployeeWorkPosition(
			long id) {
		NationalEmployeeWorkPosition nationalEmployeeWorkPosition = null;
		try {
			String query = "select * from tbl_national_employee_work_position where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				nationalEmployeeWorkPosition = new NationalEmployeeWorkPosition(rSet.getLong("id"), 
						rSet.getLong("employee_id"), rSet.getString("work_position"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return nationalEmployeeWorkPosition;
	}
	
	public static NationalEmployeeWorkPosition getNationalEmployeeWorkPositionForEmployee(long employeeId){
		NationalEmployeeWorkPosition nationalEmployeeWorkPosition = null;
		try {
			String query = "select * from tbl_national_employee_work_position where employee_id = "+employeeId;			
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				nationalEmployeeWorkPosition = new NationalEmployeeWorkPosition(rSet.getLong("id"), 
						rSet.getLong("employee_id"), rSet.getString("work_position"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return nationalEmployeeWorkPosition;
	}
}// end class
