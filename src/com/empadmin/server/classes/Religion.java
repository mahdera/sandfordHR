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
public class Religion {
	private int id;
	private String religion;

	/**
	 * 
	 */
	public Religion() {
	}

	/**
	 * @param religion
	 */
	public Religion(String religion) {
		this.religion = religion;
	}

	/**
	 * @param id
	 * @param religion
	 */
	public Religion(int id, String religion) {
		this.id = id;
		this.religion = religion;
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
	 * @return the religion
	 */
	public String getReligion() {
		return religion;
	}

	/**
	 * @param religion
	 *            the religion to set
	 */
	public void setReligion(String religion) {
		this.religion = religion;
	}

	public void addReligion() {
		try {
			String command = "INSERT INTO tbl_religion VALUES(0,'"+this.getReligion()+"')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateReligion(int id, String religion) {
		try {
			String command = "UPDATE tbl_religion SET religion = '"+religion+"' WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteReligion(int id) {
		try {
			String command = "DELETE FROM tbl_religion WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Religion> getAllReligions() {
		List<Religion> list = new ArrayList<Religion>();
		Religion religion = null;
		try {
			String query = "SELECT * FROM tbl_religion ORDER BY religion ASC";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				religion = new Religion(rSet.getInt("id"),rSet.getString("religion"));
				list.add(religion);				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Religion getReligion(int id) {		
		Religion religion = null;
		try {
			String query = "SELECT * FROM tbl_religion WHERE id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				religion = new Religion(rSet.getInt("id"),rSet.getString("religion"));					
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return religion;
	}
}// end class
