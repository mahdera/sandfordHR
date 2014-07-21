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
public class FieldOfStudy {
	private int id;
	private String fieldOfStudy;

	/**
	 * 
	 */
	public FieldOfStudy() {
	}

	/**
	 * @param fieldOfStudy
	 */
	public FieldOfStudy(String fieldOfStudy) {
		this.fieldOfStudy = fieldOfStudy;
	}

	/**
	 * @param id
	 * @param fieldOfStudy
	 */
	public FieldOfStudy(int id, String fieldOfStudy) {
		this.id = id;
		this.fieldOfStudy = fieldOfStudy;
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
	 * @return the fieldOfStudy
	 */
	public String getFieldOfStudy() {
		return fieldOfStudy;
	}

	/**
	 * @param fieldOfStudy
	 *            the fieldOfStudy to set
	 */
	public void setFieldOfStudy(String fieldOfStudy) {
		this.fieldOfStudy = fieldOfStudy;
	}

	public void addFieldOfStudy() {
		try {
			String command = "INSERT INTO tbl_field_of_study VALUES(0,'"+this.getFieldOfStudy()+"')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateFieldOfStudy(int id, String fieldOfStudy) {
		try {
			String command = "UPDATE tbl_field_of_study SET field_of_study = '"+fieldOfStudy+"' WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteFieldOfStudy(int id) {
		try {
			String command = "DELETE FROM tbl_field_of_study WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<FieldOfStudy> getAllFieldOfStudies() {
		List<FieldOfStudy> list = new ArrayList<FieldOfStudy>();
		FieldOfStudy f = null;
		try {
			String query = "SELECT * FROM tbl_field_of_study ORDER BY field_of_study ASC";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				f = new FieldOfStudy(rSet.getInt("id"),rSet.getString("field_of_study"));
				list.add(f);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static FieldOfStudy getFieldOfStudy(int id) {		
		FieldOfStudy f = null;
		try {
			String query = "SELECT * FROM tbl_field_of_study WHERE id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				f = new FieldOfStudy(rSet.getInt("id"),rSet.getString("field_of_study"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return f;
	}
	
	
}// end class
