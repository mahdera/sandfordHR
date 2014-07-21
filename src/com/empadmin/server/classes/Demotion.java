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
public class Demotion {
	private long id;
	private long employeeId;
	private int fromDepartmentId;
	private int toDepartmentId;
	private String demotionDetail;
	private Date demotionDate;
	private int jobId;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public Demotion() {
	}

	/**
	 * @param employeeId
	 * @param fromDepartmentId
	 * @param toDepartmentId
	 * @param demotionDetail
	 * @param demotionDate
	 * @param jobId
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public Demotion(long employeeId, int fromDepartmentId, int toDepartmentId,
			String demotionDetail, Date demotionDate, int jobId,
			int modifiedBy, Date modificationDate) {
		this.employeeId = employeeId;
		this.fromDepartmentId = fromDepartmentId;
		this.toDepartmentId = toDepartmentId;
		this.demotionDetail = demotionDetail;
		this.demotionDate = demotionDate;
		this.jobId = jobId;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param fromDepartmentId
	 * @param toDepartmentId
	 * @param demotionDetail
	 * @param demotionDate
	 * @param jobId
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public Demotion(long id, long employeeId, int fromDepartmentId,
			int toDepartmentId, String demotionDetail, Date demotionDate,
			int jobId, int modifiedBy, Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.fromDepartmentId = fromDepartmentId;
		this.toDepartmentId = toDepartmentId;
		this.demotionDetail = demotionDetail;
		this.demotionDate = demotionDate;
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
	 * @return the fromDepartmentId
	 */
	public int getFromDepartmentId() {
		return fromDepartmentId;
	}

	/**
	 * @param fromDepartmentId
	 *            the fromDepartmentId to set
	 */
	public void setFromDepartmentId(int fromDepartmentId) {
		this.fromDepartmentId = fromDepartmentId;
	}

	/**
	 * @return the toDepartmentId
	 */
	public int getToDepartmentId() {
		return toDepartmentId;
	}

	/**
	 * @param toDepartmentId
	 *            the toDepartmentId to set
	 */
	public void setToDepartmentId(int toDepartmentId) {
		this.toDepartmentId = toDepartmentId;
	}

	/**
	 * @return the demotionDetail
	 */
	public String getDemotionDetail() {
		return demotionDetail;
	}

	/**
	 * @param demotionDetail
	 *            the demotionDetail to set
	 */
	public void setDemotionDetail(String demotionDetail) {
		this.demotionDetail = demotionDetail;
	}

	/**
	 * @return the demotionDate
	 */
	public Date getDemotionDate() {
		return demotionDate;
	}

	/**
	 * @param demotionDate
	 *            the demotionDate to set
	 */
	public void setDemotionDate(Date demotionDate) {
		this.demotionDate = demotionDate;
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
			String sqlStr = "insert into tbl_demotion values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setInt(3, this.getFromDepartmentId());
			pStmt.setInt(4, this.getToDepartmentId());
			pStmt.setString(5, this.getDemotionDetail());
			pStmt.setDate(6, this.getDemotionDate());
			pStmt.setInt(7, this.getJobId());
			pStmt.setInt(8, this.getModifiedBy());
			pStmt.setDate(9, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(Demotion demotion) {
		try {
			String sqlStr = "update tbl_demotion set employee_id = ?, from_department_id = ?," +
					"to_department_id = ?, demotion_detail = ?, demotion_date = ?, job_id = ?," +
					"modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, demotion.getEmployeeId());
			pStmt.setInt(2, demotion.getFromDepartmentId());
			pStmt.setInt(3, demotion.getToDepartmentId());
			pStmt.setString(4, demotion.getDemotionDetail());
			pStmt.setDate(5, demotion.getDemotionDate());
			pStmt.setInt(6, demotion.getJobId());
			pStmt.setInt(7, demotion.getModifiedBy());
			pStmt.setDate(8, demotion.getModificationDate());
			pStmt.setLong(9, demotion.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_demotion where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Demotion> getAlldemotions() {
		List<Demotion> list = new ArrayList<Demotion>();
		Demotion demotion = null;
		try {
			String query = "select * from tbl_demotion order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				demotion = new Demotion(rSet.getLong("id"), rSet.getLong("employee_id"), rSet.getInt("from_department_id"), 
						rSet.getInt("to_department_id"), rSet.getString("demotion_detail"), rSet.getDate("demotion_date"), 
						rSet.getInt("job_id"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(demotion);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Demotion getdemotion(long id) {
		Demotion demotion = null;
		try {
			String query = "select * from tbl_demotion where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				demotion = new Demotion(rSet.getLong("id"), rSet.getLong("employee_id"), rSet.getInt("from_department_id"), 
						rSet.getInt("to_department_id"), rSet.getString("demotion_detail"), rSet.getDate("demotion_date"), 
						rSet.getInt("job_id"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return demotion;
	}
}//end class
