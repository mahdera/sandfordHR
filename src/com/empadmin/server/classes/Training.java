/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author alemayehu
 * 
 */
public class Training {
	private long id;
	private String description;
	private Date trainingDate;
	private String trainingCourse;
	private float cost;
	private String company;
	private String notes;
	private String status;

	/**
	 * 
	 */
	public Training() {
	}

	/**
	 * @param description
	 * @param trainingDate
	 * @param trainingCourse
	 * @param cost
	 * @param company
	 * @param notes
	 * @param status
	 */
	public Training(String description, Date trainingDate,
			String trainingCourse, float cost, String company, String notes,
			String status) {
		this.description = description;
		this.trainingDate = trainingDate;
		this.trainingCourse = trainingCourse;
		this.cost = cost;
		this.company = company;
		this.notes = notes;
		this.status = status;
	}

	/**
	 * @param id
	 * @param description
	 * @param trainingDate
	 * @param trainingCourse
	 * @param cost
	 * @param company
	 * @param notes
	 * @param status
	 */
	public Training(long id, String description, Date trainingDate,
			String trainingCourse, float cost, String company, String notes,
			String status) {
		this.id = id;
		this.description = description;
		this.trainingDate = trainingDate;
		this.trainingCourse = trainingCourse;
		this.cost = cost;
		this.company = company;
		this.notes = notes;
		this.status = status;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getTrainingDate() {
		return trainingDate;
	}

	public void setTrainingDate(Date trainingDate) {
		this.trainingDate = trainingDate;
	}

	public String getTrainingCourse() {
		return trainingCourse;
	}

	public void setTrainingCourse(String trainingCourse) {
		this.trainingCourse = trainingCourse;
	}

	public float getCost() {
		return cost;
	}

	public void setCost(float cost) {
		this.cost = cost;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void addTraining() {
		try {
			String command = "insert into tbl_training values(0,'"+this.getDescription()+"','"+
		this.getTrainingDate()+"','"+this.getTrainingCourse()+"',"+this.getCost()+",'"+
					this.getCompany()+"','"+this.getNotes()+"','"+this.getStatus()+"')";
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateTraining(long id,String description,Date trainingDate,
			String trainingCourse,float cost,String company,String notes,String status) {
		try {
			String command = "update tbl_training set description='"+description+"', "+
		"training_date='"+trainingDate+"', training_course='"+trainingCourse+"', cost="+
					cost+", company='"+company+"', notes='"+notes+"', status='"+status+"' where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteTraining(long id) {
		try {
			String command = "delete from tbl_training where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Training> getAllTrainings() {
		List<Training> list = new ArrayList<Training>();
		Training training = null;
		try {
			String query = "select * from tbl_training";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				training = new Training(rSet.getLong("id"),rSet.getString("description"),
						rSet.getDate("training_date"),rSet.getString("training_course"),
						rSet.getFloat("cost"),rSet.getString("company"),rSet.getString("notes"),
						rSet.getString("status"));
				list.add(training);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Training getTraining(long id) {
		Training training = null;
		try {
			String query = "select * from tbl_training where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				training = new Training(rSet.getLong("id"),rSet.getString("description"),
						rSet.getDate("training_date"),rSet.getString("training_course"),
						rSet.getFloat("cost"),rSet.getString("company"),rSet.getString("notes"),
						rSet.getString("status"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return training;
	}
}// end class
