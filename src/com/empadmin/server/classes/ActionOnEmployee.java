package com.empadmin.server.classes;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ActionOnEmployee {
	private long id;
	private String actionTaken;
	private Date dateOfAction;
	private String description;
	private long employeeId;

	/**
	 * 
	 */
	public ActionOnEmployee() {
	}

	/**
	 * @param actionTaken
	 * @param dateOfAction
	 * @param description
	 * @param employeeId
	 */
	public ActionOnEmployee(String actionTaken, Date dateOfAction,
			String description, long employeeId) {
		this.actionTaken = actionTaken;
		this.dateOfAction = dateOfAction;
		this.description = description;
		this.employeeId = employeeId;
	}

	/**
	 * @param id
	 * @param actionTaken
	 * @param dateOfAction
	 * @param description
	 * @param employeeId
	 */
	public ActionOnEmployee(long id, String actionTaken, Date dateOfAction,
			String description, long employeeId) {
		this.id = id;
		this.actionTaken = actionTaken;
		this.dateOfAction = dateOfAction;
		this.description = description;
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
	 * @return the actionTaken
	 */
	public String getActionTaken() {
		return actionTaken;
	}

	/**
	 * @param actionTaken
	 *            the actionTaken to set
	 */
	public void setActionTaken(String actionTaken) {
		this.actionTaken = actionTaken;
	}

	/**
	 * @return the dateOfAction
	 */
	public Date getDateOfAction() {
		return dateOfAction;
	}

	/**
	 * @param dateOfAction
	 *            the dateOfAction to set
	 */
	public void setDateOfAction(Date dateOfAction) {
		this.dateOfAction = dateOfAction;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description
	 *            the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
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

	public void addActionOnEmployee() {
		try {
			String command = "INSERT INTO tbl_action_on_employee VALUES(0,'"+this.getActionTaken()+"','"+
			this.getDateOfAction()+"','"+this.getDescription()+"',"+this.getEmployeeId()+")";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateActionOnEmployee(long actionId,String actionTaken,
			Date dateOfAction,String description) {
		try {
			String command = "UPDATE tbl_action_on_employee SET action_taken = '"+
			actionTaken+"', date_of_action = '"+dateOfAction+"', description = '"+
			description+"' WHERE id = "+actionId;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteActionOnEmployee(long id) {
		try {
			String command = "DELETE FROM tbl_action_on_employee WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<ActionOnEmployee> getAllActionsOnEmployees() {
		List<ActionOnEmployee> list = new ArrayList<ActionOnEmployee>();
		ActionOnEmployee action = null;
		try {
			String query = "SELECT * FROM tbl_action_on_employee ORDER BY date_of_action DESC";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				action = new ActionOnEmployee(rSet.getLong("id"),rSet.getString("action_taken"),
						rSet.getDate("date_of_action"),rSet.getString("description"),
						rSet.getLong("employee_id"));
				list.add(action);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static ActionOnEmployee getActionOnEmployee(long id) {		
		ActionOnEmployee action = null;
		try {
			String query = "SELECT * FROM tbl_action_on_employee WHERE id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				action = new ActionOnEmployee(rSet.getLong("id"),rSet.getString("action_taken"),
						rSet.getDate("date_of_action"),rSet.getString("description"),
						rSet.getLong("employee_id"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return action;
	}

	public static List<ActionOnEmployee> getAllActionsOnEmployee(long employeeId) {
		List<ActionOnEmployee> list = new ArrayList<ActionOnEmployee>();
		ActionOnEmployee action = null;
		try {
			String query = "SELECT * FROM tbl_action_on_employee WHERE employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				action = new ActionOnEmployee(rSet.getLong("id"),rSet.getString("action_taken"),
						rSet.getDate("date_of_action"),rSet.getString("description"),
						rSet.getLong("employee_id"));
				list.add(action);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}// end class
