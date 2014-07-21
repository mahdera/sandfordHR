/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author alemayehu
 * 
 */
public class EmergencyContact {
	private long id;
	private String firstName;
	private String lastName;
	private String relationship;
	private String homeTelephone;
	private String mobile;
	private String workTelephone;
	private long employeeId;

	/**
	 * 
	 */
	public EmergencyContact() {
	}

	/**
	 * @param firstName
	 * @param lastName
	 * @param relationship
	 * @param homeTelephone
	 * @param mobile
	 * @param workTelephone
	 * @param employeeId
	 */
	public EmergencyContact(String firstName, String lastName,
			String relationship, String homeTelephone, String mobile,
			String workTelephone, long employeeId) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.relationship = relationship;
		this.homeTelephone = homeTelephone;
		this.mobile = mobile;
		this.workTelephone = workTelephone;
		this.employeeId = employeeId;
	}

	/**
	 * @param id
	 * @param firstName
	 * @param lastName
	 * @param relationship
	 * @param homeTelephone
	 * @param mobile
	 * @param workTelephone
	 * @param employeeId
	 */
	public EmergencyContact(long id, String firstName, String lastName,
			String relationship, String homeTelephone, String mobile,
			String workTelephone, long employeeId) {
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.relationship = relationship;
		this.homeTelephone = homeTelephone;
		this.mobile = mobile;
		this.workTelephone = workTelephone;
		this.employeeId = employeeId;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getRelationship() {
		return relationship;
	}

	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}

	public String getHomeTelephone() {
		return homeTelephone;
	}

	public void setHomeTelephone(String homeTelephone) {
		this.homeTelephone = homeTelephone;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getWorkTelephone() {
		return workTelephone;
	}

	public void setWorkTelephone(String workTelephone) {
		this.workTelephone = workTelephone;
	}

	public long getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(long employeeId) {
		this.employeeId = employeeId;
	}

	public void addEmergencyContact() {
		try {
			String command = "insert into tbl_emergency_contact values(0,'"+
		this.getFirstName()+"','"+this.getLastName()+"','"+this.getRelationship()+"','"+
					this.getHomeTelephone()+"','"+this.getMobile()+"','"+this.getWorkTelephone()+"',"+
		this.getEmployeeId()+")";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateEmergencyContact(long id,String firstName,String lastName,
			String relationship,String homeTelephone,String mobile,String workTelephone,
			long employeeId) {
		try {
			String command = "update tbl_emergency_contact set first_name='"+
		firstName+"', last_name='"+lastName+"', relationship='"+relationship+"', "+
					"home_telephone='"+homeTelephone+"', mobile='"+mobile+"', work_telephone='"+
		workTelephone+"', employee_id="+employeeId+" where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteEmergencyContact(long id) {
		try {
			String command = "delete from tbl_emergency_contact where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}
	
	public static void deleteEmergenceContaceInformationForEmployee(long empId){
		try{
			String command = "delete from tbl_emergency_contact where employee_id = "+empId;
			DBConnection.writeToDatabase(command);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
	}

	public static List<EmergencyContact> getAllEmergencyContacts() {
		List<EmergencyContact> list = new ArrayList<EmergencyContact>();
		EmergencyContact emergencyContact = null;
		try {
			String query = "select * from tbl_emergency_contact";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				emergencyContact = new EmergencyContact(rSet.getLong("id"),
						rSet.getString("first_name"),rSet.getString("last_name"),
						rSet.getString("relationship"),rSet.getString("home_telephone"),
						rSet.getString("mobile"),rSet.getString("work_telephone"),
						rSet.getLong("employee_id"));
				list.add(emergencyContact);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static EmergencyContact getEmergencyContact(long id) {
		EmergencyContact emergencyContact = null;
		try {
			String query = "select * from tbl_emergency_contact where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				emergencyContact = new EmergencyContact(rSet.getLong("id"),
						rSet.getString("first_name"),rSet.getString("last_name"),
						rSet.getString("relationship"),rSet.getString("home_telephone"),
						rSet.getString("mobile"),rSet.getString("work_telephone"),
						rSet.getLong("employee_id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return emergencyContact;
	}
	
	public static EmergencyContact getEmergencyContactForEmployee(long employeeId){
		EmergencyContact emergencyContact = null;
		try {
			String query = "select * from tbl_emergency_contact where employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				emergencyContact = new EmergencyContact(rSet.getLong("id"),
						rSet.getString("first_name"),rSet.getString("last_name"),
						rSet.getString("relationship"),rSet.getString("home_telephone"),
						rSet.getString("mobile"),rSet.getString("work_telephone"),
						rSet.getLong("employee_id"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return emergencyContact;
	}
	
	public static boolean doesThisEmployeeHasEmergencyContact(long employeeId){
		boolean hasEmergencyContact = false;
		try{
			String query = "SELECT COUNT(*) AS c FROM tbl_emergency_contact WHERE employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			
			while(rSet.next()){
				int cVal = rSet.getInt("c");
				if(cVal != 0)
					hasEmergencyContact = true;
			}//end while loop
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return hasEmergencyContact;
	}
}// end class
