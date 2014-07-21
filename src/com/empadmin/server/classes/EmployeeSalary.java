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
 * @author alemayehu
 * 
 */
public class EmployeeSalary {
	private long id;
	private long employeeId;
	private long salaryId;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public EmployeeSalary() {
	}

	/**
	 * @param employeeId
	 * @param salaryId
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public EmployeeSalary(long employeeId, long salaryId, int modifiedBy,
			Date modificationDate) {
		this.employeeId = employeeId;
		this.salaryId = salaryId;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param salaryId
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public EmployeeSalary(long id, long employeeId, long salaryId,
			int modifiedBy, Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.salaryId = salaryId;
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
	 * @return the salaryId
	 */
	public long getSalaryId() {
		return salaryId;
	}

	/**
	 * @param salaryId
	 *            the salaryId to set
	 */
	public void setSalaryId(long salaryId) {
		this.salaryId = salaryId;
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
			String sqlStr = "insert into tbl_employee_salary values(?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setLong(3, this.getSalaryId());
			pStmt.setInt(4, this.getModifiedBy());
			pStmt.setDate(5, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(EmployeeSalary employeeSalary) {
		try {
			String sqlStr = "update tbl_employee_salary set employee_id = ?, salary_id = ?, modified_by = ?," +
					"modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, employeeSalary.getEmployeeId());
			pStmt.setLong(2, employeeSalary.getSalaryId());
			pStmt.setInt(3, employeeSalary.getModifiedBy());
			pStmt.setDate(4, employeeSalary.getModificationDate());
			pStmt.setLong(5, employeeSalary.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {	
			String sqlStr = "delete from tbl_employee_salary where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<EmployeeSalary> getAllEmployeeSalaries() {
		List<EmployeeSalary> list = new ArrayList<EmployeeSalary>();
		EmployeeSalary employeeSalary = null;
		try {
			String query = "select * from tbl_employee_salary order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeeSalary = new EmployeeSalary(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getLong("salary_id"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(employeeSalary);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static EmployeeSalary getEmployeeSalary(long id) {
		EmployeeSalary employeeSalary = null;
		try {
			String query = "select * from tbl_employee_salary where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeeSalary = new EmployeeSalary(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getLong("salary_id"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return employeeSalary;
	}
	
	public static EmployeeSalary getEmployeeSalaryForThisEmployee(long employeeId){
		EmployeeSalary employeeSalary = null;
		try {
			String query = "select * from tbl_employee_salary where employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeeSalary = new EmployeeSalary(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getLong("salary_id"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return employeeSalary;
	}
}// end class
