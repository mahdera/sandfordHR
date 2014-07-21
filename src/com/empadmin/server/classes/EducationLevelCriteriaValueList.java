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
public class EducationLevelCriteriaValueList {
	private long id;
	private long vacancyId;
	private int educationLevelId;
	private float point;

	/**
	 * 
	 */
	public EducationLevelCriteriaValueList() {
	}

	/**
	 * @param vacancyId
	 * @param educationLevelId
	 * @param point
	 */
	public EducationLevelCriteriaValueList(long vacancyId,
			int educationLevelId, float point) {
		this.vacancyId = vacancyId;
		this.educationLevelId = educationLevelId;
		this.point = point;
	}

	/**
	 * @param id
	 * @param vacancyId
	 * @param educationLevelId
	 * @param point
	 */
	public EducationLevelCriteriaValueList(long id, long vacancyId,
			int educationLevelId, float point) {
		this.id = id;
		this.vacancyId = vacancyId;
		this.educationLevelId = educationLevelId;
		this.point = point;
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
	 * @return the vacancyId
	 */
	public long getVacancyId() {
		return vacancyId;
	}

	/**
	 * @param vacancyId
	 *            the vacancyId to set
	 */
	public void setVacancyId(long vacancyId) {
		this.vacancyId = vacancyId;
	}

	/**
	 * @return the educationLevelId
	 */
	public int getEducationLevelId() {
		return educationLevelId;
	}

	/**
	 * @param educationLevelId
	 *            the educationLevelId to set
	 */
	public void setEducationLevelId(int educationLevelId) {
		this.educationLevelId = educationLevelId;
	}

	/**
	 * @return the point
	 */
	public float getPoint() {
		return point;
	}

	/**
	 * @param point
	 *            the point to set
	 */
	public void setPoint(float point) {
		this.point = point;
	}

	public void addEducationLevelCriteriaValueList() {
		try {
			String command = "INSERT INTO tbl_education_level_criteria_value_list VALUES(0,"+
			this.getVacancyId()+","+this.getEducationLevelId()+","+this.getPoint()+")";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateEducationLevelCriteriaValueList(long id,
			long vacancyId, int educationLevelId, float point) {
		try {
			String command = "UPDATE tbl_education_level_criteria_value_list SET vacancy_id = "+
			vacancyId+", education_level_id = "+educationLevelId+", point = "+point+" WHERE "+
			"id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteEducationLevelCriteriaValueList(long id) {
		try {
			String command = "DELETE FROM tbl_education_level_criteria_value_list WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<EducationLevelCriteriaValueList> getAllEducationLevelCriteriaList() {
		List<EducationLevelCriteriaValueList> list = new ArrayList<EducationLevelCriteriaValueList>();
		EducationLevelCriteriaValueList edu = null;
		try {
			String query = "SELECT * FROM tbl_education_level_criteria_value_list ORDER BY vacancy_id";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				edu = new EducationLevelCriteriaValueList(rSet.getLong("id"),
						rSet.getLong("vacancy_id"),rSet.getInt("education_level_id"),
						rSet.getFloat("point"));
				list.add(edu);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public static List<EducationLevelCriteriaValueList> getAllEducationLevelCriteriaListForVacancy(long vacancyId) {
		List<EducationLevelCriteriaValueList> list = new ArrayList<EducationLevelCriteriaValueList>();
		EducationLevelCriteriaValueList edu = null;
		try {
			String query = "SELECT * FROM tbl_education_level_criteria_value_list WHERE vacancy_id = "+vacancyId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				edu = new EducationLevelCriteriaValueList(rSet.getLong("id"),
						rSet.getLong("vacancy_id"),rSet.getInt("education_level_id"),
						rSet.getFloat("point"));
				list.add(edu);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static EducationLevelCriteriaValueList getEducationLevelCriteriaValueList(
			long id) {
		EducationLevelCriteriaValueList edu = null;
		try {
			String query = "SELECT * FROM tbl_education_level_criteria_value_list WHERE id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				edu = new EducationLevelCriteriaValueList(rSet.getLong("id"),
						rSet.getLong("vacancy_id"),rSet.getInt("education_level_id"),
						rSet.getFloat("point"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return edu;
	}
}// end class
