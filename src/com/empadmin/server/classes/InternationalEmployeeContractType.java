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
public class InternationalEmployeeContractType {
	private long id;
	private long employeeId;
	private String contractType;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public InternationalEmployeeContractType() {
	}

	/**
	 * @param employeeId
	 * @param contractType
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public InternationalEmployeeContractType(long employeeId,
			String contractType, int modifiedBy, Date modificationDate) {
		this.employeeId = employeeId;
		this.contractType = contractType;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param contractType
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public InternationalEmployeeContractType(long id, long employeeId,
			String contractType, int modifiedBy, Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.contractType = contractType;
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
	 * @return the contractType
	 */
	public String getContractType() {
		return contractType;
	}

	/**
	 * @param contractType
	 *            the contractType to set
	 */
	public void setContractType(String contractType) {
		this.contractType = contractType;
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
			String sqlStr = "insert into tbl_international_employee_contract_type values(?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setString(3, this.getContractType());
			pStmt.setInt(4, this.getModifiedBy());
			pStmt.setDate(5, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(
			InternationalEmployeeContractType internationalEmployeeContractType) {
		try {
			String sqlStr = "update tbl_international_employee_contract_type set employee_id = ?," +
					"contract_type = ?, modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, internationalEmployeeContractType.getEmployeeId());
			pStmt.setString(2, internationalEmployeeContractType.getContractType());
			pStmt.setInt(3, internationalEmployeeContractType.getModifiedBy());
			pStmt.setDate(4, internationalEmployeeContractType.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_international_employee_contract_type where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<InternationalEmployeeContractType> getAllEmployeeContractTypes() {
		List<InternationalEmployeeContractType> list = new ArrayList<InternationalEmployeeContractType>();
		InternationalEmployeeContractType internationalEmployeeContractType = null;
		try {
			String query = "select * from tbl_international_employee_contract_type order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				internationalEmployeeContractType = new InternationalEmployeeContractType(rSet.getLong("id"), 
						rSet.getLong("employee_id"), rSet.getString("contract_type"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(internationalEmployeeContractType);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static InternationalEmployeeContractType getInternationalEmployeeContractType(
			long id) {
		InternationalEmployeeContractType internationalEmployeeContractType = null;
		try {
			String query = "select * from tbl_international_employee_contract_type where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				internationalEmployeeContractType = new InternationalEmployeeContractType(rSet.getLong("id"), 
						rSet.getLong("employee_id"), rSet.getString("contract_type"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return internationalEmployeeContractType;
	}
}// end class
