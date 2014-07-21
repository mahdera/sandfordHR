/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author mahder
 * 
 */
public class EducationInformation {
	private long id;
	private long employeeId;
	private String namePlaceCountry;
	private String attendedFrom;
	private String attendedTo;
	private String degreesAcademicDistinctions;
	private String mainCourseOfStudy;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public EducationInformation() {
	}

	/**
	 * @param employeeId
	 * @param namePlaceCountry
	 * @param attendedFrom
	 * @param attendedTo
	 * @param degreesAcademicDistinctions
	 * @param mainCourseOfStudy
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public EducationInformation(long employeeId, String namePlaceCountry,
			String attendedFrom, String attendedTo,
			String degreesAcademicDistinctions, String mainCourseOfStudy,
			int modifiedBy, Date modificationDate) {
		this.employeeId = employeeId;
		this.namePlaceCountry = namePlaceCountry;
		this.attendedFrom = attendedFrom;
		this.attendedTo = attendedTo;
		this.degreesAcademicDistinctions = degreesAcademicDistinctions;
		this.mainCourseOfStudy = mainCourseOfStudy;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param namePlaceCountry
	 * @param attendedFrom
	 * @param attendedTo
	 * @param degreesAcademicDistinctions
	 * @param mainCourseOfStudy
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public EducationInformation(long id, long employeeId,
			String namePlaceCountry, String attendedFrom, String attendedTo,
			String degreesAcademicDistinctions, String mainCourseOfStudy,
			int modifiedBy, Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.namePlaceCountry = namePlaceCountry;
		this.attendedFrom = attendedFrom;
		this.attendedTo = attendedTo;
		this.degreesAcademicDistinctions = degreesAcademicDistinctions;
		this.mainCourseOfStudy = mainCourseOfStudy;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
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
	 * @return the namePlaceCountry
	 */
	public String getNamePlaceCountry() {
		return namePlaceCountry;
	}

	/**
	 * @param namePlaceCountry
	 *            the namePlaceCountry to set
	 */
	public void setNamePlaceCountry(String namePlaceCountry) {
		this.namePlaceCountry = namePlaceCountry;
	}

	/**
	 * @return the attendedFrom
	 */
	public String getAttendedFrom() {
		return attendedFrom;
	}

	/**
	 * @param attendedFrom
	 *            the attendedFrom to set
	 */
	public void setAttendedFrom(String attendedFrom) {
		this.attendedFrom = attendedFrom;
	}

	/**
	 * @return the attendedTo
	 */
	public String getAttendedTo() {
		return attendedTo;
	}

	/**
	 * @param attendedTo
	 *            the attendedTo to set
	 */
	public void setAttendedTo(String attendedTo) {
		this.attendedTo = attendedTo;
	}

	/**
	 * @return the degreesAcademicDistinctions
	 */
	public String getDegreesAcademicDistinctions() {
		return degreesAcademicDistinctions;
	}

	/**
	 * @param degreesAcademicDistinctions
	 *            the degreesAcademicDistinctions to set
	 */
	public void setDegreesAcademicDistinctions(
			String degreesAcademicDistinctions) {
		this.degreesAcademicDistinctions = degreesAcademicDistinctions;
	}

	/**
	 * @return the mainCourseOfStudy
	 */
	public String getMainCourseOfStudy() {
		return mainCourseOfStudy;
	}

	/**
	 * @param mainCourseOfStudy
	 *            the mainCourseOfStudy to set
	 */
	public void setMainCourseOfStudy(String mainCourseOfStudy) {
		this.mainCourseOfStudy = mainCourseOfStudy;
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
			String sqlStr = "insert into tbl_education_information values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setString(3, this.getNamePlaceCountry());
			pStmt.setString(4, this.getAttendedFrom());
			pStmt.setString(5, this.getAttendedTo());
			pStmt.setString(6, this.getDegreesAcademicDistinctions());
			pStmt.setString(7, this.getMainCourseOfStudy());
			pStmt.setInt(8, this.getModifiedBy());
			pStmt.setDate(9, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(EducationInformation educationInformation) {
		try {
			String sqlStr = "update tbl_education_information set employee_id = ?, name_place_country = ?," +
					"attended_from = ?, attended_to = ?, degrees_academic_distinctions = ?," +
					"main_course_of_study = ?, modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, educationInformation.getEmployeeId());
			pStmt.setString(2, educationInformation.getNamePlaceCountry());
			pStmt.setString(3, educationInformation.getAttendedFrom());
			pStmt.setString(4, educationInformation.getAttendedTo());
			pStmt.setString(5, educationInformation.getDegreesAcademicDistinctions());
			pStmt.setString(6, educationInformation.getMainCourseOfStudy());
			pStmt.setInt(7, educationInformation.getModifiedBy());
			pStmt.setDate(8, educationInformation.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_education_information where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<EducationInformation> getAllEducationInformations() {
		List<EducationInformation> list = new ArrayList<EducationInformation>();
		EducationInformation educationInformation = null;
		try {
			String query = "select * from tbl_education_information order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				educationInformation = new EducationInformation(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("name_place_country"), rSet.getString("attended_from"), 
						rSet.getString("attended_to"), rSet.getString("degrees_academic_distinctions"), 
						rSet.getString("main_course_of_study"), rSet.getInt("modified_by"), 
						rSet.getDate("modification_date"));
				list.add(educationInformation);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public static List<EducationInformation> getAllEducationInformationsForEmployee(long employeeId){
		List<EducationInformation> list = new ArrayList<EducationInformation>();
		EducationInformation educationInformation = null;
		try {
			String query = "select * from tbl_education_information where employee_id = "+employeeId+" order by attended_to desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				educationInformation = new EducationInformation(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("name_place_country"), rSet.getString("attended_from"), 
						rSet.getString("attended_to"), rSet.getString("degrees_academic_distinctions"), 
						rSet.getString("main_course_of_study"), rSet.getInt("modified_by"), 
						rSet.getDate("modification_date"));
				list.add(educationInformation);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static EducationInformation getEducationInformation(long id) {
		EducationInformation educationInformation = null;
		try {
			String query = "select * from tbl_education_information where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				educationInformation = new EducationInformation(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("name_place_country"), rSet.getString("attended_from"), 
						rSet.getString("attended_to"), rSet.getString("degrees_academic_distinctions"), 
						rSet.getString("main_course_of_study"), rSet.getInt("modified_by"), 
						rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return educationInformation;
	}
	
	public static void removeAllEducationInformationOfEmployee(long employeeId){
		try{
			String command = "delete from tbl_education_information where employee_id = "+employeeId;
			DBConnection.writeToDatabase(command);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
	}
}// end class
