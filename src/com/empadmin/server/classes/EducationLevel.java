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
public class EducationLevel {
	private int id;
	private String educationLevel;

	/**
	 * 
	 */
	public EducationLevel() {
	}

	/**
	 * @param educationLevel
	 */
	public EducationLevel(String educationLevel) {
		this.educationLevel = educationLevel;
	}

	/**
	 * @param id
	 * @param educationLevel
	 */
	public EducationLevel(int id, String educationLevel) {
		this.id = id;
		this.educationLevel = educationLevel;
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
	 * @return the educationLevel
	 */
	public String getEducationLevel() {
		return educationLevel;
	}

	/**
	 * @param educationLevel
	 *            the educationLevel to set
	 */
	public void setEducationLevel(String educationLevel) {
		this.educationLevel = educationLevel;
	}

	public void addEducationLevel() {
		try {
			String command = "INSERT INTO tbl_education_level VALUES(0,'"+this.getEducationLevel()+"')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateEducationLevel(int id, String educationLevel) {
		try {
			String command = "UPDATE tbl_education_level SET education_level = '"+educationLevel+"' WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteEducationLevel(int id) {
		try {
			String command = "DELETE FROM tbl_education_level WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<EducationLevel> getAllEducationLevels() {
		List<EducationLevel> list = new ArrayList<EducationLevel>();
		EducationLevel educationLevel = null;
		try {
			String query = "SELECT * FROM tbl_education_level ORDER BY education_level ASC";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				educationLevel = new EducationLevel(rSet.getInt("id"),rSet.getString("education_level"));
				list.add(educationLevel);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static EducationLevel getEducationLevel(int id) {		
		EducationLevel educationLevel = null;
		try {
			String query = "SELECT * FROM tbl_education_level WHERE id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				educationLevel = new EducationLevel(rSet.getInt("id"),rSet.getString("education_level"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return educationLevel;
	}
}// end class
