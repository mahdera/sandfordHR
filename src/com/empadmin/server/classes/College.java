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
public class College {
	private int id;
	private String collegeCode;
	private String collegeName;
	private String collegeDescription;

	/**
	 * 
	 */
	public College() {
	}

	/**
	 * @param collegeName
	 * @param collegeDescription
	 */
	public College(String collegeName, String collegeDescription) {
		this.collegeName = collegeName;
		this.collegeDescription = collegeDescription;
	}

	/**
	 * @param collegeCode
	 * @param collegeName
	 * @param collegeDescription
	 */
	public College(String collegeCode, String collegeName,
			String collegeDescription) {
		this.collegeCode = collegeCode;
		this.collegeName = collegeName;
		this.collegeDescription = collegeDescription;
	}
	
	

	/**
	 * @param id
	 * @param collegeCode
	 * @param collegeName
	 * @param collegeDescription
	 */
	public College(int id, String collegeCode, String collegeName,
			String collegeDescription) {
		this.id = id;
		this.collegeCode = collegeCode;
		this.collegeName = collegeName;
		this.collegeDescription = collegeDescription;
	}
	
	
	
	

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the collegeCode
	 */
	public String getCollegeCode() {
		return collegeCode;
	}

	/**
	 * @param collegeCode
	 *            the collegeCode to set
	 */
	public void setCollegeCode(String collegeCode) {
		this.collegeCode = collegeCode;
	}

	/**
	 * @return the collegeName
	 */
	public String getCollegeName() {
		return collegeName;
	}

	/**
	 * @param collegeName
	 *            the collegeName to set
	 */
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}

	/**
	 * @return the collegeDescription
	 */
	public String getCollegeDescription() {
		return collegeDescription;
	}

	/**
	 * @param collegeDescription
	 *            the collegeDescription to set
	 */
	public void setCollegeDescription(String collegeDescription) {
		this.collegeDescription = collegeDescription;
	}

	public void addCollege() {
		try {
			String command = "INSERT INTO tbl_college VALUES(0,'"+this.getCollegeCode()+"','"+
			this.getCollegeName()+"','"+this.getCollegeDescription()+"')";
			System.out.println(command);
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateCollege(String collegeCode, String collegeName,
			String collegeDescription,int id) {
		
		try {
			String command = "UPDATE tbl_college SET college_name = '"+collegeName+"', "+
			"description = '"+collegeDescription+"', college_code = '"+collegeCode+"' WHERE id = "+id;
			System.out.println(command);
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteCollege(int id) {
		
		try {
			String command = "DELETE FROM tbl_college WHERE id = "+id;
			System.out.println(command);
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<College> getAllColleges() {
		List<College> list = new ArrayList<College>();
		College college = null;
		try {
			String query = "SELECT * FROM tbl_college ORDER BY college_name ASC";
			System.out.println(query);
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				college = new College(rSet.getInt("id"),rSet.getString("college_code"),rSet.getString("college_name"),
						rSet.getString("description"));
				list.add(college);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static College getCollege(int id) {		
		College college = null;
		
		try {
			String query = "SELECT * FROM tbl_college WHERE id = "+id;
			System.out.println("mahder trace this query : "+query);
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				college = new College(rSet.getInt("id"),rSet.getString("college_code"),rSet.getString("college_name"),
						rSet.getString("description"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return college;
	}
}// end class
