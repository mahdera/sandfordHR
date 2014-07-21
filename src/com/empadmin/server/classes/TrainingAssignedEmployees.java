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
public class TrainingAssignedEmployees {
	private long id;
	private long employeeId;
	private long trainingId;
	private Date dateAssigned;

	/**
	 * 
	 */
	public TrainingAssignedEmployees() {
	}

	/**
	 * @param employeeId
	 * @param trainingId
	 * @param dateAssigned
	 */
	public TrainingAssignedEmployees(long employeeId, long trainingId,
			Date dateAssigned) {
		this.employeeId = employeeId;
		this.trainingId = trainingId;
		this.dateAssigned = dateAssigned;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param trainingId
	 * @param dateAssigned
	 */
	public TrainingAssignedEmployees(long id, long employeeId, long trainingId,
			Date dateAssigned) {
		this.id = id;
		this.employeeId = employeeId;
		this.trainingId = trainingId;
		this.dateAssigned = dateAssigned;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(long employeeId) {
		this.employeeId = employeeId;
	}

	public long getTrainingId() {
		return trainingId;
	}

	public void setTrainingId(long trainingId) {
		this.trainingId = trainingId;
	}

	public Date getDateAssigned() {
		return dateAssigned;
	}

	public void setDateAssigned(Date dateAssigned) {
		this.dateAssigned = dateAssigned;
	}

	public void addTrainingAssignedEmployees() {
		try {
			String command = "insert into tbl_training_assigned_employees values(0,"+
		this.getEmployeeId()+","+this.getTrainingId()+",'"+this.getDateAssigned()+"')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateTrainingAssignedEmployees(long id,long employeeId,
			long trainingId,Date dateAssigned) {
		try {
			String command = "update tbl_training_assigned_employees set employee_id="+
		employeeId+", training_id="+trainingId+", date_assigned='"+dateAssigned+"' where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteTrainingAssignedEmployees(long id) {
		try {
			String command = "delete from tbl_training_assigned_employees where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<TrainingAssignedEmployees> getAllTrainingAssignedEmployees() {
		List<TrainingAssignedEmployees> list = new ArrayList<TrainingAssignedEmployees>();
		TrainingAssignedEmployees trainingAssignedEmployees = null;
		try {
			String query = "select * from tbl_training_assigned_employees";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				trainingAssignedEmployees = new TrainingAssignedEmployees(rSet.getLong("id"),
						rSet.getLong("employee_id"),rSet.getLong("training_id"),rSet.getDate("date_assigned"));
				list.add(trainingAssignedEmployees);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static TrainingAssignedEmployees getTrainingAssignedEmployees(long id) {
		TrainingAssignedEmployees trainingAssignedEmployees = null;
		try {
			String query = "select * from tbl_training_assigned_employees where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				trainingAssignedEmployees = new TrainingAssignedEmployees(rSet.getLong("id"),
						rSet.getLong("employee_id"),rSet.getLong("training_id"),rSet.getDate("date_assigned"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return trainingAssignedEmployees;
	}
}// end class
