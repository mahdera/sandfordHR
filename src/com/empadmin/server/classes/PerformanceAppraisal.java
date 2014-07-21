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
 * @author Mahder on macbook Pro
 * 
 */
public class PerformanceAppraisal {
	private long id;
	private long employeeId;
	private String positionTitle;
	private Date employmentDate;
	private int departmentId;
	private Date appraisalDate;
	private String periodCovered;
	private Date lastAppraisalDate;
	private String summaryOfDuties;
	private String specificGoalsObjectives;
	private String dependability;
	private String quality;
	private String jobKnowledgeSkill;
	private String AttendanceUseOfTime;
	private String communicationAbility;
	private String policiesAndGuidelines;
	private String cooperationUnderstanding;
	private String responsibility;
	private String behaviorAndPersonality;
	private String initiativeAndResourcefulness;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public PerformanceAppraisal() {
	}

	/**
	 * @param employeeId
	 * @param positionTitle
	 * @param employmentDate
	 * @param departmentId
	 * @param appraisalDate
	 * @param periodCovered
	 * @param summaryOfDuties
	 * @param specificGoalsObjectives
	 * @param dependability
	 * @param quality
	 * @param jobKnowledgeSkill
	 * @param attendanceUseOfTime
	 * @param communicationAbility
	 * @param policiesAndGuidelines
	 * @param cooperationUnderstanding
	 * @param responsibility
	 * @param behaviorAndPersonality
	 * @param initiativeAndResourcefulness
	 */
	public PerformanceAppraisal(long employeeId, String positionTitle,
			Date employmentDate, int departmentId, Date appraisalDate,
			String periodCovered,Date lastAppraisalDate, String summaryOfDuties,
			String specificGoalsObjectives, String dependability,
			String quality, String jobKnowledgeSkill,
			String attendanceUseOfTime, String communicationAbility,
			String policiesAndGuidelines, String cooperationUnderstanding,
			String responsibility, String behaviorAndPersonality,
			String initiativeAndResourcefulness,int modifiedBy,Date modificationDate) {
		this.employeeId = employeeId;
		this.positionTitle = positionTitle;
		this.employmentDate = employmentDate;
		this.departmentId = departmentId;
		this.appraisalDate = appraisalDate;
		this.periodCovered = periodCovered;
		this.lastAppraisalDate = lastAppraisalDate;
		this.summaryOfDuties = summaryOfDuties;
		this.specificGoalsObjectives = specificGoalsObjectives;
		this.dependability = dependability;
		this.quality = quality;
		this.jobKnowledgeSkill = jobKnowledgeSkill;
		AttendanceUseOfTime = attendanceUseOfTime;
		this.communicationAbility = communicationAbility;
		this.policiesAndGuidelines = policiesAndGuidelines;
		this.cooperationUnderstanding = cooperationUnderstanding;
		this.responsibility = responsibility;
		this.behaviorAndPersonality = behaviorAndPersonality;
		this.initiativeAndResourcefulness = initiativeAndResourcefulness;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param positionTitle
	 * @param employmentDate
	 * @param departmentId
	 * @param appraisalDate
	 * @param periodCovered
	 * @param summaryOfDuties
	 * @param specificGoalsObjectives
	 * @param dependability
	 * @param quality
	 * @param jobKnowledgeSkill
	 * @param attendanceUseOfTime
	 * @param communicationAbility
	 * @param policiesAndGuidelines
	 * @param cooperationUnderstanding
	 * @param responsibility
	 * @param behaviorAndPersonality
	 * @param initiativeAndResourcefulness
	 */
	public PerformanceAppraisal(long id, long employeeId, String positionTitle,
			Date employmentDate, int departmentId, Date appraisalDate,
			String periodCovered,Date lastAppraisalDate, String summaryOfDuties,
			String specificGoalsObjectives, String dependability,
			String quality, String jobKnowledgeSkill,
			String attendanceUseOfTime, String communicationAbility,
			String policiesAndGuidelines, String cooperationUnderstanding,
			String responsibility, String behaviorAndPersonality,
			String initiativeAndResourcefulness,int modifiedBy,Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.positionTitle = positionTitle;
		this.employmentDate = employmentDate;
		this.departmentId = departmentId;
		this.appraisalDate = appraisalDate;
		this.periodCovered = periodCovered;
		this.lastAppraisalDate = lastAppraisalDate;
		this.summaryOfDuties = summaryOfDuties;
		this.specificGoalsObjectives = specificGoalsObjectives;
		this.dependability = dependability;
		this.quality = quality;
		this.jobKnowledgeSkill = jobKnowledgeSkill;
		AttendanceUseOfTime = attendanceUseOfTime;
		this.communicationAbility = communicationAbility;
		this.policiesAndGuidelines = policiesAndGuidelines;
		this.cooperationUnderstanding = cooperationUnderstanding;
		this.responsibility = responsibility;
		this.behaviorAndPersonality = behaviorAndPersonality;
		this.initiativeAndResourcefulness = initiativeAndResourcefulness;
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
	 * @return the positionTitle
	 */
	public String getPositionTitle() {
		return positionTitle;
	}

	/**
	 * @param positionTitle
	 *            the positionTitle to set
	 */
	public void setPositionTitle(String positionTitle) {
		this.positionTitle = positionTitle;
	}

	/**
	 * @return the employmentDate
	 */
	public Date getEmploymentDate() {
		return employmentDate;
	}

	/**
	 * @param employmentDate
	 *            the employmentDate to set
	 */
	public void setEmploymentDate(Date employmentDate) {
		this.employmentDate = employmentDate;
	}

	/**
	 * @return the departmentId
	 */
	public int getDepartmentId() {
		return departmentId;
	}

	/**
	 * @param departmentId
	 *            the departmentId to set
	 */
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}

	/**
	 * @return the appraisalDate
	 */
	public Date getAppraisalDate() {
		return appraisalDate;
	}

	/**
	 * @param appraisalDate
	 *            the appraisalDate to set
	 */
	public void setAppraisalDate(Date appraisalDate) {
		this.appraisalDate = appraisalDate;
	}

	/**
	 * @return the periodCovered
	 */
	public String getPeriodCovered() {
		return periodCovered;
	}

	/**
	 * @param periodCovered
	 *            the periodCovered to set
	 */
	public void setPeriodCovered(String periodCovered) {
		this.periodCovered = periodCovered;
	}

	/**
	 * @return the summaryOfDuties
	 */
	public String getSummaryOfDuties() {
		return summaryOfDuties;
	}

	/**
	 * @param summaryOfDuties
	 *            the summaryOfDuties to set
	 */
	public void setSummaryOfDuties(String summaryOfDuties) {
		this.summaryOfDuties = summaryOfDuties;
	}

	/**
	 * @return the specificGoalsObjectives
	 */
	public String getSpecificGoalsObjectives() {
		return specificGoalsObjectives;
	}

	/**
	 * @param specificGoalsObjectives
	 *            the specificGoalsObjectives to set
	 */
	public void setSpecificGoalsObjectives(String specificGoalsObjectives) {
		this.specificGoalsObjectives = specificGoalsObjectives;
	}

	/**
	 * @return the dependability
	 */
	public String getDependability() {
		return dependability;
	}

	/**
	 * @param dependability
	 *            the dependability to set
	 */
	public void setDependability(String dependability) {
		this.dependability = dependability;
	}

	/**
	 * @return the quality
	 */
	public String getQuality() {
		return quality;
	}

	/**
	 * @param quality
	 *            the quality to set
	 */
	public void setQuality(String quality) {
		this.quality = quality;
	}

	/**
	 * @return the jobKnowledgeSkill
	 */
	public String getJobKnowledgeSkill() {
		return jobKnowledgeSkill;
	}

	/**
	 * @param jobKnowledgeSkill
	 *            the jobKnowledgeSkill to set
	 */
	public void setJobKnowledgeSkill(String jobKnowledgeSkill) {
		this.jobKnowledgeSkill = jobKnowledgeSkill;
	}

	/**
	 * @return the attendanceUseOfTime
	 */
	public String getAttendanceUseOfTime() {
		return AttendanceUseOfTime;
	}

	/**
	 * @param attendanceUseOfTime
	 *            the attendanceUseOfTime to set
	 */
	public void setAttendanceUseOfTime(String attendanceUseOfTime) {
		AttendanceUseOfTime = attendanceUseOfTime;
	}

	/**
	 * @return the communicationAbility
	 */
	public String getCommunicationAbility() {
		return communicationAbility;
	}

	/**
	 * @param communicationAbility
	 *            the communicationAbility to set
	 */
	public void setCommunicationAbility(String communicationAbility) {
		this.communicationAbility = communicationAbility;
	}

	/**
	 * @return the policiesAndGuidelines
	 */
	public String getPoliciesAndGuidelines() {
		return policiesAndGuidelines;
	}

	/**
	 * @param policiesAndGuidelines
	 *            the policiesAndGuidelines to set
	 */
	public void setPoliciesAndGuidelines(String policiesAndGuidelines) {
		this.policiesAndGuidelines = policiesAndGuidelines;
	}

	/**
	 * @return the cooperationUnderstanding
	 */
	public String getCooperationUnderstanding() {
		return cooperationUnderstanding;
	}

	/**
	 * @param cooperationUnderstanding
	 *            the cooperationUnderstanding to set
	 */
	public void setCooperationUnderstanding(String cooperationUnderstanding) {
		this.cooperationUnderstanding = cooperationUnderstanding;
	}

	/**
	 * @return the responsibility
	 */
	public String getResponsibility() {
		return responsibility;
	}

	/**
	 * @param responsibility
	 *            the responsibility to set
	 */
	public void setResponsibility(String responsibility) {
		this.responsibility = responsibility;
	}

	/**
	 * @return the behaviorAndPersonality
	 */
	public String getBehaviorAndPersonality() {
		return behaviorAndPersonality;
	}

	/**
	 * @param behaviorAndPersonality
	 *            the behaviorAndPersonality to set
	 */
	public void setBehaviorAndPersonality(String behaviorAndPersonality) {
		this.behaviorAndPersonality = behaviorAndPersonality;
	}

	/**
	 * @return the initiativeAndResourcefulness
	 */
	public String getInitiativeAndResourcefulness() {
		return initiativeAndResourcefulness;
	}

	/**
	 * @param initiativeAndResourcefulness
	 *            the initiativeAndResourcefulness to set
	 */
	public void setInitiativeAndResourcefulness(
			String initiativeAndResourcefulness) {
		this.initiativeAndResourcefulness = initiativeAndResourcefulness;
	}
	
	

	/**
	 * @return the modifiedBy
	 */
	public int getModifiedBy() {
		return modifiedBy;
	}

	/**
	 * @param modifiedBy the modifiedBy to set
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
	 * @param modificationDate the modificationDate to set
	 */
	public void setModificationDate(Date modificationDate) {
		this.modificationDate = modificationDate;
	}
	
	

	/**
	 * @return the lastAppraisalDate
	 */
	public Date getLastAppraisalDate() {
		return lastAppraisalDate;
	}

	/**
	 * @param lastAppraisalDate the lastAppraisalDate to set
	 */
	public void setLastAppraisalDate(Date lastAppraisalDate) {
		this.lastAppraisalDate = lastAppraisalDate;
	}

	public void save() {
		try {
			String sqlStr = "insert into tbl_performance_appraisal values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setString(3, this.getPositionTitle());
			pStmt.setDate(4, this.getEmploymentDate());
			pStmt.setInt(5, this.getDepartmentId());
			pStmt.setDate(6, this.getAppraisalDate());
			pStmt.setString(7, this.getPeriodCovered());
			pStmt.setDate(8, this.getLastAppraisalDate());
			pStmt.setString(9, this.getSummaryOfDuties());
			pStmt.setString(10, this.getSpecificGoalsObjectives());
			pStmt.setString(11, this.getDependability());
			pStmt.setString(12, this.getQuality());
			pStmt.setString(13, this.getJobKnowledgeSkill());
			pStmt.setString(14, this.getAttendanceUseOfTime());
			pStmt.setString(15, this.getCommunicationAbility());
			pStmt.setString(16, this.getPoliciesAndGuidelines());
			pStmt.setString(17, this.getCooperationUnderstanding());
			pStmt.setString(18, this.getResponsibility());
			pStmt.setString(19, this.getBehaviorAndPersonality());
			pStmt.setString(20, this.getInitiativeAndResourcefulness());
			pStmt.setInt(21, this.getModifiedBy());
			pStmt.setDate(22, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(PerformanceAppraisal performanceAppraisal) {
		try {
			String sqlStr = "update tbl_performance_appraisal set employee_id = ?, position_title = ?,"+
		"employment_date = ?, department_id = ?, appraisal_date = ?, period_covered = ?, summary_of_duities = ?,"+
					"specific_goals_objectives = ?, dependability = ?, quality = ?, job_knowledge_skill = ?,"+
		"attendance_use_of_time = ?, communication_ability = ?, policies_and_guidelines = ?, cooperation_understanding = ?,"+
					"responsibility = ?, behavior_and_personality = ?, initiative_and_resourcefulness = ?, "+
		"modified_by = ?, modification_date = ?, last_appraisal_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, performanceAppraisal.getEmployeeId());
			pStmt.setString(2, performanceAppraisal.getPositionTitle());
			pStmt.setDate(3, performanceAppraisal.getEmploymentDate());
			pStmt.setInt(4, performanceAppraisal.getDepartmentId());
			pStmt.setDate(5, performanceAppraisal.getAppraisalDate());
			pStmt.setString(6, performanceAppraisal.getPeriodCovered());
			pStmt.setString(7, performanceAppraisal.getSummaryOfDuties());
			pStmt.setString(8, performanceAppraisal.getSpecificGoalsObjectives());
			pStmt.setString(9, performanceAppraisal.getDependability());
			pStmt.setString(10, performanceAppraisal.getQuality());
			pStmt.setString(11, performanceAppraisal.getJobKnowledgeSkill());
			pStmt.setString(12, performanceAppraisal.getAttendanceUseOfTime());
			pStmt.setString(13, performanceAppraisal.getCommunicationAbility());
			pStmt.setString(14, performanceAppraisal.getPoliciesAndGuidelines());
			pStmt.setString(15, performanceAppraisal.getCooperationUnderstanding());
			pStmt.setString(16, performanceAppraisal.getResponsibility());
			pStmt.setString(17, performanceAppraisal.getBehaviorAndPersonality());
			pStmt.setString(18, performanceAppraisal.getInitiativeAndResourcefulness());
			pStmt.setInt(19, performanceAppraisal.getModifiedBy());
			pStmt.setDate(20, performanceAppraisal.getModificationDate());
			pStmt.setDate(21, performanceAppraisal.getLastAppraisalDate());
			pStmt.setLong(22, performanceAppraisal.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String command = "delete from tbl_performance_appraisal where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<PerformanceAppraisal> getAllPerformanceAppraisals() {
		List<PerformanceAppraisal> list = new ArrayList<PerformanceAppraisal>();
		PerformanceAppraisal performanceAppraisal = null;
		try {
			String query = "select * from tbl_performance_appraisal order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				performanceAppraisal = new PerformanceAppraisal(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("position_title"), rSet.getDate("employment_date"), rSet.getInt("department_id"), 
						rSet.getDate("appraisal_date"), rSet.getString("period_covered"),rSet.getDate("last_appraisal_date"), rSet.getString("summary_of_duities"), 
						rSet.getString("specific_goals_objectives"), rSet.getString("dependability"), rSet.getString("quality"), 
						rSet.getString("job_knowledge_skill"), rSet.getString("attendance_use_of_time"), rSet.getString("communication_ability"), 
						rSet.getString("policies_and_guidelines"), rSet.getString("cooperation_understanding"), rSet.getString("responsibility"), 
						rSet.getString("behavior_and_personality"), rSet.getString("initiative_and_resourcefulness"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(performanceAppraisal);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public static List<PerformanceAppraisal> getAllPerformanceAppraisalsOfDepartment(int departmentId){
		List<PerformanceAppraisal> list = new ArrayList<PerformanceAppraisal>();
		PerformanceAppraisal performanceAppraisal = null;
		try {
			String query = "select * from tbl_performance_appraisal where department_id = "+departmentId+" order by appraisal_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				performanceAppraisal = new PerformanceAppraisal(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("position_title"), rSet.getDate("employment_date"), rSet.getInt("department_id"), 
						rSet.getDate("appraisal_date"), rSet.getString("period_covered"),rSet.getDate("last_appraisal_date"), rSet.getString("summary_of_duities"), 
						rSet.getString("specific_goals_objectives"), rSet.getString("dependability"), rSet.getString("quality"), 
						rSet.getString("job_knowledge_skill"), rSet.getString("attendance_use_of_time"), rSet.getString("communication_ability"), 
						rSet.getString("policies_and_guidelines"), rSet.getString("cooperation_understanding"), rSet.getString("responsibility"), 
						rSet.getString("behavior_and_personality"), rSet.getString("initiative_and_resourcefulness"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(performanceAppraisal);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public static List<PerformanceAppraisal> getAllPerformanceAppraisalsForThisEmployee(long employeeId){
		List<PerformanceAppraisal> list = new ArrayList<PerformanceAppraisal>();
		PerformanceAppraisal performanceAppraisal = null;
		try {
			String query = "select * from tbl_performance_appraisal where employee_id = "+employeeId+" order by appraisal_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				performanceAppraisal = new PerformanceAppraisal(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("position_title"), rSet.getDate("employment_date"), rSet.getInt("department_id"), 
						rSet.getDate("appraisal_date"), rSet.getString("period_covered"),rSet.getDate("last_appraisal_date"), rSet.getString("summary_of_duities"), 
						rSet.getString("specific_goals_objectives"), rSet.getString("dependability"), rSet.getString("quality"), 
						rSet.getString("job_knowledge_skill"), rSet.getString("attendance_use_of_time"), rSet.getString("communication_ability"), 
						rSet.getString("policies_and_guidelines"), rSet.getString("cooperation_understanding"), rSet.getString("responsibility"), 
						rSet.getString("behavior_and_personality"), rSet.getString("initiative_and_resourcefulness"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(performanceAppraisal);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static PerformanceAppraisal getPerformanceAppraisal(long id) {
		PerformanceAppraisal performanceAppraisal = null;
		try {
			String query = "select * from tbl_performance_appraisal where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				performanceAppraisal = new PerformanceAppraisal(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("position_title"), rSet.getDate("employment_date"), rSet.getInt("department_id"), 
						rSet.getDate("appraisal_date"), rSet.getString("period_covered"),rSet.getDate("last_appraisal_date"), rSet.getString("summary_of_duities"), 
						rSet.getString("specific_goals_objectives"), rSet.getString("dependability"), rSet.getString("quality"), 
						rSet.getString("job_knowledge_skill"), rSet.getString("attendance_use_of_time"), rSet.getString("communication_ability"), 
						rSet.getString("policies_and_guidelines"), rSet.getString("cooperation_understanding"), rSet.getString("responsibility"), 
						rSet.getString("behavior_and_personality"), rSet.getString("initiative_and_resourcefulness"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));			
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return performanceAppraisal;
	}
}// end class
