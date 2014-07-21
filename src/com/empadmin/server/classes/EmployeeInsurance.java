/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Mahder on macbook Pro
 * 
 */
public class EmployeeInsurance {
	private long id;
	private long employeeId;
	private String insurancePolicyNumber;

	/**
	 * 
	 */
	public EmployeeInsurance() {
	}

	/**
	 * @param employeeId
	 * @param insurancePolicyNumber
	 */
	public EmployeeInsurance(long employeeId, String insurancePolicyNumber) {
		this.employeeId = employeeId;
		this.insurancePolicyNumber = insurancePolicyNumber;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param insurancePolicyNumber
	 */
	public EmployeeInsurance(long id, long employeeId,
			String insurancePolicyNumber) {
		this.id = id;
		this.employeeId = employeeId;
		this.insurancePolicyNumber = insurancePolicyNumber;
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
	 * @return the insurancePolicyNumber
	 */
	public String getInsurancePolicyNumber() {
		return insurancePolicyNumber;
	}

	/**
	 * @param insurancePolicyNumber
	 *            the insurancePolicyNumber to set
	 */
	public void setInsurancePolicyNumber(String insurancePolicyNumber) {
		this.insurancePolicyNumber = insurancePolicyNumber;
	}

	public void save() {
		try {
			String sqlStr = "insert into tbl_employee_insurance values(?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setString(3, this.getInsurancePolicyNumber());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(EmployeeInsurance employeeInsurance) {
		try {
			String sqlStr = "update tbl_employee_insurance set employee_id = ?, insurance_policy_number = ?" +
					" where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, employeeInsurance.getEmployeeId());
			pStmt.setString(2, employeeInsurance.getInsurancePolicyNumber());
			pStmt.setLong(3, employeeInsurance.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_employee_insurance where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<EmployeeInsurance> getAllEmployeeInsurances() {
		List<EmployeeInsurance> list = new ArrayList<EmployeeInsurance>();
		EmployeeInsurance employeeInsurance = null;
		try {
			String query = "select * from tbl_employee_insurance ";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeeInsurance = new EmployeeInsurance(rSet.getLong("id"),rSet.getLong("employee_id"),
						rSet.getString("insurance_policy_number"));
				list.add(employeeInsurance);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static EmployeeInsurance getEmployeeInsurance(long id) {
		EmployeeInsurance employeeInsurance = null;
		try {
			String query = "select * from tbl_employee_insurance where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeeInsurance = new EmployeeInsurance(rSet.getLong("id"),rSet.getLong("employee_id"),
						rSet.getString("insurance_policy_number"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return employeeInsurance;
	}
	
	public static EmployeeInsurance getEmployeeInsuranceForEmployee(long employeeId) {
		EmployeeInsurance employeeInsurance = null;
		try {
			String query = "select * from tbl_employee_insurance where employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeeInsurance = new EmployeeInsurance(rSet.getLong("id"),rSet.getLong("employee_id"),
						rSet.getString("insurance_policy_number"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return employeeInsurance;
	}
	
}// end class
