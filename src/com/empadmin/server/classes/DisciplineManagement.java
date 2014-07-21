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
public class DisciplineManagement {
	private long id;
	private String disciplineName;
	private Date disciplineDate;
	private String description;
	private long employeeId;

	/**
	 * 
	 */
	public DisciplineManagement() {
	}

	/**
	 * @param disciplineName
	 * @param disciplineDate
	 * @param description
	 * @param employeeId
	 */
	public DisciplineManagement(String disciplineName, Date disciplineDate,
			String description, long employeeId) {
		this.disciplineName = disciplineName;
		this.disciplineDate = disciplineDate;
		this.description = description;
		this.employeeId = employeeId;
	}

	/**
	 * @param id
	 * @param disciplineName
	 * @param disciplineDate
	 * @param description
	 * @param employeeId
	 */
	public DisciplineManagement(long id, String disciplineName,
			Date disciplineDate, String description, long employeeId) {
		this.id = id;
		this.disciplineName = disciplineName;
		this.disciplineDate = disciplineDate;
		this.description = description;
		this.employeeId = employeeId;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getDisciplineName() {
		return disciplineName;
	}

	public void setDisciplineName(String disciplineName) {
		this.disciplineName = disciplineName;
	}

	public Date getDisciplineDate() {
		return disciplineDate;
	}

	public void setDisciplineDate(Date disciplineDate) {
		this.disciplineDate = disciplineDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public long getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(long employeeId) {
		this.employeeId = employeeId;
	}

	public void addDisciplineManagement() {
		try {
			String command = "insert into tbl_discipline_management values(0,'"+
		this.getDisciplineName()+"','"+this.getDisciplineDate()+"','"+this.getDescription()+"',"+
					this.getEmployeeId()+")";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateDisciplineManagement(long id,String disciplineName,
			Date disciplineDate,String description) {
		try {
			String command = "update tbl_discipline_management set discipline_name='"+
		disciplineName+"', discipline_date='"+disciplineDate+"', description='"+
					description+"' where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteDisciplineManagement(long id) {
		try {
			String command = "delete from tbl_discipline_management where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<DisciplineManagement> getAllDisciplineManagement() {
		List<DisciplineManagement> list = new ArrayList<DisciplineManagement>();
		DisciplineManagement disciplineManagement = null;
		try {
			String query = "select * from tbl_discipline_management";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				disciplineManagement = new DisciplineManagement(rSet.getLong("id"),
						rSet.getString("discipline_name"),rSet.getDate("discipline_date"),
						rSet.getString("description"),rSet.getLong("employee_id"));
				list.add(disciplineManagement);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static DisciplineManagement getDisciplineManagement(long id) {
		DisciplineManagement disciplineManagement = null;
		try {
			String query = "select * from tbl_discipline_management";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				disciplineManagement = new DisciplineManagement(rSet.getLong("id"),
						rSet.getString("discipline_name"),rSet.getDate("discipline_date"),
						rSet.getString("description"),rSet.getLong("employee_id"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return disciplineManagement;
	}
	
	public static List<DisciplineManagement> getAllDisciplineManagementForThisEmployee(long employeeId){
		List<DisciplineManagement> list = new ArrayList<DisciplineManagement>();
		DisciplineManagement disciplineManagement = null;
		try {
			String query = "select * from tbl_discipline_management where employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				disciplineManagement = new DisciplineManagement(rSet.getLong("id"),
						rSet.getString("discipline_name"),rSet.getDate("discipline_date"),
						rSet.getString("description"),rSet.getLong("employee_id"));
				list.add(disciplineManagement);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}// end class
