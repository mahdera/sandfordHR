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
 * @author mahder
 * 
 */
public class WorksAt {
	private long id;
	private long employeeId;
	private int collegeId;
	private int fisId;
	private int departmentId;
	private Date employementDate;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public WorksAt() {
	}

	/**
	 * @param employeeId
	 * @param collegeId
	 * @param fisId
	 * @param departmentId
	 * @param employementDate
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public WorksAt(long employeeId, int collegeId, int fisId, int departmentId,
			Date employementDate, int modifiedBy, Date modificationDate) {
		this.employeeId = employeeId;
		this.collegeId = collegeId;
		this.fisId = fisId;
		this.departmentId = departmentId;
		this.employementDate = employementDate;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param collegeId
	 * @param fisId
	 * @param departmentId
	 * @param employementDate
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public WorksAt(long id, long employeeId, int collegeId, int fisId,
			int departmentId, Date employementDate, int modifiedBy,
			Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.collegeId = collegeId;
		this.fisId = fisId;
		this.departmentId = departmentId;
		this.employementDate = employementDate;
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
	 * @return the collegeId
	 */
	public int getCollegeId() {
		return collegeId;
	}

	/**
	 * @param collegeId
	 *            the collegeId to set
	 */
	public void setCollegeId(int collegeId) {
		this.collegeId = collegeId;
	}

	/**
	 * @return the fisId
	 */
	public int getFisId() {
		return fisId;
	}

	/**
	 * @param fisId
	 *            the fisId to set
	 */
	public void setFisId(int fisId) {
		this.fisId = fisId;
	}

	/**
	 * @return the departmentId
	 */
	public int getDepartmentId() {
		return departmentId;
	}

	/**
	 * @param departmentId
	 *            the departmentId to set
	 */
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}

	/**
	 * @return the employementDate
	 */
	public Date getEmployementDate() {
		return employementDate;
	}

	/**
	 * @param employementDate
	 *            the employementDate to set
	 */
	public void setEmployementDate(Date employementDate) {
		this.employementDate = employementDate;
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
			String sqlStr = "insert into tbl_works_at values(?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setInt(3, this.getCollegeId());
			pStmt.setInt(4, this.getFisId());
			pStmt.setInt(5, this.getDepartmentId());
			pStmt.setDate(6, this.getEmployementDate());
			pStmt.setInt(7, this.getModifiedBy());
			pStmt.setDate(8, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(WorksAt worksAt) {
		try {
			String sqlStr = "update tbl_works_at set employee_id = ?, college_id = ?, fis_id = ?," +
					"department_id = ?, employement_date = ?, modified_by = ?, modification_date = ?" +
					"where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, worksAt.getEmployeeId());
			pStmt.setInt(2, worksAt.getCollegeId());
			pStmt.setInt(3, worksAt.getFisId());
			pStmt.setInt(4, worksAt.getDepartmentId());
			pStmt.setDate(5, worksAt.getEmployementDate());
			pStmt.setInt(6, worksAt.getModifiedBy());
			pStmt.setDate(7, worksAt.getModificationDate());
			pStmt.setLong(8, worksAt.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_works_at where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<WorksAt> getAllWorksAts() {
		List<WorksAt> list = new ArrayList<WorksAt>();
		WorksAt worksAt = null;
		try {
			String query = "select * from tbl_works_at";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				worksAt = new WorksAt(rSet.getLong("id"), rSet.getLong("employee_id"), rSet.getInt("college_id"), 
						rSet.getInt("fis_id"), rSet.getInt("department_id"), rSet.getDate("employement_date"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(worksAt);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static WorksAt getWorksAt(long id) {
		WorksAt worksAt = null;
		try {
			String query = "select * from tbl_works_at where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				worksAt = new WorksAt(rSet.getLong("id"), rSet.getLong("employee_id"), rSet.getInt("college_id"), 
						rSet.getInt("fis_id"), rSet.getInt("department_id"), rSet.getDate("employement_date"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return worksAt;
	}
	
	public static WorksAt getWorksAtForEmployee(long employeeId){
		WorksAt worksAt = null;
		try {
			String query = "select * from tbl_works_at where employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				worksAt = new WorksAt(rSet.getLong("id"), rSet.getLong("employee_id"), rSet.getInt("college_id"), 
						rSet.getInt("fis_id"), rSet.getInt("department_id"), rSet.getDate("employement_date"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return worksAt;
	}
}// end class
