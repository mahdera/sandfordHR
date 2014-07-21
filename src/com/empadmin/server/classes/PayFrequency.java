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
public class PayFrequency {
	private int id;
	private String frequencyName;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public PayFrequency() {
	}

	/**
	 * @param frequencyName
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public PayFrequency(String frequencyName, int modifiedBy,
			Date modificationDate) {
		this.frequencyName = frequencyName;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param frequencyName
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public PayFrequency(int id, String frequencyName, int modifiedBy,
			Date modificationDate) {
		this.id = id;
		this.frequencyName = frequencyName;
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
	 * @return the frequencyName
	 */
	public String getFrequencyName() {
		return frequencyName;
	}

	/**
	 * @param frequencyName
	 *            the frequencyName to set
	 */
	public void setFrequencyName(String frequencyName) {
		this.frequencyName = frequencyName;
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
			String sqlStr = "insert into tbl_pay_frequency values(?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, 0);
			pStmt.setString(2, this.getFrequencyName());
			pStmt.setInt(3, this.getModifiedBy());
			pStmt.setDate(4, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(PayFrequency payFrequency) {
		try {
			String sqlStr = "update tbl_pay_frequency set frequency_name = ?, modified_by = ?," +
					"modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setString(1, payFrequency.getFrequencyName());
			pStmt.setInt(2, payFrequency.getModifiedBy());
			pStmt.setDate(3, payFrequency.getModificationDate());
			pStmt.setInt(4, payFrequency.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(int id) {
		try {
			String sqlStr = "delete from tbl_pay_frequency where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<PayFrequency> getAFrequencies() {
		List<PayFrequency> list = new ArrayList<PayFrequency>();
		PayFrequency payFrequency = null;
		try {
			String query = "select * from tbl_pay_frequency order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				payFrequency = new PayFrequency(rSet.getInt("id"), rSet.getString("frequency_name"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(payFrequency);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static PayFrequency getPayFrequency(int id) {
		PayFrequency payFrequency = null;
		try {
			String query = "select * from tbl_pay_frequency where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				payFrequency = new PayFrequency(rSet.getInt("id"), rSet.getString("frequency_name"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return payFrequency;
	}
}// end class
