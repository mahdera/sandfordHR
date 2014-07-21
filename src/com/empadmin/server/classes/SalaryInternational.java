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
public class SalaryInternational {
	private long id;
	private int payGradeId;
	private int payFrequencyId;
	private float etbAmount;
	private float usdAmount;
	private String comments;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public SalaryInternational() {
	}

	/**
	 * @param payGradeId
	 * @param payFrequencyId
	 * @param amount
	 * @param comments
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public SalaryInternational(int payGradeId, int payFrequencyId, float etbAmount,float usdAmount,
			String comments, int modifiedBy, Date modificationDate) {
		this.payGradeId = payGradeId;
		this.payFrequencyId = payFrequencyId;
		this.etbAmount = etbAmount;
		this.usdAmount = usdAmount;
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
	public SalaryInternational(long id, int payGradeId, int payFrequencyId, float etbAmount,float usdAmount,
			String comments, int modifiedBy, Date modificationDate) {
		this.id = id;
		this.payGradeId = payGradeId;
		this.payFrequencyId = payFrequencyId;
		this.etbAmount = etbAmount;
		this.usdAmount = usdAmount;
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
	public float getEtbAmount() {
		return etbAmount;
	}

	/**
	 * @param amount
	 *            the amount to set
	 */
	public void setEtbAmount(float etbAmount) {
		this.etbAmount = etbAmount;
	}
	
	

	/**
	 * @return the usdAmount
	 */
	public float getUsdAmount() {
		return usdAmount;
	}

	/**
	 * @param usdAmount the usdAmount to set
	 */
	public void setUsdAmount(float usdAmount) {
		this.usdAmount = usdAmount;
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
			String sqlStr = "insert into tbl_salary_international values(?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setInt(2, this.getPayGradeId());
			pStmt.setInt(3, this.getPayFrequencyId());
			pStmt.setFloat(4, this.getEtbAmount());
			pStmt.setFloat(5, this.getUsdAmount());
			pStmt.setString(6, this.getComments());
			pStmt.setInt(7, this.getModifiedBy());
			pStmt.setDate(8, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(SalaryInternational salary) {
		try {
			String sqlStr = "update tbl_salary_international set pay_grade_id = ?, pay_frequency_id = ?, etb_amount = ?," +
					"usd_amount = ?, comments = ?, modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, salary.getPayGradeId());
			pStmt.setInt(2, salary.getPayFrequencyId());
			pStmt.setFloat(3, salary.getEtbAmount());
			pStmt.setFloat(4, salary.getUsdAmount());
			pStmt.setString(5, salary.getComments());
			pStmt.setInt(6, salary.getModifiedBy());
			pStmt.setDate(7, salary.getModificationDate());
			pStmt.setLong(8, salary.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_salary_international where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<SalaryInternational> getAllSalaries() {
		List<SalaryInternational> list = new ArrayList<SalaryInternational>();
		SalaryInternational salary = null;
		try {
			String query = "select * from tbl_salary_international order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				salary = new SalaryInternational(rSet.getLong("id"),rSet.getInt("pay_grade_id"),rSet.getInt("pay_frequency_id"),
						rSet.getFloat("etb_amount"),rSet.getFloat("usd_amount"),rSet.getString("comments"),rSet.getInt("modified_by"),rSet.getDate("modification_date"));
				list.add(salary);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static SalaryInternational getSalary(long id) {
		SalaryInternational salary = null;
		try {
			String query = "select * from tbl_salary_international where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				salary = new SalaryInternational(rSet.getLong("id"),rSet.getInt("pay_grade_id"),rSet.getInt("pay_frequency_id"),
						rSet.getFloat("etb_amount"),rSet.getFloat("usd_amount"),rSet.getString("comments"),rSet.getInt("modified_by"),rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return salary;
	}
	
	public static SalaryInternational fetchSalaryUsing(int payGradeId,int payFrequencyId, float etbAmount, float usdAmount, int modifiedBy, Date modificationDate){
		SalaryInternational salary = null;
		try {
			String query = "select * from tbl_salary_international where pay_grade_id = "+payGradeId+" and pay_frequency_id = "+
					payFrequencyId+" and etb_amount = "+etbAmount+" and usd_amount = "+usdAmount+" and modified_by = "+modifiedBy+" and modification_date = '"+modificationDate+"'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				salary = new SalaryInternational(rSet.getLong("id"),rSet.getInt("pay_grade_id"),rSet.getInt("pay_frequency_id"),
						rSet.getFloat("etb_amount"),rSet.getFloat("usd_amount"),rSet.getString("comments"),rSet.getInt("modified_by"),rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return salary;
	}
}// end class
