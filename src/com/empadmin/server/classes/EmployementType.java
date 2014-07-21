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
public class EmployementType {
	private int id;
	private String employementType;

	/**
	 * 
	 */
	public EmployementType() {
	}

	/**
	 * @param employementType
	 */
	public EmployementType(String employementType) {
		this.employementType = employementType;
	}

	/**
	 * @param id
	 * @param employementType
	 */
	public EmployementType(int id, String employementType) {
		this.id = id;
		this.employementType = employementType;
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
	 * @return the employementType
	 */
	public String getEmployementType() {
		return employementType;
	}

	/**
	 * @param employementType
	 *            the employementType to set
	 */
	public void setEmployementType(String employementType) {
		this.employementType = employementType;
	}

	public void addEmployementType() {
		try {
			String command = "INSERT INTO tbl_employement_type VALUES(0,'"+this.getEmployementType()+"')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateEmployementType(int id, String employementType) {
		try {
			String command = "UPDATE tbl_employement_type SET employement_type = '"+employementType+"' WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteEmployementType(int id) {
		try {
			String command = "DELETE FROM tbl_employement_type WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<EmployementType> getAllEmployementTypes() {
		List<EmployementType> list = new ArrayList<EmployementType>();
		EmployementType eT = null;
		try {
			String query = "SELECT * FROM tbl_employement_type ORDER BY employement_type ASC";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				eT = new EmployementType(rSet.getInt("id"),rSet.getString("employement_type"));
				list.add(eT);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static EmployementType getEmployementType(int id) {		
		EmployementType eT = null;
		try {
			String query = "SELECT * FROM tbl_employement_type WHERE id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				eT = new EmployementType(rSet.getInt("id"),rSet.getString("employement_type"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return eT;
	}
}// end class
