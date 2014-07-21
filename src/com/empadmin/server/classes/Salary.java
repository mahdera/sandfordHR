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
public class Salary {
	private long id;
	private int payGradeId;
	private int payFrequencyId;
	private float amount;
	private String comments;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public Salary() {
	}

	/**
	 * @param payGradeId
	 * @param payFrequencyId
	 * @param amount
	 * @param comments
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public Salary(int payGradeId, int payFrequencyId, float amount,
			String comments, int modifiedBy, Date modificationDate) {
		this.payGradeId = payGradeId;
		this.payFrequencyId = payFrequencyId;
		this.amount = amount;
		this.comments = comments;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param payGradeId
	 * @param payFrequencyId
	 * @param amount
	 * @param comments
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public Salary(long id, int payGradeId, int payFrequencyId, float amount,
			String comments, int modifiedBy, Date modificationDate) {
		this.id = id;
		this.payGradeId = payGradeId;
		this.payFrequencyId = payFrequencyId;
		this.amount = amount;
		this.comments = comments;
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
	 * @return the payGradeId
	 */
	public int getPayGradeId() {
		return payGradeId;
	}

	/**
	 * @param payGradeId
	 *            the payGradeId to set
	 */
	public void setPayGradeId(int payGradeId) {
		this.payGradeId = payGradeId;
	}

	/**
	 * @return the payFrequencyId
	 */
	public int getPayFrequencyId() {
		return payFrequencyId;
	}

	/**
	 * @param payFrequencyId
	 *            the payFrequencyId to set
	 */
	public void setPayFrequencyId(int payFrequencyId) {
		this.payFrequencyId = payFrequencyId;
	}

	/**
	 * @return the amount
	 */
	public float getAmount() {
		return amount;
	}

	/**
	 * @param amount
	 *            the amount to set
	 */
	public void setAmount(float amount) {
		this.amount = amount;
	}

	/**
	 * @return the comments
	 */
	public String getComments() {
		return comments;
	}

	/**
	 * @param comments
	 *            the comments to set
	 */
	public void setComments(String comments) {
		this.comments = comments;
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
			String sqlStr = "insert into tbl_salary values(?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setInt(2, this.getPayGradeId());
			pStmt.setInt(3, this.getPayFrequencyId());
			pStmt.setFloat(4, this.getAmount());
			pStmt.setString(5, this.getComments());
			pStmt.setInt(6, this.getModifiedBy());
			pStmt.setDate(7, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(Salary salary) {
		try {
			String sqlStr = "update tbl_salary set pay_grade_id = ?, pay_frequency_id = ?, amount = ?," +
					"comments = ?, modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, salary.getPayGradeId());
			pStmt.setInt(2, salary.getPayFrequencyId());
			pStmt.setFloat(3, salary.getAmount());
			pStmt.setString(4, salary.getComments());
			pStmt.setInt(5, salary.getModifiedBy());
			pStmt.setDate(6, salary.getModificationDate());
			pStmt.setLong(7, salary.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_salary where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Salary> getAlSalaries() {
		List<Salary> list = new ArrayList<Salary>();
		Salary salary = null;
		try {
			String query = "select * from tbl_salary order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				salary = new Salary(rSet.getLong("id"),rSet.getInt("pay_grade_id"),rSet.getInt("pay_frequency_id"),
						rSet.getFloat("amount"),rSet.getString("comments"),rSet.getInt("modified_by"),rSet.getDate("modification_date"));
				list.add(salary);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Salary getSalary(long id) {
		Salary salary = null;
		try {
			String query = "select * from tbl_salary where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				salary = new Salary(rSet.getLong("id"),rSet.getInt("pay_grade_id"),rSet.getInt("pay_frequency_id"),
						rSet.getFloat("amount"),rSet.getString("comments"),rSet.getInt("modified_by"),rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return salary;
	}
	
	public static Salary fetchSalaryUsing(int payGradeId,int payFrequencyId, float amount, int modifiedBy, Date modificationDate){
		Salary salary = null;
		try {
			String query = "select * from tbl_salary where pay_grade_id = "+payGradeId+" and pay_frequency_id = "+
					payFrequencyId+" and amount = "+amount+" and modified_by = "+modifiedBy+" and modification_date = '"+modificationDate+"'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				salary = new Salary(rSet.getLong("id"),rSet.getInt("pay_grade_id"),rSet.getInt("pay_frequency_id"),
						rSet.getFloat("amount"),rSet.getString("comments"),rSet.getInt("modified_by"),rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return salary;
	}
}// end class
