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
public class FieldOfStudyCriteriaValueList {
	private long id;
	private long vacancyId;
	private int fieldOfStudyId;
	private float point;

	/**
	 * 
	 */
	public FieldOfStudyCriteriaValueList() {
	}

	/**
	 * @param vacancyId
	 * @param fieldOfStudyId
	 * @param point
	 */
	public FieldOfStudyCriteriaValueList(long vacancyId, int fieldOfStudyId,
			float point) {
		this.vacancyId = vacancyId;
		this.fieldOfStudyId = fieldOfStudyId;
		this.point = point;
	}

	/**
	 * @param id
	 * @param vacancyId
	 * @param fieldOfStudyId
	 * @param point
	 */
	public FieldOfStudyCriteriaValueList(long id, long vacancyId,
			int fieldOfStudyId, float point) {
		this.id = id;
		this.vacancyId = vacancyId;
		this.fieldOfStudyId = fieldOfStudyId;
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
	 * @return the fieldOfStudyId
	 */
	public int getFieldOfStudyId() {
		return fieldOfStudyId;
	}

	/**
	 * @param fieldOfStudyId
	 *            the fieldOfStudyId to set
	 */
	public void setFieldOfStudyId(int fieldOfStudyId) {
		this.fieldOfStudyId = fieldOfStudyId;
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

	public void addFieldOfStudyCriteriaValueList() {
		try {
			String command = "INSERT INTO tbl_field_of_study_criteria_value_list VALUES(0,"+this.getVacancyId()+","+
			this.getFieldOfStudyId()+","+this.getPoint()+")";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateFieldOfStudyCriteriaValueList(long id,
			long vacancyId, int fieldOfStudyId, float point) {
		try {
			String command = "UPDATE tbl_field_of_study_criteria_value_list SET vacancy_id = "+
			vacancyId+", field_of_study_id = "+fieldOfStudyId+", point = "+point+" WHERE "+
			"id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteFieldOfStudyCriteriaValueList(long id) {
		try {
			String command = "DELETE FROM tbl_field_of_study_criteria_value_list WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<FieldOfStudyCriteriaValueList> getAllFieldOfStudies() {
		List<FieldOfStudyCriteriaValueList> list = new ArrayList<FieldOfStudyCriteriaValueList>();
		FieldOfStudyCriteriaValueList f = null;
		try {
			String query = "SELECT * FROM tbl_field_of_study_criteria_value_list ORDER BY vacancy_id DESC";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				f = new FieldOfStudyCriteriaValueList(rSet.getLong("id"),rSet.getLong("vacancy_id"),
						rSet.getInt("field_of_study_id"),rSet.getFloat("point"));
				list.add(f);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public static List<FieldOfStudyCriteriaValueList> getAllFieldOfStudyCriteriaForVacancy(long vacancyId) {
		List<FieldOfStudyCriteriaValueList> list = new ArrayList<FieldOfStudyCriteriaValueList>();
		FieldOfStudyCriteriaValueList f = null;
		try {
			String query = "SELECT * FROM tbl_field_of_study_criteria_value_list WHERE vacancy_id = "+vacancyId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				f = new FieldOfStudyCriteriaValueList(rSet.getLong("id"),rSet.getLong("vacancy_id"),
						rSet.getInt("field_of_study_id"),rSet.getFloat("point"));
				list.add(f);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static FieldOfStudyCriteriaValueList getFieldOfStudy(long id) {
		FieldOfStudyCriteriaValueList f = null;
		try {
			String query = "SELECT * FROM tbl_field_of_study_criteria_value_list WHERE id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				f = new FieldOfStudyCriteriaValueList(rSet.getLong("id"),rSet.getLong("vacancy_id"),
						rSet.getInt("field_of_study_id"),rSet.getFloat("point"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return f;
	}
}// end class
