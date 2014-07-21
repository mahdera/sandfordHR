/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author mahder
 * 
 */
public class Job {
	private int id;
	private String jobTitle;
	private String jobClassification;
	private String jobClassificationNumber;
	private String jobDescription;
	

	/**
	 * 
	 */
	public Job() {
	}

	/**
	 * @param jobClassification
	 * @param jobClassificationNumber
	 * @param jobDescription
	 */
	public Job(String jobTitle,String jobClassification, String jobClassificationNumber,
			String jobDescription) {
		this.jobTitle = jobTitle;
		this.jobClassification = jobClassification;
		this.jobClassificationNumber = jobClassificationNumber;
		this.jobDescription = jobDescription;
	}

	/**
	 * @param id
	 * @param jobClassification
	 * @param jobClassificationNumber
	 * @param jobDescription
	 */
	public Job(int id,String jobTitle, String jobClassification,
			String jobClassificationNumber, String jobDescription) {
		this.id = id;
		this.jobTitle = jobTitle;
		this.jobClassification = jobClassification;
		this.jobClassificationNumber = jobClassificationNumber;
		this.jobDescription = jobDescription;
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
	
	

	

	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}

	/**
	 * @return the jobClassification
	 */
	public String getJobClassification() {
		return jobClassification;
	}

	/**
	 * @param jobClassification
	 *            the jobClassification to set
	 */
	public void setJobClassification(String jobClassification) {
		this.jobClassification = jobClassification;
	}

	/**
	 * @return the jobClassificationNumber
	 */
	public String getJobClassificationNumber() {
		return jobClassificationNumber;
	}

	/**
	 * @param jobClassificationNumber
	 *            the jobClassificationNumber to set
	 */
	public void setJobClassificationNumber(String jobClassificationNumber) {
		this.jobClassificationNumber = jobClassificationNumber;
	}

	/**
	 * @return the jobDescription
	 */
	public String getJobDescription() {
		return jobDescription;
	}

	/**
	 * @param jobDescription
	 *            the jobDescription to set
	 */
	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}

	public void save() {
		try {			
			String sqlStr = "insert into tbl_job values(?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, 0);
			pStmt.setString(2, this.getJobTitle());
			pStmt.setString(3, this.getJobClassification());
			pStmt.setString(4, this.getJobClassificationNumber());
			pStmt.setString(5, this.getJobDescription());
			DBConnection.writeToDatabase(pStmt);
			System.out.println(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(Job job) {
		try {
			 String sqlStr = "update tbl_job set job_title = ?, job_classification = ?, job_classification_number = ?," +
			 		"job_description = ? where id = ?";
			 PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			 pStmt.setString(1, job.getJobTitle());
			 pStmt.setString(2, job.getJobClassification());
			 pStmt.setString(3, job.getJobClassificationNumber());
			 pStmt.setString(4, job.getJobDescription());
			 pStmt.setInt(5, job.getId());
			 DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(int id) {
		try {
			String sqlStr = "DELETE FROM tbl_job WHERE id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Job> getAllJobs() {
		List<Job> list = new ArrayList<Job>();
		Job job = null;
		try {
			String query = "SELECT * FROM tbl_job ORDER BY job_classification ASC";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				job = new Job(rSet.getInt("id"),rSet.getString("job_title"),rSet.getString("job_classification"),
						rSet.getString("job_classification_number"),rSet.getString("job_description"));
				list.add(job);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Job getJob(int id) {		
		Job job = null;
		try {
			String query = "SELECT * FROM tbl_job WHERE id = "+id;
			System.out.println("buki here you are: "+query);
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				job = new Job(rSet.getInt("id"),rSet.getString("job_title"),rSet.getString("job_classification"),
						rSet.getString("job_classification_number"),rSet.getString("job_description"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return job;
	}
}// end class
