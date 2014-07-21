/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author mahder
 * 
 */
public class Experience {
	private long id;
	private String placeWorked;
	private Date startingFrom;
	private Date upto;
	private String jobId;
	private long employeeId;

	/**
	 * 
	 */
	public Experience() {
	}

	/**
	 * @param placeWorked
	 * @param startingFrom
	 * @param upto
	 * @param jobId
	 * @param employeeId
	 */
	public Experience(String placeWorked, Date startingFrom, Date upto,
			String jobId, long employeeId) {
		this.placeWorked = placeWorked;
		this.startingFrom = startingFrom;
		this.upto = upto;
		this.jobId = jobId;
		this.employeeId = employeeId;
	}

	/**
	 * @param id
	 * @param placeWorked
	 * @param startingFrom
	 * @param upto
	 * @param jobId
	 * @param employeeId
	 */
	public Experience(long id, String placeWorked, Date startingFrom,
			Date upto, String jobId, long employeeId) {
		this.id = id;
		this.placeWorked = placeWorked;
		this.startingFrom = startingFrom;
		this.upto = upto;
		this.jobId = jobId;
		this.employeeId = employeeId;
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
	 * @return the placeWorked
	 */
	public String getPlaceWorked() {
		return placeWorked;
	}

	/**
	 * @param placeWorked
	 *            the placeWorked to set
	 */
	public void setPlaceWorked(String placeWorked) {
		this.placeWorked = placeWorked;
	}

	/**
	 * @return the startingFrom
	 */
	public Date getStartingFrom() {
		return startingFrom;
	}

	/**
	 * @param startingFrom
	 *            the startingFrom to set
	 */
	public void setStartingFrom(Date startingFrom) {
		this.startingFrom = startingFrom;
	}

	/**
	 * @return the upto
	 */
	public Date getUpto() {
		return upto;
	}

	/**
	 * @param upto
	 *            the upto to set
	 */
	public void setUpto(Date upto) {
		this.upto = upto;
	}

	/**
	 * @return the jobId
	 */
	public String getJobId() {
		return jobId;
	}

	/**
	 * @param jobId
	 *            the jobId to set
	 */
	public void setJobId(String jobId) {
		this.jobId = jobId;
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

	public void addExperience() {
		try {
			String command = "INSERT INTO tbl_experience_information VALUES(0,'"+
			this.getPlaceWorked()+"','"+this.getStartingFrom()+"','"+this.getUpto()+"','"+
			this.getJobId()+"',"+this.getEmployeeId()+")";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateExperience(long exId,String jobId,Date startingFrom,
			Date upto,String place) {
		try {
			String command = "UPDATE tbl_experience_information SET job_id = '"+jobId+
			"', starting_from = '"+startingFrom+"', upto = '"+upto+"', place_worked = '"+
			place+"' WHERE id = "+exId;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteExperience(long id) {
		try {
			String command = "DELETE FROM tbl_experience_information WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}
	
	public static void deleteExperienceInformationForEmployee(long empId){
		try{
			String command = "delete from tbl_experience_information where employee_id="+empId;
			DBConnection.writeToDatabase(command);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Experience> getAllExperiencesOfEmployee(long employeeId) {
		List<Experience> list = new ArrayList<Experience>();
		Experience ex = null;
		try {
			String query = "SELECT * FROM tbl_experience_information WHERE employee_id = "+employeeId;
			System.out.println("mahder the exp info is: "+query);
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				ex = new Experience(rSet.getLong("id"),rSet.getString("place_worked"),
						rSet.getDate("starting_from"),rSet.getDate("upto"),
						rSet.getString("job_id"),rSet.getLong("employee_id"));
				list.add(ex);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Experience getExperience(long id) {		
		Experience ex = null;
		try {
			String query = "SELECT * FROM tbl_experience_information WHERE id="+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				ex = new Experience(rSet.getLong("id"),rSet.getString("place_worked"),
						rSet.getDate("starting_from"),rSet.getDate("upto"),
						rSet.getString("job_id"),rSet.getLong("employee_id"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return ex;
	}
}// end class
