/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Mahder on macbook Pro
 * 
 */
public class Reference {
	private long id;
	private long employeeId;
	private String fullName;
	private String fullAddress;
	private String businessOrOccupation;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public Reference() {
	}

	/**
	 * @param employeeId
	 * @param fullName
	 * @param fullAddress
	 * @param businessOrOccupation
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public Reference(long employeeId, String fullName, String fullAddress,
			String businessOrOccupation, int modifiedBy, Date modificationDate) {
		this.employeeId = employeeId;
		this.fullName = fullName;
		this.fullAddress = fullAddress;
		this.businessOrOccupation = businessOrOccupation;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param fullName
	 * @param fullAddress
	 * @param businessOrOccupation
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public Reference(long id, long employeeId, String fullName,
			String fullAddress, String businessOrOccupation, int modifiedBy,
			Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.fullName = fullName;
		this.fullAddress = fullAddress;
		this.businessOrOccupation = businessOrOccupation;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
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

	/**
	 * @return the fullName
	 */
	public String getFullName() {
		return fullName;
	}

	/**
	 * @param fullName
	 *            the fullName to set
	 */
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	/**
	 * @return the fullAddress
	 */
	public String getFullAddress() {
		return fullAddress;
	}

	/**
	 * @param fullAddress
	 *            the fullAddress to set
	 */
	public void setFullAddress(String fullAddress) {
		this.fullAddress = fullAddress;
	}

	/**
	 * @return the businessOrOccupation
	 */
	public String getBusinessOrOccupation() {
		return businessOrOccupation;
	}

	/**
	 * @param businessOrOccupation
	 *            the businessOrOccupation to set
	 */
	public void setBusinessOrOccupation(String businessOrOccupation) {
		this.businessOrOccupation = businessOrOccupation;
	}

	/**
	 * @return the modifiedBy
	 */
	public int getModifiedBy() {
		return modifiedBy;
	}

	/**
	 * @param modifiedBy
	 *            the modifiedBy to set
	 */
	public void setModifiedBy(int modifiedBy) {
		this.modifiedBy = modifiedBy;
	}

	/**
	 * @return the modificationDate
	 */
	public Date getModificationDate() {
		return modificationDate;
	}

	/**
	 * @param modificationDate
	 *            the modificationDate to set
	 */
	public void setModificationDate(Date modificationDate) {
		this.modificationDate = modificationDate;
	}

	public void save() {
		try {
			String sqlStr = "insert into tbl_reference values(?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setString(3, this.getFullName());
			pStmt.setString(4, this.getFullAddress());
			pStmt.setString(5, this.getBusinessOrOccupation());
			pStmt.setInt(6, this.getModifiedBy());
			pStmt.setDate(7, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(Reference reference) {
		try {
			String sqlStr = "update tbl_reference set employee_id = ?, full_name = ?," +
					"full_address = ?, business_or_occupation = ?, modified_by = ?,"+
					"modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, reference.getEmployeeId());
			pStmt.setString(2, reference.getFullName());
			pStmt.setString(3, reference.getFullAddress());
			pStmt.setString(4, reference.getBusinessOrOccupation());
			pStmt.setInt(5, reference.getModifiedBy());
			pStmt.setDate(6, reference.getModificationDate());
			pStmt.setLong(7, reference.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_reference where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Reference> getAllReferences() {
		List<Reference> list = new ArrayList<Reference>();
		Reference reference = null;
		try {
			String query = "select * from tbl_reference order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				reference = new Reference(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("full_name"), rSet.getString("full_address"), 
						rSet.getString("business_or_occupation"), rSet.getInt("modified_by"), 
						rSet.getDate("modification_date"));
				list.add(reference);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public static List<Reference> getAllReferencesForEmployee(long employeeId){
		List<Reference> list = new ArrayList<Reference>();
		Reference reference = null;
		try {
			String query = "select * from tbl_reference where employee_id = "+employeeId+" order by full_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				reference = new Reference(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("full_name"), rSet.getString("full_address"), 
						rSet.getString("business_or_occupation"), rSet.getInt("modified_by"), 
						rSet.getDate("modification_date"));
				list.add(reference);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Reference getReference(long id) {
		Reference reference = null;
		try {
			String query = "select * from tbl_reference where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				reference = new Reference(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("full_name"), rSet.getString("full_address"), 
						rSet.getString("business_or_occupation"), rSet.getInt("modified_by"), 
						rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return reference;
	}
	
	public static void removeAllReferencesOfEmployee(long employeeId){
		try{
			String command = "delete from tbl_reference where employee_id = "+employeeId;
			DBConnection.writeToDatabase(command);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
	}
}// end class
