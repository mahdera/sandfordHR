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
public class EmployeeContractType {
	private long id;
	private long employeeId;
	private String contractType;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public EmployeeContractType() {
	}

	/**
	 * @param employeeId
	 * @param contractType
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public EmployeeContractType(long employeeId, String contractType,
			int modifiedBy, Date modificationDate) {
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
	public EmployeeContractType(long id, long employeeId, String contractType,
			int modifiedBy, Date modificationDate) {
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
			String sqlStr = "insert into tbl_employee_contract_type values(?,?,?,?,?)";
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

	public static void update(EmployeeContractType employeeContractType) {
		try {
			String sqlStr = "update tbl_employee_contract_type set employee_id = ?, contract_type = ?," +
					"modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, employeeContractType.getEmployeeId());
			pStmt.setString(2, employeeContractType.getContractType());
			pStmt.setInt(3, employeeContractType.getModifiedBy());
			pStmt.setDate(4, employeeContractType.getModificationDate());
			pStmt.setLong(5, employeeContractType.getId());
			DBConnection.writeToDatabase(pStmt);
			System.out.println(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String command = "delete from tbl_employee_contract_type where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<EmployeeContractType> getAllEmployeeContractTypes() {
		List<EmployeeContractType> list = new ArrayList<EmployeeContractType>();
		EmployeeContractType employeeContractType = null;
		try {
			String query = "select * from tbl_employee_contract_type order by contract_type";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeeContractType = new EmployeeContractType(rSet.getLong("id"),rSet.getLong("employee_id"),
						rSet.getString("contract_type"),rSet.getInt("modified_by"),rSet.getDate("modification_date"));
				list.add(employeeContractType);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static EmployeeContractType getEmployeeContractType(long id) {
		EmployeeContractType employeeContractType = null;
		try {
			String query = "select * from tbl_employee_contract_type order by contract_type";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeeContractType = new EmployeeContractType(rSet.getLong("id"),rSet.getLong("employee_id"),
						rSet.getString("contract_type"),rSet.getInt("modified_by"),rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return employeeContractType;
	}
	
	public static EmployeeContractType getEmployeeContractTypeForEmployee(long employeeId){
		EmployeeContractType employeeContractType = null;
		try {
			String query = "select * from tbl_employee_contract_type where employee_id = "+employeeId;
			System.out.println(query);
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeeContractType = new EmployeeContractType(rSet.getLong("id"),rSet.getLong("employee_id"),
						rSet.getString("contract_type"),rSet.getInt("modified_by"),rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return employeeContractType;
	}
}// end class
