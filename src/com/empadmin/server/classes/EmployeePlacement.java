/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Leki
 *
 */
public class EmployeePlacement {
	private long id;
	private long vacancyId;
	private long employeeId;
	private float pointObtainedForEducationLevelCriteria;
	private float pointObtainedForFieldOfStudyCriteria;
	private float pointObtainedForExperienceCriteria;
	private Date placementDate;
	/**
	 * 
	 */
	public EmployeePlacement() {
		super();
	}
	/**
	 * @param vacancyId
	 * @param employeeId
	 * @param pointObtainedForEducationLevelCriteria
	 * @param pointObtainedForFieldOfStudyCriteria
	 * @param pointObtainedForExperienceCriteria
	 * @param placementDate
	 */
	public EmployeePlacement(long vacancyId, long employeeId,
			float pointObtainedForEducationLevelCriteria,
			float pointObtainedForFieldOfStudyCriteria,
			float pointObtainedForExperienceCriteria, Date placementDate) {
		super();
		this.vacancyId = vacancyId;
		this.employeeId = employeeId;
		this.pointObtainedForEducationLevelCriteria = pointObtainedForEducationLevelCriteria;
		this.pointObtainedForFieldOfStudyCriteria = pointObtainedForFieldOfStudyCriteria;
		this.pointObtainedForExperienceCriteria = pointObtainedForExperienceCriteria;
		this.placementDate = placementDate;
	}
	/**
	 * @param id
	 * @param vacancyId
	 * @param employeeId
	 * @param pointObtainedForEducationLevelCriteria
	 * @param pointObtainedForFieldOfStudyCriteria
	 * @param pointObtainedForExperienceCriteria
	 * @param placementDate
	 */
	public EmployeePlacement(long id, long vacancyId, long employeeId,
			float pointObtainedForEducationLevelCriteria,
			float pointObtainedForFieldOfStudyCriteria,
			float pointObtainedForExperienceCriteria, Date placementDate) {
		super();
		this.id = id;
		this.vacancyId = vacancyId;
		this.employeeId = employeeId;
		this.pointObtainedForEducationLevelCriteria = pointObtainedForEducationLevelCriteria;
		this.pointObtainedForFieldOfStudyCriteria = pointObtainedForFieldOfStudyCriteria;
		this.pointObtainedForExperienceCriteria = pointObtainedForExperienceCriteria;
		this.placementDate = placementDate;
	}
	/**
	 * @return the id
	 */
	public long getId() {
		return id;
	}
	/**
	 * @param id the id to set
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
	 * @param vacancyId the vacancyId to set
	 */
	public void setVacancyId(long vacancyId) {
		this.vacancyId = vacancyId;
	}
	/**
	 * @return the employeeId
	 */
	public long getEmployeeId() {
		return employeeId;
	}
	/**
	 * @param employeeId the employeeId to set
	 */
	public void setEmployeeId(long employeeId) {
		this.employeeId = employeeId;
	}
	/**
	 * @return the pointObtainedForEducationLevelCriteria
	 */
	public float getPointObtainedForEducationLevelCriteria() {
		return pointObtainedForEducationLevelCriteria;
	}
	/**
	 * @param pointObtainedForEducationLevelCriteria the pointObtainedForEducationLevelCriteria to set
	 */
	public void setPointObtainedForEducationLevelCriteria(
			float pointObtainedForEducationLevelCriteria) {
		this.pointObtainedForEducationLevelCriteria = pointObtainedForEducationLevelCriteria;
	}
	/**
	 * @return the pointObtainedForFieldOfStudyCriteria
	 */
	public float getPointObtainedForFieldOfStudyCriteria() {
		return pointObtainedForFieldOfStudyCriteria;
	}
	/**
	 * @param pointObtainedForFieldOfStudyCriteria the pointObtainedForFieldOfStudyCriteria to set
	 */
	public void setPointObtainedForFieldOfStudyCriteria(
			float pointObtainedForFieldOfStudyCriteria) {
		this.pointObtainedForFieldOfStudyCriteria = pointObtainedForFieldOfStudyCriteria;
	}
	/**
	 * @return the pointObtainedForExperienceCriteria
	 */
	public float getPointObtainedForExperienceCriteria() {
		return pointObtainedForExperienceCriteria;
	}
	/**
	 * @param pointObtainedForExperienceCriteria the pointObtainedForExperienceCriteria to set
	 */
	public void setPointObtainedForExperienceCriteria(
			float pointObtainedForExperienceCriteria) {
		this.pointObtainedForExperienceCriteria = pointObtainedForExperienceCriteria;
	}
	/**
	 * @return the placementDate
	 */
	public Date getPlacementDate() {
		return placementDate;
	}
	/**
	 * @param placementDate the placementDate to set
	 */
	public void setPlacementDate(Date placementDate) {
		this.placementDate = placementDate;
	}
	
	public void addEmployeePlacement(){
		try{
			String command = "INSERT INTO tbl_employee_placement VALUES(0,"+this.getVacancyId()+","+
			this.getEmployeeId()+","+this.getPointObtainedForEducationLevelCriteria()+","+
			this.getPointObtainedForFieldOfStudyCriteria()+","+this.getPointObtainedForExperienceCriteria()+",'"+
			this.getPlacementDate()+"')";
			System.out.println(command);
			DBConnection.writeToDatabase(command);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
	}
	
	public static List<EmployeePlacement> getAllEmployeePlacementForVacancy(long vacancyId){
		List<EmployeePlacement> list = new ArrayList<EmployeePlacement>();
		EmployeePlacement ePlacement = null;
		try{
			String query = "SELECT * FROM tbl_employee_placement WHERE vacancy_id = "+vacancyId+" ORDER BY point_obtained_for_education_level_criteria,point_obtained_for_field_of_study_criteria,point_obtained_for_experience_criteria DESC";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			System.out.println(query);
			while(rSet.next()){
				ePlacement = new EmployeePlacement(rSet.getLong("id"), rSet.getLong("vacancy_id"),
						rSet.getLong("employee_id"), rSet.getFloat("point_obtained_for_education_level_criteria"), 
						rSet.getFloat("point_obtained_for_field_of_study_criteria"), 
						rSet.getFloat("point_obtained_for_experience_criteria"), 
						rSet.getDate("placement_date"));
				list.add(ePlacement);
			}//end while loop
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}//end class
