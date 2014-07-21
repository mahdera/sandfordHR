/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author alemayehu
 * 
 */
public class LeaveType {
	private long id;
	private String leaveTypeAbbrivation;
	private String leaveTypeName;
	private String description;

	/**
	 * 
	 */
	public LeaveType() {
	}

	/**
	 * @param leaveTypeAbbrivation
	 * @param leaveTypeName
	 * @param description
	 */
	public LeaveType(String leaveTypeAbbrivation, String leaveTypeName,
			String description) {
		this.leaveTypeAbbrivation = leaveTypeAbbrivation;
		this.leaveTypeName = leaveTypeName;
		this.description = description;
	}

	/**
	 * @param id
	 * @param leaveTypeAbbrivation
	 * @param leaveTypeName
	 * @param description
	 */
	public LeaveType(long id, String leaveTypeAbbrivation,
			String leaveTypeName, String description) {
		this.id = id;
		this.leaveTypeAbbrivation = leaveTypeAbbrivation;
		this.leaveTypeName = leaveTypeName;
		this.description = description;
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
	 * @return the leaveTypeAbbrivation
	 */
	public String getLeaveTypeAbbrivation() {
		return leaveTypeAbbrivation;
	}

	/**
	 * @param leaveTypeAbbrivation
	 *            the leaveTypeAbbrivation to set
	 */
	public void setLeaveTypeAbbrivation(String leaveTypeAbbrivation) {
		this.leaveTypeAbbrivation = leaveTypeAbbrivation;
	}

	/**
	 * @return the leaveTypeName
	 */
	public String getLeaveTypeName() {
		return leaveTypeName;
	}

	/**
	 * @param leaveTypeName
	 *            the leaveTypeName to set
	 */
	public void setLeaveTypeName(String leaveTypeName) {
		this.leaveTypeName = leaveTypeName;
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

	public void save() {
		try {
			String strSql = "insert into tbl_leave_type values(?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(strSql);
			pStmt.setLong(1, this.getId());
			pStmt.setString(2, this.getLeaveTypeAbbrivation());
			pStmt.setString(3, this.getLeaveTypeName());
			pStmt.setString(4, this.getDescription());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(LeaveType leaveType) {
		try {
			String sqlStr = "update tbl_leave_type set leave_type_abbrivation = ?, leave_type_name = ?," +
					"description = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setString(1, leaveType.getLeaveTypeAbbrivation());
			pStmt.setString(2, leaveType.getLeaveTypeName());
			pStmt.setString(3, leaveType.getDescription());
			pStmt.setLong(4, leaveType.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String command = "delete from tbl_leave_type where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<LeaveType> getAllLeaveTypes() {
		List<LeaveType> list = new ArrayList<LeaveType>();
		LeaveType leaveType = null;
		try {
			String query = "select * from tbl_leave_type order by leave_type_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				leaveType = new LeaveType(rSet.getLong("id"), rSet.getString("leave_type_abbrivation"), 
						rSet.getString("leave_type_name"), rSet.getString("description"));
				list.add(leaveType);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static LeaveType getLeaveType(long id) {
		LeaveType leaveType = null;
		try {
			String query = "select * from tbl_leave_type where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				leaveType = new LeaveType(rSet.getLong("id"), rSet.getString("leave_type_abbrivation"), 
						rSet.getString("leave_type_name"), rSet.getString("description"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return leaveType;
	}
}// end class
