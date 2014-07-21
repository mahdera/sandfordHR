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
public class Attendance {
	private long id;
	private long employeeId;
	private Timestamp punchIn;
	private String punchInNote;
	private Timestamp  punchOut;
	private String punchOutNote;
	private String status;
	private int modifiedBy;
	private Date modificationDate;
	private String totalHour;

	/**
	 * 
	 */
	public Attendance() {
	}

	/**
	 * @param employeeId
	 * @param punchIn
	 * @param punchInNote
	 * @param punchOut
	 * @param punchOutNote
	 * @param status
	 * @param modifiedBy
	 * @param modificationDate
	 * @param totalHour;
	 */
	public Attendance(long employeeId, Timestamp punchIn, String punchInNote,
			Timestamp punchOut, String punchOutNote, String status, int modifiedBy,
			Date modificationDate,String totalHour) {
		this.employeeId = employeeId;
		this.punchIn = punchIn;
		this.punchInNote = punchInNote;
		this.punchOut = punchOut;
		this.punchOutNote = punchOutNote;
		this.status = status;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
		this.totalHour = totalHour;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param punchIn
	 * @param punchInNote
	 * @param punchOut
	 * @param punchOutNote
	 * @param status
	 * @param modifiedBy
	 * @param modificationDate
	 * @param totalHour
	 */
	public Attendance(long id, long employeeId, Timestamp punchIn,
			String punchInNote, Timestamp punchOut, String punchOutNote, String status,
			int modifiedBy, Date modificationDate, String totalHour) {
		this.id = id;
		this.employeeId = employeeId;
		this.punchIn = punchIn;
		this.punchInNote = punchInNote;
		this.punchOut = punchOut;
		this.punchOutNote = punchOutNote;
		this.status = status;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
		this.totalHour = totalHour;
	}
	
	

	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}

	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}

	/**
	 * @return the totalHour
	 */
	public String getTotalHour() {
		return totalHour;
	}

	/**
	 * @param totalHour the totalHour to set
	 */
	public void setTotalHour(String totalHour) {
		this.totalHour = totalHour;
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
	 * @return the punchIn
	 */
	public Timestamp getPunchIn() {
		return punchIn;
	}

	/**
	 * @param punchIn
	 *            the punchIn to set
	 */
	public void setPunchIn(Timestamp punchIn) {
		this.punchIn = punchIn;
	}

	/**
	 * @return the punchInNote
	 */
	public String getPunchInNote() {
		return punchInNote;
	}

	/**
	 * @param punchInNote
	 *            the punchInNote to set
	 */
	public void setPunchInNote(String punchInNote) {
		this.punchInNote = punchInNote;
	}

	/**
	 * @return the punchOut
	 */
	public Timestamp getPunchOut() {
		return punchOut;
	}

	/**
	 * @param punchOut
	 *            the punchOut to set
	 */
	public void setPunchOut(Timestamp punchOut) {
		this.punchOut = punchOut;
	}

	/**
	 * @return the punchOutNote
	 */
	public String getPunchOutNote() {
		return punchOutNote;
	}

	/**
	 * @param punchOutNote
	 *            the punchOutNote to set
	 */
	public void setPunchOutNote(String punchOutNote) {
		this.punchOutNote = punchOutNote;
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
			String sqlStr = "insert into tbl_attendance values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setTimestamp(3, this.getPunchIn());
			pStmt.setString(4, this.getPunchInNote());
			pStmt.setTimestamp(5, this.getPunchOut());
			pStmt.setString(6, this.getPunchInNote());
			pStmt.setString(7, this.getStatus());
			pStmt.setInt(8, this.getModifiedBy());
			pStmt.setDate(9, this.getModificationDate());
			pStmt.setString(10, this.getTotalHour());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(Attendance attendance) {
		try {
			String sqlStr = "update tbl_attendance set employee_id = ?, punch_in = ?, punch_in_note = ?," +
					"punch_out = ?, punch_out_note = ?, status = ?, modified_by = ?, modification_date = ?, total_hour = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, attendance.getEmployeeId());
			pStmt.setTimestamp(2, attendance.getPunchIn());
			pStmt.setString(3, attendance.getPunchInNote());
			pStmt.setTimestamp(4, attendance.getPunchOut());
			pStmt.setString(5, attendance.getPunchOutNote());
			pStmt.setString(6, attendance.getStatus());
			pStmt.setInt(7, attendance.getModifiedBy());
			pStmt.setDate(8, attendance.getModificationDate());
			pStmt.setString(9, attendance.getTotalHour());
			pStmt.setLong(10, attendance.getId());			
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_attendance where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Attendance> getAllAttendances() {
		List<Attendance> list = new ArrayList<Attendance>();
		Attendance attendance = null;
		try {
			String query = "select * from tbl_attendance order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				attendance = new Attendance(rSet.getLong("id"), rSet.getLong("employee_id"), rSet.getTimestamp("punch_in"), 
						rSet.getString("punch_in_note"), rSet.getTimestamp("punch_out"), rSet.getString("punch_out_note"), rSet.getString("status"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"),rSet.getString("total_hour"));
				list.add(attendance);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Attendance getAttendance(long id) {
		Attendance attendance = null;
		try {
			String query = "select * from tbl_attendance where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				attendance = new Attendance(rSet.getLong("id"), rSet.getLong("employee_id"), rSet.getTimestamp("punch_in"), 
						rSet.getString("punch_in_note"), rSet.getTimestamp("punch_out"), rSet.getString("punch_out_note"), rSet.getString("status"),
						rSet.getInt("modified_by"), rSet.getDate("modification_date"),rSet.getString("total_hour"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return attendance;
	}
	
	public static List<Attendance> getAllAttendanceDataForEmployee(long employeeId){
		List<Attendance> list = new ArrayList<Attendance>();
		Attendance attendance = null;
		try{
			String query = "select * from tbl_attendance where employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				attendance = new Attendance(rSet.getLong("id"), rSet.getLong("employee_id"), rSet.getTimestamp("punch_in"), 
						rSet.getString("punch_in_note"), rSet.getTimestamp("punch_out"), rSet.getString("punch_out_note"), rSet.getString("status"),
						rSet.getInt("modified_by"), rSet.getDate("modification_date"),rSet.getString("total_hour"));
				list.add(attendance);
			}//end while loop
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public static List<AbsentBean> getAllAbsentBeansDuring(int yearParam, int monthParam){
		List<AbsentBean> list = new ArrayList<AbsentBean>();
		AbsentBean absentBean = null;
		try{
			String query = "SELECT DISTINCT employee_id, COUNT(*) AS absentDays FROM tbl_attendance, tbl_employee WHERE DATE_FORMAT( tbl_attendance.modification_date,  '%Y' ) = "+ yearParam
			+" AND DATE_FORMAT( tbl_attendance.modification_date,  '%m' ) = "+monthParam
			+" AND STATUS =  'Absent' AND tbl_attendance.employee_id = tbl_employee.id ORDER BY first_name, middle_name, last_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				absentBean = new AbsentBean(rSet.getLong("employee_id"), rSet.getFloat("absentDays"));
				list.add(absentBean);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}// end class
