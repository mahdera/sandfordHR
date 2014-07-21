/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;

/**
 * @author mahder
 *
 */
public class EmployeeType {
	private long id;
	private long employeeId;
	private String empType;
	private int modifiedBy;
	private Date modificationDate;
	
	
	
	/**
	 * 
	 */
	public EmployeeType() {
	}
	
	
	
	/**
	 * @param employeeId
	 * @param employeeType
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public EmployeeType(long employeeId, String employeeType, int modifiedBy,
			Date modificationDate) {
		this.employeeId = employeeId;
		this.empType = employeeType;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	

	/**
	 * @param id
	 * @param employeeId
	 * @param employeeType
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public EmployeeType(long id, long employeeId, String employeeType,
			int modifiedBy, Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.empType = employeeType;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}



	public long getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(long id) {
		this.id = id;
	}
	/**
	 * @return the employeeType
	 */
	public String getEmpType() {
		return empType;
	}
	/**
	 * @param employeeType the employeeType to set
	 */
	public void setEmpType(String empType) {
		this.empType = empType;
	}
	
	
	
	/**
	 * @return the employeeId
	 */
	public long getEmployeeId() {
		return employeeId;
	}



	/**
	 * @param employeeId the employeeId to set
	 */
	public void setEmployeeId(long employeeId) {
		this.employeeId = employeeId;
	}



	/**
	 * @return the modifiedBy
	 */
	public int getModifiedBy() {
		return modifiedBy;
	}



	/**
	 * @param modifiedBy the modifiedBy to set
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
	 * @param modificationDate the modificationDate to set
	 */
	public void setModificationDate(Date modificationDate) {
		this.modificationDate = modificationDate;
	}



	public void save() {
		try {
			String sqlStr = "insert into tbl_employee_type values(?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setString(3, this.getEmpType());
			pStmt.setInt(4, this.getModifiedBy());
			pStmt.setDate(5, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(EmployeeType employeeType) {
		try {
			String sqlStr = "update tbl_employee_type set employee_id = ?, employee_type = ?," +
					"modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, employeeType.getEmployeeId());
			pStmt.setString(2, employeeType.getEmpType());
			pStmt.setInt(3, employeeType.getModifiedBy());
			pStmt.setDate(4, employeeType.getModificationDate());
			pStmt.setLong(5, employeeType.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(int id) {
		try {
			String command = "DELETE FROM tbl_employee_type WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<EmployeeType> getAllEmployeeTypes() {
		List<EmployeeType> list = new ArrayList<EmployeeType>();
		EmployeeType employeeType = null;
		try {
			String query = "SELECT * FROM tbl_employee_type ORDER BY employee_type ASC";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeeType = new EmployeeType(rSet.getInt("id"),rSet.getLong("employee_id"),
						rSet.getString("employee_type"),rSet.getInt("modified_by"),
						rSet.getDate("modificationDate"));
				list.add(employeeType);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static EmployeeType getEmployeeType(int id) {		
		EmployeeType employeeType = null;
		try {
			String query = "SELECT * FROM tbl_employee_type WHERE id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeeType = new EmployeeType(rSet.getInt("id"),rSet.getLong("employee_id"),
						rSet.getString("employee_type"),rSet.getInt("modified_by"),
						rSet.getDate("modificationDate"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return employeeType;
	}
	
	public static EmployeeType getEmployeeTypeForEmployee(long employeeId){
		EmployeeType employeeType = null;
		try {
			String query = "SELECT * FROM tbl_employee_type WHERE employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeeType = new EmployeeType(rSet.getInt("id"),rSet.getLong("employee_id"),
						rSet.getString("employee_type"),rSet.getInt("modified_by"),
						rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return employeeType;
	}
}//end class
