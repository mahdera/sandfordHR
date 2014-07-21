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
public class Department {
	private int id;
	private String departmentCode;
	private String departmentName;
	private int fisId;
	private String departmentDescription;

	/**
	 * 
	 */
	public Department() {
	}

	/**
	 * @param departmentName
	 * @param fisCode
	 * @param departmentDescription
	 */
	public Department(String departmentName, int fisId,
			String departmentDescription) {
		this.departmentName = departmentName;
		this.fisId = fisId;
		this.departmentDescription = departmentDescription;
	}

	/**
	 * @param departmentCode
	 * @param departmentName
	 * @param fisCode
	 * @param departmentDescription
	 */
	public Department(String departmentCode, String departmentName,
			int fisId, String departmentDescription) {
		this.departmentCode = departmentCode;
		this.departmentName = departmentName;
		this.fisId = fisId;
		this.departmentDescription = departmentDescription;
	}
	
	

	/**
	 * @param id
	 * @param departmentCode
	 * @param departmentName
	 * @param fisCode
	 * @param departmentDescription
	 */
	public Department(int id, String departmentCode, String departmentName,
			int fisId, String departmentDescription) {
		this.id = id;
		this.departmentCode = departmentCode;
		this.departmentName = departmentName;
		this.fisId = fisId;
		this.departmentDescription = departmentDescription;
	}
	
	
	

	/**
	 * @return the fisId
	 */
	public int getFisId() {
		return fisId;
	}

	/**
	 * @param fisId the fisId to set
	 */
	public void setFisId(int fisId) {
		this.fisId = fisId;
	}

	/**
	 * @return the id
	 */
	public int getId() {
		return id;
	}

	/**
	 * @param id the id to set
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * @return the departmentCode
	 */
	public String getDepartmentCode() {
		return departmentCode;
	}

	/**
	 * @param departmentCode
	 *            the departmentCode to set
	 */
	public void setDepartmentCode(String departmentCode) {
		this.departmentCode = departmentCode;
	}

	/**
	 * @return the departmentName
	 */
	public String getDepartmentName() {
		return departmentName;
	}

	/**
	 * @param departmentName
	 *            the departmentName to set
	 */
	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	
	/**
	 * @return the departmentDescription
	 */
	public String getDepartmentDescription() {
		return departmentDescription;
	}

	/**
	 * @param departmentDescription
	 *            the departmentDescription to set
	 */
	public void setDepartmentDescription(String departmentDescription) {
		this.departmentDescription = departmentDescription;
	}

	public void addDepartment() {
		try {
			String command = "INSERT INTO tbl_department VALUES(0,'"+this.getDepartmentCode()+"','"+
			this.getDepartmentName()+"',"+this.getFisId()+",'"+this.getDepartmentDescription()+"')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateDepartment(String departmentCode,
			String departmentName, int fisId, String departmentDescription,int id) {
		try {			
			String command = "UPDATE tbl_department SET department_name = '"+departmentName+"', "+
			"fis_id = "+fisId+", description = '"+departmentDescription+"', department_code = '"+departmentCode+"' WHERE id = "+id;
			System.out.println(command);
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteDepartment(int id) {
		try {			
			
			
			String command = "DELETE FROM tbl_department WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Department> getAllDepartments() {
		List<Department> list = new ArrayList<Department>();
		Department department = null;		
		try {
			String query = "SELECT * FROM tbl_department ORDER BY department_name ASC";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				department = new Department(rSet.getInt("id"),rSet.getString("department_code"),rSet.getString("department_name"),
						rSet.getInt("fis_id"),rSet.getString("description"));
				list.add(department);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Department getDepartment(int id) {		
		
		Department department = null;		
		try {
			String query = "SELECT * FROM tbl_department WHERE id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				department = new Department(rSet.getInt("id"),rSet.getString("department_code"),rSet.getString("department_name"),
						rSet.getInt("fis_id"),rSet.getString("description"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return department;
	}
	
	public static List<Department> getAllDepartmentsFoundInThisFIS(int fisId) {
		List<Department> list = new ArrayList<Department>();
		Department department = null;		
		try {
			String query = "SELECT * FROM tbl_department WHERE fis_id = "+fisId+" ORDER BY department_name ASC";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				department = new Department(rSet.getInt("id"),rSet.getString("department_code"),rSet.getString("department_name"),
						rSet.getInt("fis_id"),rSet.getString("description"));
				list.add(department);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

}// end class
