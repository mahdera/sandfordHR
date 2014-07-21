/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author alemayehu
 * 
 */
public class GriveanceManagement {
	private long id;
	private long employeeId;
	private String subject;
	private String description;
	private Date griveanceDate;

	/**
	 * 
	 */
	public GriveanceManagement() {
	}

	/**
	 * @param employeeId
	 * @param subject
	 * @param description
	 * @param griveanceDate
	 */
	public GriveanceManagement(long employeeId, String subject,
			String description, Date griveanceDate) {
		this.employeeId = employeeId;
		this.subject = subject;
		this.description = description;
		this.griveanceDate = griveanceDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param subject
	 * @param description
	 * @param griveanceDate
	 */
	public GriveanceManagement(long id, long employeeId, String subject,
			String description, Date griveanceDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.subject = subject;
		this.description = description;
		this.griveanceDate = griveanceDate;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(long employeeId) {
		this.employeeId = employeeId;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getGriveanceDate() {
		return griveanceDate;
	}

	public void setGriveanceDate(Date griveanceDate) {
		this.griveanceDate = griveanceDate;
	}

	public void addGriveanceManagement() {
		try {
			String command = "insert into tbl_griveance_management values(0,"+
		this.getEmployeeId()+",'"+this.getSubject()+"','"+this.getDescription()+"','"+
					this.getGriveanceDate()+"')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateGriveanceManagement(long id,String subject,
			String description,Date griveanceDate) {
		try {
			String command = "update tbl_griveance_management set subject = '"+
		subject+"', description ='"+description+"', griveance_date='"+
					griveanceDate+"' where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteGriveanceManagement(long id) {
		try {
			String command = "delete from tbl_griveance_management where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<GriveanceManagement> getAllGriveanceManagements() {
		List<GriveanceManagement> list = new ArrayList<GriveanceManagement>();
		GriveanceManagement griveanceManagement = null;
		try {
			String query = "select * from tbl_griveance_management";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				griveanceManagement = new GriveanceManagement(rSet.getLong("id"),
						rSet.getLong("employee_id"),rSet.getString("subject"),
						rSet.getString("description"),rSet.getDate("griveance_date"));
				list.add(griveanceManagement);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public static List<GriveanceManagement> getAllGriveanceManagementsForThisEmployee(long employeeId){
		List<GriveanceManagement> list = new ArrayList<GriveanceManagement>();
		GriveanceManagement griveanceManagement = null;
		try {
			String query = "select * from tbl_griveance_management where employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				griveanceManagement = new GriveanceManagement(rSet.getLong("id"),
						rSet.getLong("employee_id"),rSet.getString("subject"),
						rSet.getString("description"),rSet.getDate("griveance_date"));
				list.add(griveanceManagement);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static GriveanceManagement getGriveanceManagement(long id) {
		GriveanceManagement griveanceManagement = null;
		try {
			String query = "select * from tbl_griveance_management where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				griveanceManagement = new GriveanceManagement(rSet.getLong("id"),
						rSet.getLong("employee_id"),rSet.getString("subject"),
						rSet.getString("description"),rSet.getDate("griveance_date"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return griveanceManagement;
	}
}// end class
