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
public class MaritalStatus {
	private int id;
	private String maritalStatus;

	/**
	 * 
	 */
	public MaritalStatus() {
	}

	/**
	 * @param maritalStatus
	 */
	public MaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	/**
	 * @param id
	 * @param maritalStatus
	 */
	public MaritalStatus(int id, String maritalStatus) {
		this.id = id;
		this.maritalStatus = maritalStatus;
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

	/**
	 * @return the maritalStatus
	 */
	public String getMaritalStatus() {
		return maritalStatus;
	}

	/**
	 * @param maritalStatus
	 *            the maritalStatus to set
	 */
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public void addMaritalStatus() {
		try {
			String command = "INSERT INTO tbl_marital_status VALUES(0,'"+this.getMaritalStatus()+"')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateMaritalStatus(int id, String maritalStatus) {
		try {
			String command = "UPDATE tbl_marital_status SET marital_status = '"+maritalStatus+"' WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteMaritalStatus(int id) {
		try{
			String command = "DELETE FROM tbl_marital_status WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
	}

	public static List<MaritalStatus> getAllMaritalStatses() {
		List<MaritalStatus> list = new ArrayList<MaritalStatus>();
		MaritalStatus m = null;
		try {
			String query = "SELECT * FROM tbl_marital_status ORDER BY marital_status ASC";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				m = new MaritalStatus(rSet.getInt("id"),rSet.getString("marital_status"));
				list.add(m);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static MaritalStatus getMaritalStatus(int id) {		
		MaritalStatus m = null;
		try {
			String query = "SELECT * FROM tbl_marital_status WHERE id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				m = new MaritalStatus(rSet.getInt("id"),rSet.getString("marital_status"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return m;
	}
}// end class
