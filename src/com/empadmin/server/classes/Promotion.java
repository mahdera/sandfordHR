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
public class Promotion {
	private long id;
	private long employeeId;
	private int fromDepartmentId;
	private int toDepartmentId;
	private String promotionDetail;
	private Date promotionDate;
	private int jobId;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public Promotion() {
	}

	/**
	 * @param employeeId
	 * @param fromDepartmentId
	 * @param toDepartmentId
	 * @param promotionDetail
	 * @param promotionDate
	 * @param jobId
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public Promotion(long employeeId, int fromDepartmentId, int toDepartmentId,
			String promotionDetail, Date promotionDate, int jobId,
			int modifiedBy, Date modificationDate) {
		this.employeeId = employeeId;
		this.fromDepartmentId = fromDepartmentId;
		this.toDepartmentId = toDepartmentId;
		this.promotionDetail = promotionDetail;
		this.promotionDate = promotionDate;
		this.jobId = jobId;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param fromDepartmentId
	 * @param toDepartmentId
	 * @param promotionDetail
	 * @param promotionDate
	 * @param jobId
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public Promotion(long id, long employeeId, int fromDepartmentId,
			int toDepartmentId, String promotionDetail, Date promotionDate,
			int jobId, int modifiedBy, Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.fromDepartmentId = fromDepartmentId;
		this.toDepartmentId = toDepartmentId;
		this.promotionDetail = promotionDetail;
		this.promotionDate = promotionDate;
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
	 * @return the promotionDetail
	 */
	public String getPromotionDetail() {
		return promotionDetail;
	}

	/**
	 * @param promotionDetail
	 *            the promotionDetail to set
	 */
	public void setPromotionDetail(String promotionDetail) {
		this.promotionDetail = promotionDetail;
	}

	/**
	 * @return the promotionDate
	 */
	public Date getPromotionDate() {
		return promotionDate;
	}

	/**
	 * @param promotionDate
	 *            the promotionDate to set
	 */
	public void setPromotionDate(Date promotionDate) {
		this.promotionDate = promotionDate;
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
			String sqlStr = "insert into tbl_promotion values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setInt(3, this.getFromDepartmentId());
			pStmt.setInt(4, this.getToDepartmentId());
			pStmt.setString(5, this.getPromotionDetail());
			pStmt.setDate(6, this.getPromotionDate());
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

	public static void update(Promotion promotion) {
		try {
			String sqlStr = "update tbl_promotion set employee_id = ?, from_department_id = ?," +
					"to_department_id = ?, promotion_detail = ?, promotion_date = ?, job_id = ?," +
					"modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, promotion.getEmployeeId());
			pStmt.setInt(2, promotion.getFromDepartmentId());
			pStmt.setInt(3, promotion.getToDepartmentId());
			pStmt.setString(4, promotion.getPromotionDetail());
			pStmt.setDate(5, promotion.getPromotionDate());
			pStmt.setInt(6, promotion.getJobId());
			pStmt.setInt(7, promotion.getModifiedBy());
			pStmt.setDate(8, promotion.getModificationDate());
			pStmt.setLong(9, promotion.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_promotion where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Promotion> getAllPromotions() {
		List<Promotion> list = new ArrayList<Promotion>();
		Promotion promotion = null;
		try {
			String query = "select * from tbl_promotion order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				promotion = new Promotion(rSet.getLong("id"), rSet.getLong("employee_id"), rSet.getInt("from_department_id"), 
						rSet.getInt("to_department_id"), rSet.getString("promotion_detail"), rSet.getDate("promotion_date"), 
						rSet.getInt("job_id"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(promotion);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Promotion getPromotion(long id) {
		Promotion promotion = null;
		try {
			String query = "select * from tbl_promotion where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				promotion = new Promotion(rSet.getLong("id"), rSet.getLong("employee_id"), rSet.getInt("from_department_id"), 
						rSet.getInt("to_department_id"), rSet.getString("promotion_detail"), rSet.getDate("promotion_date"), 
						rSet.getInt("job_id"), rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return promotion;
	}
}// end class
