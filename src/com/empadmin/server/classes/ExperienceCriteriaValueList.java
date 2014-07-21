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
public class ExperienceCriteriaValueList {
	private long id;
	private long vacancyId;
	private int minimumExperienceYear;
	private float point;

	/**
	 * 
	 */
	public ExperienceCriteriaValueList() {
	}

	/**
	 * @param vacancyId
	 * @param minimumExperienceYear
	 * @param point
	 */
	public ExperienceCriteriaValueList(long vacancyId,
			int minimumExperienceYear, float point) {
		this.vacancyId = vacancyId;
		this.minimumExperienceYear = minimumExperienceYear;
		this.point = point;
	}

	/**
	 * @param id
	 * @param vacancyId
	 * @param minimumExperienceYear
	 * @param point
	 */
	public ExperienceCriteriaValueList(long id, long vacancyId,
			int minimumExperienceYear, float point) {
		this.id = id;
		this.vacancyId = vacancyId;
		this.minimumExperienceYear = minimumExperienceYear;
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
	 * @return the minimumExperienceYear
	 */
	public int getMinimumExperienceYear() {
		return minimumExperienceYear;
	}

	/**
	 * @param minimumExperienceYear
	 *            the minimumExperienceYear to set
	 */
	public void setMinimumExperienceYear(int minimumExperienceYear) {
		this.minimumExperienceYear = minimumExperienceYear;
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

	public void addExperienceCriteriaValueList() {
		try {
			String command = "INSERT INTO tbl_experience_criteria_value_list VALUES(0,"+
			this.getVacancyId()+","+this.getMinimumExperienceYear()+","+this.getPoint()+")";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateExperienceCriteriaValueList(long id,
			long vacancyId, int minimumExperienceYear, float point) {
		try {
			String command = "UPDATE tbl_experience_criteria_value_list SET vacancy_id = "+
			vacancyId+", minimum_experience_year = "+minimumExperienceYear+", point = "+point+
			" WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteExperienceCriteriaValueList(long id) {
		try {
			String command = "DELETE FROM tbl_experience_criteria_value_list WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<ExperienceCriteriaValueList> getAllExperienceCriteriaValueLists() {
		List<ExperienceCriteriaValueList> list = new ArrayList<ExperienceCriteriaValueList>();
		ExperienceCriteriaValueList ex = null;
		try {
			String query = "SELECT * FROM tbl_experience_criteria_value_list ORDER BY vacancy_id DESC";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				ex = new ExperienceCriteriaValueList(rSet.getLong("id"),rSet.getLong("vacancy_id"),
						rSet.getInt("minimum_experience_year"),rSet.getFloat("point"));
				list.add(ex);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public static List<ExperienceCriteriaValueList> getAllExperienceCriteriaListForVacancy(long vacancyId){
		List<ExperienceCriteriaValueList> list = new ArrayList<ExperienceCriteriaValueList>();
		ExperienceCriteriaValueList ex = null;
		try {
			String query = "SELECT * FROM tbl_experience_criteria_value_list WHERE vacancy_id = "+vacancyId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				ex = new ExperienceCriteriaValueList(rSet.getLong("id"),rSet.getLong("vacancy_id"),
						rSet.getInt("minimum_experience_year"),rSet.getFloat("point"));
				list.add(ex);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static ExperienceCriteriaValueList getExperienceCriteriaValueList(
			long id) {
		ExperienceCriteriaValueList ex = null;
		try {
			String query = "SELECT * FROM tbl_experience_criteria_value_list WHERE id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				ex = new ExperienceCriteriaValueList(rSet.getLong("id"),rSet.getLong("vacancy_id"),
						rSet.getInt("minimum_experience_year"),rSet.getFloat("point"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return ex;
	}
}// end class
