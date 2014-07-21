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
public class ResignationLetter {
	private long id;
	private long employeeId;
	private Date resignationLetterDate;
	private String description;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public ResignationLetter() {
	}

	/**
	 * @param employeeId
	 * @param resignationLetterDate
	 * @param description
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public ResignationLetter(long employeeId, Date resignationLetterDate,
			String description, int modifiedBy, Date modificationDate) {
		this.employeeId = employeeId;
		this.resignationLetterDate = resignationLetterDate;
		this.description = description;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param resignationLetterDate
	 * @param description
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public ResignationLetter(long id, long employeeId,
			Date resignationLetterDate, String description, int modifiedBy,
			Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.resignationLetterDate = resignationLetterDate;
		this.description = description;
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
	 * @return the resignationLetterDate
	 */
	public Date getResignationLetterDate() {
		return resignationLetterDate;
	}

	/**
	 * @param resignationLetterDate
	 *            the resignationLetterDate to set
	 */
	public void setResignationLetterDate(Date resignationLetterDate) {
		this.resignationLetterDate = resignationLetterDate;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description
	 *            the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
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
			String sqlStr = "insert into tbl_resignation_letter values(?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setDate(3, this.getResignationLetterDate());
			pStmt.setString(4, this.getDescription());
			pStmt.setInt(5, this.getModifiedBy());
			pStmt.setDate(6, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(ResignationLetter resignationLetter) {
		try {
			String sqlStr = "update tbl_resignation_letter set employee_id = ?, resignation_letter_date = ?," +
					"description = ?, modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, resignationLetter.getEmployeeId());
			pStmt.setDate(2, resignationLetter.getResignationLetterDate());
			pStmt.setString(3, resignationLetter.getDescription());
			pStmt.setInt(4, resignationLetter.getModifiedBy());
			pStmt.setDate(5, resignationLetter.getModificationDate());
			pStmt.setLong(6, resignationLetter.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_resignation_letter where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<ResignationLetter> getAllResignationLetters() {
		List<ResignationLetter> list = new ArrayList<ResignationLetter>();
		ResignationLetter resignationLetter = null;
		try {
			String query = "select * from tbl_resignation_letter order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				resignationLetter = new ResignationLetter(rSet.getLong("id"),rSet.getLong("employee_id"),
						rSet.getDate("resignation_letter_date"),rSet.getString("description"),
						rSet.getInt("modified_by"),rSet.getDate("modification_date"));
				list.add(resignationLetter);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static ResignationLetter getResignationLetter(long id) {
		ResignationLetter resignationLetter = null;
		try {
			String query = "select * from tbl_resignation_letter where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				resignationLetter = new ResignationLetter(rSet.getLong("id"),rSet.getLong("employee_id"),
						rSet.getDate("resignation_letter_date"),rSet.getString("description"),
						rSet.getInt("modified_by"),rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return resignationLetter;
	}
	
	public static ResignationLetter getResignationLetterForEmployee(long employeeId) {
		ResignationLetter resignationLetter = null;
		try {
			String query = "select * from tbl_resignation_letter where employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				resignationLetter = new ResignationLetter(rSet.getLong("id"),rSet.getLong("employee_id"),
						rSet.getDate("resignation_letter_date"),rSet.getString("description"),
						rSet.getInt("modified_by"),rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return resignationLetter;
	}
}// end class
