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
public class NationalEmployeeType {
	private long id;
	private long employeeId;
	private String employmentType;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public NationalEmployeeType() {
	}

	/**
	 * @param employeeId
	 * @param employmentType
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public NationalEmployeeType(long employeeId, String employmentType,
			int modifiedBy, Date modificationDate) {
		this.employeeId = employeeId;
		this.employmentType = employmentType;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param employmentType
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public NationalEmployeeType(long id, long employeeId,
			String employmentType, int modifiedBy, Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.employmentType = employmentType;
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
	 * @return the employmentType
	 */
	public String getEmploymentType() {
		return employmentType;
	}

	/**
	 * @param employmentType
	 *            the employmentType to set
	 */
	public void setEmploymentType(String employmentType) {
		this.employmentType = employmentType;
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
			String sqlStr = "insert into tbl_national_employee_type values(?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setString(3, this.getEmploymentType());
			pStmt.setInt(4, this.getModifiedBy());
			pStmt.setDate(5, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(NationalEmployeeType nationalEmployeeType) {
		try {
			String sqlStr = "update tbl_national_employee_type set employee_id = ?, employment_type = ?," +
					"modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, nationalEmployeeType.getEmployeeId());
			pStmt.setString(2, nationalEmployeeType.getEmploymentType());
			pStmt.setInt(3, nationalEmployeeType.getModifiedBy());
			pStmt.setDate(4, nationalEmployeeType.getModificationDate());
			pStmt.setLong(5, nationalEmployeeType.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_national_employee_type where id = "+id;
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<NationalEmployeeType> getAllEmployeeTypes() {
		List<NationalEmployeeType> list = new ArrayList<NationalEmployeeType>();
		NationalEmployeeType nationalEmployeeType = null;
		try {
			String query = "select * from tbl_national_employee_type order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				nationalEmployeeType = new NationalEmployeeType(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("employment_type"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(nationalEmployeeType);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static NationalEmployeeType getNationalEmployeeType(long id) {
		NationalEmployeeType nationalEmployeeType = null;
		try {
			String query = "select * from tbl_national_employee_type where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				nationalEmployeeType = new NationalEmployeeType(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("employment_type"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return nationalEmployeeType;
	}
	
	public static NationalEmployeeType getNationalEmployeeTypeForEmployee(long employeeId){
		NationalEmployeeType nationalEmployeeType = null;
		try {
			String query = "select * from tbl_national_employee_type where employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				nationalEmployeeType = new NationalEmployeeType(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("employment_type"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return nationalEmployeeType;
	}
}// end class
