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
public class EmployeeJob {
	private long id;
	private long employeeId;
	private int jobId;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public EmployeeJob() {
	}

	/**
	 * @param employeeId
	 * @param jobId
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public EmployeeJob(long employeeId, int jobId, int modifiedBy,
			Date modificationDate) {
		this.employeeId = employeeId;
		this.jobId = jobId;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param jobId
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public EmployeeJob(long id, long employeeId, int jobId, int modifiedBy,
			Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.jobId = jobId;
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
	 * @return the jobId
	 */
	public int getJobId() {
		return jobId;
	}

	/**
	 * @param jobId
	 *            the jobId to set
	 */
	public void setJobId(int jobId) {
		this.jobId = jobId;
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
			String sqlStr = "insert into tbl_employee_job values(?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, this.getId());
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setInt(3, this.getJobId());
			pStmt.setInt(4, this.getModifiedBy());
			pStmt.setDate(5, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(EmployeeJob employeeJob) {
		try {
			String sqlStr = "update tbl_employee_job set employee_id = ?, job_id = ?," +
					"modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, employeeJob.getEmployeeId());
			pStmt.setInt(2, employeeJob.getJobId());
			pStmt.setInt(3, employeeJob.getModifiedBy());
			pStmt.setDate(4, employeeJob.getModificationDate());
			pStmt.setLong(5, employeeJob.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_employee_job where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<EmployeeJob> getAllEmployeeJobs() {
		List<EmployeeJob> list = new ArrayList<EmployeeJob>();
		EmployeeJob employeeJob = null;
		try {
			String query = "select * from tbl_employee_job order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeeJob = new EmployeeJob(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getInt("job_id"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(employeeJob);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static EmployeeJob getEmployeeJob(long id) {
		EmployeeJob employeeJob = null;
		try {
			String query = "select * from tbl_employee_job where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeeJob = new EmployeeJob(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getInt("job_id"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return employeeJob;
	}
	
	public static EmployeeJob getEmployeeJobForThisEmployee(long employeeId){
		EmployeeJob employeeJob = null;
		try {
			String query = "select * from tbl_employee_job where employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeeJob = new EmployeeJob(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getInt("job_id"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return employeeJob;
	}
}// end class
