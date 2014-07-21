/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author mahder
 * 
 */
public class OtherComment {
	private long id;
	private String comment;
	private long employeeId;

	/**
	 * 
	 */
	public OtherComment() {
	}

	/**
	 * @param comment
	 * @param employeeId
	 */
	public OtherComment(String comment, long employeeId) {
		this.comment = comment;
		this.employeeId = employeeId;
	}

	/**
	 * @param id
	 * @param comment
	 * @param employeeId
	 */
	public OtherComment(long id, String comment, long employeeId) {
		this.id = id;
		this.comment = comment;
		this.employeeId = employeeId;
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
	 * @return the comment
	 */
	public String getComment() {
		return comment;
	}

	/**
	 * @param comment
	 *            the comment to set
	 */
	public void setComment(String comment) {
		this.comment = comment;
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

	public void addOtherComment() {
		try {
			String command = "INSERT INTO tbl_other_comment VALUES(0,'"+this.getComment()+"',"+
			this.getEmployeeId()+")";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateOtherComment(long id, String comment) {
		try {
			String command = "UPDATE tbl_other_comment SET comment = '"+comment+"'"+
			" WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteOtherComment(long id) {
		try {
			String command = "DELETE FROM tbl_other_comment WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<OtherComment> getAllOtherCommentsForEmployee(
			long employeeId) {
		List<OtherComment> list = new ArrayList<OtherComment>();
		OtherComment o = null;
		try {
			String query = "SELECT * FROM tbl_other_comment WHERE employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				o = new OtherComment(rSet.getLong("id"),rSet.getString("comment"),rSet.getLong("employee_id"));
				list.add(o);				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static OtherComment getOtherComment(long id) {		
		OtherComment o = null;
		try {
			String query = "SELECT * FROM tbl_other_comment WHERE id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				o = new OtherComment(rSet.getLong("id"),rSet.getString("comment"),rSet.getLong("employee_id"));								
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return o;
	}
}// end class
