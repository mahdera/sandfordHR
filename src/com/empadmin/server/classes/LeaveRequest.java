/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

/**
 * @author alemayehu
 * 
 */
public class LeaveRequest {
	private long id;
	private long employeeId;
	private Date leaveRequestDate;
	private int leaveTypeId;
	private float numberOfDays;
	private String purpose;
	private Timestamp dateFrom;
	private Timestamp dateTo;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public LeaveRequest() {
	}

	/**
	 * @param employeeId
	 * @param leaveRequestDate
	 * @param leaveTypeId
	 * @param numberOfDays
	 * @param purpose
	 * @param dateFrom
	 * @param dateTo
	 * @param modifiedBy;
	 * @param modificationDate;
	 */
	public LeaveRequest(long employeeId, Date leaveRequestDate,
			int leaveTypeId, float numberOfDays, String purpose, Timestamp dateFrom,
			Timestamp dateTo,int modifiedBy,Date modificationDate) {
		this.employeeId = employeeId;
		this.leaveRequestDate = leaveRequestDate;
		this.leaveTypeId = leaveTypeId;
		this.numberOfDays = numberOfDays;
		this.purpose = purpose;
		this.dateFrom = dateFrom;
		this.dateTo = dateTo;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param leaveRequestDate
	 * @param leaveTypeId
	 * @param numberOfDays
	 * @param purpose
	 * @param dateFrom
	 * @param dateTo
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public LeaveRequest(long id, long employeeId, Date leaveRequestDate,
			int leaveTypeId, float numberOfDays, String purpose, Timestamp dateFrom,
			Timestamp dateTo,int modifiedBy,Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.leaveRequestDate = leaveRequestDate;
		this.leaveTypeId = leaveTypeId;
		this.numberOfDays = numberOfDays;
		this.purpose = purpose;
		this.dateFrom = dateFrom;
		this.dateTo = dateTo;
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
	 * @return the leaveRequestDate
	 */
	public Date getLeaveRequestDate() {
		return leaveRequestDate;
	}

	/**
	 * @param leaveRequestDate
	 *            the leaveRequestDate to set
	 */
	public void setLeaveRequestDate(Date leaveRequestDate) {
		this.leaveRequestDate = leaveRequestDate;
	}

	/**
	 * @return the leaveTypeId
	 */
	public int getLeaveTypeId() {
		return leaveTypeId;
	}

	/**
	 * @param leaveTypeId
	 *            the leaveTypeId to set
	 */
	public void setLeaveTypeId(int leaveTypeId) {
		this.leaveTypeId = leaveTypeId;
	}

	/**
	 * @return the numberOfDays
	 */
	public float getNumberOfDays() {
		return numberOfDays;
	}

	/**
	 * @param numberOfDays
	 *            the numberOfDays to set
	 */
	public void setNumberOfDays(float numberOfDays) {
		this.numberOfDays = numberOfDays;
	}

	/**
	 * @return the purpose
	 */
	public String getPurpose() {
		return purpose;
	}

	/**
	 * @param purpose
	 *            the purpose to set
	 */
	public void setPurpose(String purpose) {
		this.purpose = purpose;
	}

	/**
	 * @return the dateFrom
	 */
	public Timestamp getDateFrom() {
		return dateFrom;
	}

	/**
	 * @param dateFrom
	 *            the dateFrom to set
	 */
	public void setDateFrom(Timestamp dateFrom) {
		this.dateFrom = dateFrom;
	}

	/**
	 * @return the dateTo
	 */
	public Timestamp getDateTo() {
		return dateTo;
	}

	/**
	 * @param dateTo
	 *            the dateTo to set
	 */
	public void setDateTo(Timestamp dateTo) {
		this.dateTo = dateTo;
	}
	
	

	/**
	 * @return the modifiedBy
	 */
	public int getModifiedBy() {
		return modifiedBy;
	}

	/**
	 * @param modifiedBy the modifiedBy to set
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
	 * @param modificationDate the modificationDate to set
	 */
	public void setModificationDate(Date modificationDate) {
		this.modificationDate = modificationDate;
	}

	public void save() {
		try {
			String sqlStr = "insert into tbl_leave_request values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setDate(3, this.getLeaveRequestDate());
			pStmt.setInt(4, this.getLeaveTypeId());
			pStmt.setFloat(5, this.getNumberOfDays());
			pStmt.setString(6, this.getPurpose());
			pStmt.setTimestamp(7, this.getDateFrom());
			pStmt.setTimestamp(8, this.getDateTo());
			pStmt.setInt(9, this.getModifiedBy());
			pStmt.setDate(10, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(LeaveRequest leaveRequest) {
		try {
			String sqlStr = "update tbl_leave_request set employee_id = ?, leave_request_date = ?," +
					"leave_type_id = ?, number_of_days = ?, purpose = ?, date_from = ?, date_to = ?," +
					"modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, leaveRequest.getEmployeeId());
			pStmt.setDate(2, leaveRequest.getLeaveRequestDate());
			pStmt.setInt(3, leaveRequest.getLeaveTypeId());
			pStmt.setFloat(4, leaveRequest.getNumberOfDays());
			pStmt.setString(5, leaveRequest.getPurpose());
			pStmt.setTimestamp(6, leaveRequest.getDateFrom());
			pStmt.setTimestamp(7, leaveRequest.getDateTo());
			pStmt.setInt(8, leaveRequest.getModifiedBy());
			pStmt.setDate(9, leaveRequest.getModificationDate());
			pStmt.setLong(10, leaveRequest.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String command = "delete from tbl_leave_request where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<LeaveRequest> getAllLeaveRequests() {
		List<LeaveRequest> list = new ArrayList<LeaveRequest>();
		LeaveRequest leaveRequest = null;
		try {
			String query = "select * from tbl_leave_request order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				leaveRequest = new LeaveRequest(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getDate("leave_request_date"),rSet.getInt("leave_type_id"), 
						rSet.getFloat("number_of_days"), rSet.getString("purpose"),rSet.getTimestamp("date_from"), 
						rSet.getTimestamp("date_to"), rSet.getInt("modified_by"),rSet.getDate("modification_date"));
				list.add(leaveRequest);
			}//end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static LeaveRequest getLeaveRequest(long id) {
		LeaveRequest leaveRequest = null;
		try {
			String query = "select * from tbl_leave_request where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				leaveRequest = new LeaveRequest(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getDate("leave_request_date"),rSet.getInt("leave_type_id"), 
						rSet.getFloat("number_of_days"), rSet.getString("purpose"),rSet.getTimestamp("date_from"), 
						rSet.getTimestamp("date_to"), rSet.getInt("modified_by"),rSet.getDate("modification_date"));				
			}//end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return leaveRequest;
	}
	
	public static List<LeaveRequest> getAllLeaveRequestsDuringYearAndMonth(int yearParam, int monthParam){
		List<LeaveRequest> list = new ArrayList<LeaveRequest>();
		LeaveRequest leaveRequest = null;
		try{
			String query = "select tbl_leave_request.* from tbl_leave_request,tbl_employee where tbl_leave_request.employee_id = " +
					"tbl_employee.id and DATE_FORMAT(leave_request_date, '%Y') = "+yearParam+" and DATE_FORMAT(leave_request_date, '%m') = "+
					monthParam+" order by first_name, middle_name, last_name";
			
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				leaveRequest = new LeaveRequest(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getDate("leave_request_date"),rSet.getInt("leave_type_id"), 
						rSet.getFloat("number_of_days"), rSet.getString("purpose"),rSet.getTimestamp("date_from"), 
						rSet.getTimestamp("date_to"), rSet.getInt("modified_by"),rSet.getDate("modification_date"));
				list.add(leaveRequest);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}// end class
