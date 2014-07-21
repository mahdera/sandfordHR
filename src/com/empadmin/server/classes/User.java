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
public class User {
	private int id;
	private String fullName;
	private String userType;

	/**
	 * 
	 */
	public User() {
	}

	/**
	 * @param fullName
	 * @param userType
	 */
	public User(String fullName, String userType) {
		this.fullName = fullName;
		this.userType = userType;
	}

	/**
	 * @param id
	 * @param fullName
	 * @param userType
	 */
	public User(int id, String fullName, String userType) {
		this.id = id;
		this.fullName = fullName;
		this.userType = userType;
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
	 * @return the fullName
	 */
	public String getFullName() {
		return fullName;
	}

	/**
	 * @param fullName
	 *            the fullName to set
	 */
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	/**
	 * @return the userType
	 */
	public String getUserType() {
		return userType;
	}

	/**
	 * @param userType
	 *            the userType to set
	 */
	public void setUserType(String userType) {
		this.userType = userType;
	}

	public void addUser() {
		try {
			String command = "INSERT INTO tbl_user VALUES(0,'"+this.getFullName()+"','"+this.getUserType()+"')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateUser(int id, String fullName, String userType) {
		try {
			String command = "UPDATE tbl_user SET full_name = '"+fullName+"', user_type = '"+userType+"' WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteUser(int id) {
		try {
			String command = "DELETE FROM tbl_user WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<User> getAllUsers() {
		List<User> list = new ArrayList<User>();
		User user = null;
		try {
			String query = "SELECT * FROM tbl_user ORDER BY full_name ASC";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				user = new User(rSet.getInt("id"),rSet.getString("full_name"),rSet.getString("user_type"));
				list.add(user);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static User getUser(int id) {		
		User user = null;
		try {
			String query = "SELECT * FROM tbl_user WHERE id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				user = new User(rSet.getInt("id"),rSet.getString("full_name"),rSet.getString("user_type"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return user;
	}
	
	public static User getUserWith(String fullName,String userType){
		User user = null;
		try {
			String query = "SELECT * FROM tbl_user WHERE full_name = '"+fullName+"' AND user_type = '"+userType+"'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				user = new User(rSet.getInt("id"),rSet.getString("full_name"),rSet.getString("user_type"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return user;
	}
}// end class
