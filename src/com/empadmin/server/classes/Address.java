/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.sql.Date;

/**
 * @author mahder
 * 
 */
public class Address {
	private long id;
	private long employeeId;
	private String permanentAddress;
	private String presentAddress;
	private String telephoneNumber;
	private String telephoneFaxNumber;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public Address() {
	}

	/**
	 * @param employeeId
	 * @param permanentAddress
	 * @param presentAddress
	 * @param telephoneNumber
	 * @param telephoneFaxNumber
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public Address(long employeeId, String permanentAddress,
			String presentAddress, String telephoneNumber,
			String telephoneFaxNumber, int modifiedBy, Date modificationDate) {
		this.employeeId = employeeId;
		this.permanentAddress = permanentAddress;
		this.presentAddress = presentAddress;
		this.telephoneNumber = telephoneNumber;
		this.telephoneFaxNumber = telephoneFaxNumber;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param permanentAddress
	 * @param presentAddress
	 * @param telephoneNumber
	 * @param telephoneFaxNumber
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public Address(long id, long employeeId, String permanentAddress,
			String presentAddress, String telephoneNumber,
			String telephoneFaxNumber, int modifiedBy, Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.permanentAddress = permanentAddress;
		this.presentAddress = presentAddress;
		this.telephoneNumber = telephoneNumber;
		this.telephoneFaxNumber = telephoneFaxNumber;
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
	 * @return the permanentAddress
	 */
	public String getPermanentAddress() {
		return permanentAddress;
	}

	/**
	 * @param permanentAddress
	 *            the permanentAddress to set
	 */
	public void setPermanentAddress(String permanentAddress) {
		this.permanentAddress = permanentAddress;
	}

	/**
	 * @return the presentAddress
	 */
	public String getPresentAddress() {
		return presentAddress;
	}

	/**
	 * @param presentAddress
	 *            the presentAddress to set
	 */
	public void setPresentAddress(String presentAddress) {
		this.presentAddress = presentAddress;
	}

	/**
	 * @return the telephoneNumber
	 */
	public String getTelephoneNumber() {
		return telephoneNumber;
	}

	/**
	 * @param telephoneNumber
	 *            the telephoneNumber to set
	 */
	public void setTelephoneNumber(String telephoneNumber) {
		this.telephoneNumber = telephoneNumber;
	}

	/**
	 * @return the telephoneFaxNumber
	 */
	public String getTelephoneFaxNumber() {
		return telephoneFaxNumber;
	}

	/**
	 * @param telephoneFaxNumber
	 *            the telephoneFaxNumber to set
	 */
	public void setTelephoneFaxNumber(String telephoneFaxNumber) {
		this.telephoneFaxNumber = telephoneFaxNumber;
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
			String sqlStr = "insert into tbl_address values(?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setString(3, this.getPermanentAddress());
			pStmt.setString(4, this.getPresentAddress());
			pStmt.setString(5, this.getTelephoneNumber());
			pStmt.setString(6, this.getTelephoneFaxNumber());
			pStmt.setInt(7, this.getModifiedBy());
			pStmt.setDate(8, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(Address address) {
		try {
			String sqlStr = "update tbl_address set employee_id = ?, permanent_address = ?," +
					"present_address = ?, telephone_number = ?, telephone_fax_number = ?," +
					"modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, address.getEmployeeId());
			pStmt.setString(2, address.getPermanentAddress());
			pStmt.setString(3, address.getPresentAddress());
			pStmt.setString(4, address.getTelephoneNumber());
			pStmt.setString(5, address.getTelephoneFaxNumber());
			pStmt.setInt(6, address.getModifiedBy());
			pStmt.setDate(7, address.getModificationDate());
			pStmt.setLong(8, address.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_address where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Address> getAlAddresses() {
		List<Address> list = new ArrayList<Address>();
		Address address = null;
		try {
			String query = "select * from tbl_address order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				address = new Address(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("permanent_address"), rSet.getString("present_address"), 
						rSet.getString("telephone_number"), rSet.getString("telephone_fax_number"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(address);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Address getAddress(long id) {
		Address address = null;
		try {
			String query = "select * from tbl_address where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				address = new Address(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("permanent_address"), rSet.getString("present_address"), 
						rSet.getString("telephone_number"), rSet.getString("telephone_fax_number"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return address;
	}
	
	public static Address getAddressForEmployee(long employeeId){
		Address address = null;
		try {
			String query = "select * from tbl_address where employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				address = new Address(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("permanent_address"), rSet.getString("present_address"), 
						rSet.getString("telephone_number"), rSet.getString("telephone_fax_number"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return address;
	}
}// end class
