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
public class BenefitManagement {
	private long id;
	private String benefitName;
	private Date benefitDate;
	private String description;
	private long employeeId;

	/**
	 * 
	 */
	public BenefitManagement() {
	}

	/**
	 * @param benefitName
	 * @param benefitDate
	 * @param description
	 * @param employeeId
	 */
	public BenefitManagement(String benefitName, Date benefitDate,
			String description, long employeeId) {
		this.benefitName = benefitName;
		this.benefitDate = benefitDate;
		this.description = description;
		this.employeeId = employeeId;
	}

	/**
	 * @param id
	 * @param benefitName
	 * @param benefitDate
	 * @param description
	 * @param employeeId
	 */
	public BenefitManagement(long id, String benefitName, Date benefitDate,
			String description, long employeeId) {
		this.id = id;
		this.benefitName = benefitName;
		this.benefitDate = benefitDate;
		this.description = description;
		this.employeeId = employeeId;
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getBenefitName() {
		return benefitName;
	}

	public void setBenefitName(String benefitName) {
		this.benefitName = benefitName;
	}

	public Date getBenefitDate() {
		return benefitDate;
	}

	public void setBenefitDate(Date benefitDate) {
		this.benefitDate = benefitDate;
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

	public void addBenefitManagement() {
		try {
			String command = "insert into tbl_benefit_management values(0,'"+
		this.getBenefitName()+"','"+this.getBenefitDate()+"','"+this.getDescription()+"',"+
					this.getEmployeeId()+")";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateBenefitManagement(long id,String benefitName,
			Date benefitDate,String description) {
		try {
			String command = "update tbl_benefit_management set benefit_name='"+
		benefitName+"', benefit_date='"+benefitDate+"', description='"+
					description+"' where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteBenefitManagement(long id) {
		try {
			String command = "delete from tbl_benefit_management where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<BenefitManagement> getAllBenefitManagements() {
		List<BenefitManagement> list = new ArrayList<BenefitManagement>();
		BenefitManagement benefitManagement = null;
		try {
			String query = "select * from tbl_benefit_management";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				benefitManagement = new BenefitManagement(rSet.getLong("id"),
						rSet.getString("benefit_name"),rSet.getDate("benefit_date"),
						rSet.getString("description"),rSet.getLong("employee_id"));
				list.add(benefitManagement);
			}//end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static BenefitManagement getBenefitManagement(long id) {
		BenefitManagement benefitManagement = null;
		try {
			String query = "select * from tbl_benefit_management where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				benefitManagement = new BenefitManagement(rSet.getLong("id"),
						rSet.getString("benefit_name"),rSet.getDate("benefit_date"),
						rSet.getString("description"),rSet.getLong("employee_id"));
				
			}//end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return benefitManagement;
	}
	
	public static List<BenefitManagement> getAllBenefitManagementsForThisEmployee(long employeeId){
		List<BenefitManagement> list = new ArrayList<BenefitManagement>();
		BenefitManagement benefitManagement = null;
		try {
			String query = "select * from tbl_benefit_management where employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				benefitManagement = new BenefitManagement(rSet.getLong("id"),
						rSet.getString("benefit_name"),rSet.getDate("benefit_date"),
						rSet.getString("description"),rSet.getLong("employee_id"));
				list.add(benefitManagement);
			}//end while loop
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}// end class
