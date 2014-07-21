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
public class InternationalEmployeeType {
	private long id;
	private long employeeId;
	private String employementType;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public InternationalEmployeeType() {
	}

	/**
	 * @param employeeId
	 * @param employementType
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public InternationalEmployeeType(long employeeId, String employementType,
			int modifiedBy, Date modificationDate) {
		this.employeeId = employeeId;
		this.employementType = employementType;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param employementType
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public InternationalEmployeeType(long id, long employeeId,
			String employementType, int modifiedBy, Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.employementType = employementType;
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
	 * @return the employementType
	 */
	public String getEmployementType() {
		return employementType;
	}

	/**
	 * @param employementType
	 *            the employementType to set
	 */
	public void setEmployementType(String employementType) {
		this.employementType = employementType;
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
			String sqlStr = "insert into tbl_international_employee_type values(?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setString(3, this.getEmployementType());
			pStmt.setInt(4, this.getModifiedBy());
			pStmt.setDate(5, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public void update(InternationalEmployeeType internationalEmployeeType) {
		try {
			String sqlStr = "update tbl_international_employee_type set employee_id = ?, employment_type = ?," +
					"modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, internationalEmployeeType.getEmployeeId());
			pStmt.setString(2, internationalEmployeeType.getEmployementType());
			pStmt.setInt(3, internationalEmployeeType.getModifiedBy());
			pStmt.setDate(4, internationalEmployeeType.getModificationDate());
			pStmt.setLong(5, internationalEmployeeType.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<InternationalEmployeeType> getAllInternationalEmployeeTypes() {
		List<InternationalEmployeeType> list = new ArrayList<InternationalEmployeeType>();
		InternationalEmployeeType internationalEmployeeType = null;
		try {
			String query = "select * from tbl_international_employee_type order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				internationalEmployeeType = new InternationalEmployeeType(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("employement_type"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(internationalEmployeeType);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static InternationalEmployeeType getInternationalEmployeeType(long id) {
		InternationalEmployeeType internationalEmployeeType = null;
		try {
			String query = "select * from tbl_international_employee_type where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				internationalEmployeeType = new InternationalEmployeeType(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("employement_type"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return internationalEmployeeType;
	}
}// end class
