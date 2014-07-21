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
public class PayGrade {
	private int id;
	private String code;
	private String name;
	private float minimumSalary;
	private float maximumSalary;
	private int stepIncrease;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public PayGrade() {
	}

	/**
	 * @param code
	 * @param name
	 * @param minimumSalary
	 * @param maximumSalary
	 * @param stepIncrease
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public PayGrade(String code, String name, float minimumSalary,
			float maximumSalary, int stepIncrease, int modifiedBy,
			Date modificationDate) {
		this.code = code;
		this.name = name;
		this.minimumSalary = minimumSalary;
		this.maximumSalary = maximumSalary;
		this.stepIncrease = stepIncrease;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param code
	 * @param name
	 * @param minimumSalary
	 * @param maximumSalary
	 * @param stepIncrease
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public PayGrade(int id, String code, String name, float minimumSalary,
			float maximumSalary, int stepIncrease, int modifiedBy,
			Date modificationDate) {
		this.id = id;
		this.code = code;
		this.name = name;
		this.minimumSalary = minimumSalary;
		this.maximumSalary = maximumSalary;
		this.stepIncrease = stepIncrease;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id
	 *            the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the code
	 */
	public String getCode() {
		return code;
	}

	/**
	 * @param code
	 *            the code to set
	 */
	public void setCode(String code) {
		this.code = code;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the minimumSalary
	 */
	public float getMinimumSalary() {
		return minimumSalary;
	}

	/**
	 * @param minimumSalary
	 *            the minimumSalary to set
	 */
	public void setMinimumSalary(float minimumSalary) {
		this.minimumSalary = minimumSalary;
	}

	/**
	 * @return the maximumSalary
	 */
	public float getMaximumSalary() {
		return maximumSalary;
	}

	/**
	 * @param maximumSalary
	 *            the maximumSalary to set
	 */
	public void setMaximumSalary(float maximumSalary) {
		this.maximumSalary = maximumSalary;
	}

	/**
	 * @return the stepIncrease
	 */
	public int getStepIncrease() {
		return stepIncrease;
	}

	/**
	 * @param stepIncrease
	 *            the stepIncrease to set
	 */
	public void setStepIncrease(int stepIncrease) {
		this.stepIncrease = stepIncrease;
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
			String sqlStr = "insert into tbl_pay_grade values(?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, 0);
			pStmt.setString(2, this.getCode());
			pStmt.setString(3, this.getName());
			pStmt.setFloat(4, this.getMinimumSalary());
			pStmt.setFloat(5, this.getMaximumSalary());
			pStmt.setInt(6, this.getStepIncrease());
			pStmt.setInt(7, this.getModifiedBy());
			pStmt.setDate(8, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(PayGrade payGrade) {
		try {
			String sqlStr = "update tbl_pay_grade set code = ?, name = ?, minimum_salary = ?, maximum_salary = ?," +
					"step_increase = ?, modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setString(1, payGrade.getCode());
			pStmt.setString(2, payGrade.getName());
			pStmt.setFloat(3, payGrade.getMinimumSalary());
			pStmt.setFloat(4, payGrade.getMaximumSalary());
			pStmt.setInt(5, payGrade.getStepIncrease());
			pStmt.setInt(6, payGrade.getModifiedBy());
			pStmt.setDate(7, payGrade.getModificationDate());
			pStmt.setInt(8, payGrade.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(int id) {
		try {
			String sqlStr = "delete from tbl_pay_grade where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<PayGrade> getAllPayGrades() {
		List<PayGrade> list = new ArrayList<PayGrade>();
		PayGrade payGrade = null;
		try {
			String query = "select * from tbl_pay_grade order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				payGrade = new PayGrade(rSet.getInt("id"),rSet.getString("code"),rSet.getString("name"),
						rSet.getFloat("minimum_salary"),rSet.getFloat("maximum_salary"),
						rSet.getInt("step_increase"),rSet.getInt("modified_by"),rSet.getDate("modification_date"));
				list.add(payGrade);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static PayGrade getPayGrade(int id) {
		PayGrade payGrade = null;
		try {
			String query = "select * from tbl_pay_grade where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				payGrade = new PayGrade(rSet.getInt("id"),rSet.getString("code"),rSet.getString("name"),
						rSet.getFloat("minimum_salary"),rSet.getFloat("maximum_salary"),
						rSet.getInt("step_increase"),rSet.getInt("modified_by"),rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return payGrade;
	}
}// end class
