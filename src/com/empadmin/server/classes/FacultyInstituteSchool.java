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
public class FacultyInstituteSchool {
	private int id;
	private String fisCode;
	private String fisName;
	private int collegeId;
	private String fisDescription;

	/**
	 * 
	 */
	public FacultyInstituteSchool() {
	}

	/**
	 * @param fisName
	 * @param collegeCode
	 * @param fisDescription
	 */
	public FacultyInstituteSchool(String fisName, int collegeId,
			String fisDescription) {
		this.fisName = fisName;
		this.collegeId = collegeId;
		this.fisDescription = fisDescription;
	}

	/**
	 * @param fisCode
	 * @param fisName
	 * @param collegeCode
	 * @param fisDescription
	 */
	public FacultyInstituteSchool(String fisCode, String fisName,
			int collegeId, String fisDescription) {
		this.fisCode = fisCode;
		this.fisName = fisName;
		this.collegeId = collegeId;
		this.fisDescription = fisDescription;
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
	 * @param id
	 * @param fisCode
	 * @param fisName
	 * @param collegeCode
	 * @param fisDescription
	 */
	public FacultyInstituteSchool(int id, String fisCode, String fisName,
			int collegeId, String fisDescription) {
		this.id = id;
		this.fisCode = fisCode;
		this.fisName = fisName;
		this.collegeId = collegeId;
		this.fisDescription = fisDescription;
	}
	
	

	/**
	 * @return the collegeId
	 */
	public int getCollegeId() {
		return collegeId;
	}

	/**
	 * @param collegeId the collegeId to set
	 */
	public void setCollegeId(int collegeId) {
		this.collegeId = collegeId;
	}

	/**
	 * @return the fisCode
	 */
	public String getFisCode() {
		return fisCode;
	}

	/**
	 * @param fisCode
	 *            the fisCode to set
	 */
	public void setFisCode(String fisCode) {
		this.fisCode = fisCode;
	}

	/**
	 * @return the fisName
	 */
	public String getFisName() {
		return fisName;
	}

	/**
	 * @param fisName
	 *            the fisName to set
	 */
	public void setFisName(String fisName) {
		this.fisName = fisName;
	}

	/**
	
	/**
	 * @return the fisDescription
	 */
	public String getFisDescription() {
		return fisDescription;
	}

	/**
	 * @param fisDescription
	 *            the fisDescription to set
	 */
	public void setFisDescription(String fisDescription) {
		this.fisDescription = fisDescription;
	}

	public void addFacultyInistituteSchool() {
		try {
			String command = "INSERT INTO tbl_faculty_institute_school VALUES(0,'"+this.getFisCode()+"','"+
			this.getFisName()+"',"+this.getCollegeId()+",'"+this.getFisDescription()+"')";
			System.out.println(command);
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateFacultyInstituteSchool(String fisCode,
			String fisName, int collegeId, String fisDescription,int id) {		
		
		try {
			String command = "UPDATE tbl_faculty_institute_school SET fis_name = '"+fisName+"', "+
			"college_id = '"+collegeId+"', description = '"+fisDescription+"', fis_code = '"+fisCode+"' WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteFacultyInstituteSchool(int id) {		
		try {
			String command = "DELETE FROM tbl_faculty_institute_school WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<FacultyInstituteSchool> getAllFacultyInstituteSchools() {
		List<FacultyInstituteSchool> list = new ArrayList<FacultyInstituteSchool>();
		FacultyInstituteSchool fis = null;
		try {
			String query = "SELECT * FROM tbl_faculty_institute_school ORDER BY fis_name ASC";
			System.out.println(query);
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				fis = new FacultyInstituteSchool(rSet.getInt("id"),rSet.getString("fis_code"),rSet.getString("fis_name"),
						rSet.getInt("college_id"),rSet.getString("description"));
				list.add(fis);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static FacultyInstituteSchool getFacultyInstituteSchool(
			int id) {
		
		FacultyInstituteSchool fis = null;
		try {
			String query = "SELECT * FROM tbl_faculty_institute_school WHERE id = "+id;
			System.out.println(query);
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				fis = new FacultyInstituteSchool(rSet.getInt("id"),rSet.getString("fis_code"),rSet.getString("fis_name"),
						rSet.getInt("college_id"),rSet.getString("description"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return fis;
	}
	
	public static List<FacultyInstituteSchool> getAllFacultyInstituteSchoolsFoundInThisCollege(int collegeId) {
		List<FacultyInstituteSchool> list = new ArrayList<FacultyInstituteSchool>();
		FacultyInstituteSchool fis = null;
		try {
			String query = "SELECT * FROM tbl_faculty_institute_school WHERE college_id = "+collegeId+" ORDER BY fis_name ASC";
			System.out.println(query);
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				fis = new FacultyInstituteSchool(rSet.getInt("id"),rSet.getString("fis_code"),rSet.getString("fis_name"),
						rSet.getInt("college_id"),rSet.getString("description"));
				list.add(fis);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}// end class
