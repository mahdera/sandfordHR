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
public class TrainingInformation {
	private long id;
	private String trainingTaken;
	private String placeOfTraining;
	private String duration;
	private String yearOfTraining;
	private long employeeId;

	/**
	 * 
	 */
	public TrainingInformation() {
	}

	/**
	 * @param trainingTaken
	 * @param employeeId
	 */
	public TrainingInformation(String trainingTaken,String placeOfTraining,
			String duration,String yearOfTraining,long employeeId) {
		this.trainingTaken = trainingTaken;
		this.placeOfTraining = placeOfTraining;
		this.duration = duration;
		this.yearOfTraining = yearOfTraining;
		this.employeeId = employeeId;
	}

	/**
	 * @param id
	 * @param trainingTaken
	 * @param employeeId
	 */
	public TrainingInformation(long id, String trainingTaken, String placeOfTraining,
			String duration,String yearOfTraining,long employeeId) {
		this.id = id;
		this.trainingTaken = trainingTaken;
		this.placeOfTraining = placeOfTraining;
		this.duration = duration;
		this.yearOfTraining = yearOfTraining;
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
	 * @return the trainingTaken
	 */
	public String getTrainingTaken() {
		return trainingTaken;
	}

	/**
	 * @param trainingTaken
	 *            the trainingTaken to set
	 */
	public void setTrainingTaken(String trainingTaken) {
		this.trainingTaken = trainingTaken;
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
	
	

	public String getPlaceOfTraining() {
		return placeOfTraining;
	}

	public void setPlaceOfTraining(String placeOfTraining) {
		this.placeOfTraining = placeOfTraining;
	}

	public String getDuration() {
		return duration;
	}

	public void setDuration(String duration) {
		this.duration = duration;
	}

	public String getYearOfTraining() {
		return yearOfTraining;
	}

	public void setYearOfTraining(String yearOfTraining) {
		this.yearOfTraining = yearOfTraining;
	}

	public void addTrainingInformation() {
		try {
			String command = "INSERT INTO tbl_training_information VALUES(0,'"+this.getTrainingTaken()+"','"+
		this.getPlaceOfTraining()+"','"+this.getDuration()+"','"+this.getYearOfTraining()+"',"+
			this.getEmployeeId()+")";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateTrainingInformation(long id, String trainingTaken,String placeOfTraining,String duration,String yearOfTraining) {
		try {
			String command = "UPDATE tbl_training_information SET training_taken = '"+trainingTaken+
			"', place_of_training='"+placeOfTraining+"', duration='"+duration+"', year_of_training='"+yearOfTraining+"' WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteTrainingInformation(long id) {
		try {
			String command = "DELETE FROM tbl_training_information WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}
	
	public static void deleteTrainingInformationForEmployee(long empId){
		try{
			String command = "delete from tbl_training_information where employee_id = "+empId;
			DBConnection.writeToDatabase(command);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
	}

	public static List<TrainingInformation> getAllTrainingInformationsForEmployee(
			long employeeId) {
		List<TrainingInformation> list = new ArrayList<TrainingInformation>();
		TrainingInformation t = null;
		try {
			String query = "SELECT * FROM tbl_training_information WHERE employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				t = new TrainingInformation(rSet.getLong("id"),rSet.getString("training_taken"),
						rSet.getString("place_of_training"),rSet.getString("duration"),rSet.getString("year_of_training"),
						rSet.getLong("employee_id"));
				list.add(t);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static TrainingInformation getTrainingInformation(long id) {		
		TrainingInformation t = null;
		try {
			String query = "SELECT * FROM tbl_training_information WHERE id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				t = new TrainingInformation(rSet.getLong("id"),rSet.getString("training_taken"),
						rSet.getString("place_of_training"),rSet.getString("duration"),rSet.getString("year_of_training"),
						rSet.getLong("employee_id"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return t;
	}
}// end class
