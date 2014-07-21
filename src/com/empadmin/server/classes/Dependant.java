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
 * @author mahder
 * 
 */
public class Dependant {
	private long id;
	private long employeeId;
	private String name;
	private Date dateOfBirth;
	private String relationship;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public Dependant() {
	}

	/**
	 * @param employeeId
	 * @param name
	 * @param dateOfBirth
	 * @param relationship
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public Dependant(long employeeId, String name, Date dateOfBirth,
			String relationship, int modifiedBy, Date modificationDate) {
		this.employeeId = employeeId;
		this.name = name;
		this.dateOfBirth = dateOfBirth;
		this.relationship = relationship;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param name
	 * @param dateOfBirth
	 * @param relationship
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public Dependant(long id, long employeeId, String name, Date dateOfBirth,
			String relationship, int modifiedBy, Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.name = name;
		this.dateOfBirth = dateOfBirth;
		this.relationship = relationship;
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
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name
	 *            the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the dateOfBirth
	 */
	public Date getDateOfBirth() {
		return dateOfBirth;
	}

	/**
	 * @param dateOfBirth
	 *            the dateOfBirth to set
	 */
	public void setDateOfBirth(Date dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	/**
	 * @return the relationship
	 */
	public String getRelationship() {
		return relationship;
	}

	/**
	 * @param relationship
	 *            the relationship to set
	 */
	public void setRelationship(String relationship) {
		this.relationship = relationship;
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
			String sqlStr = "insert into tbl_dependant values(?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setString(3, this.getName());
			pStmt.setDate(4, this.getDateOfBirth());
			pStmt.setString(5, this.getRelationship());
			pStmt.setInt(6, this.getModifiedBy());
			pStmt.setDate(7, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(Dependant dependant) {
		try {
			String sqlStr = "update tbl_dependant set employee_id = ?, name = ?, date_of_birth = ?," +
					"relationship = ?, modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, dependant.getEmployeeId());
			pStmt.setString(2, dependant.getName());
			pStmt.setDate(3, dependant.getDateOfBirth());
			pStmt.setString(4, dependant.getRelationship());
			pStmt.setInt(5, dependant.getModifiedBy());
			pStmt.setDate(6, dependant.getModificationDate());
			pStmt.setLong(7, dependant.getId());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_dependant where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Dependant> getAllDependants() {
		List<Dependant> list = new ArrayList<Dependant>();
		Dependant dependant = null;
		try {
			String query = "select * from tbl_dependant order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				dependant = new Dependant(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("name"), rSet.getDate("date_of_birth"), rSet.getString("relationship"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(dependant);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public static List<Dependant> getAllDependantsForEmployee(long employeeId){
		List<Dependant> list = new ArrayList<Dependant>();
		Dependant dependant = null;
		try {
			String query = "select * from tbl_dependant where employee_id = "+employeeId+" order by name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				dependant = new Dependant(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("name"), rSet.getDate("date_of_birth"), rSet.getString("relationship"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(dependant);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Dependant getDependant(long id) {
		Dependant dependant = null;
		try {
			String query = "select * from tbl_dependant where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				dependant = new Dependant(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("name"), rSet.getDate("date_of_birth"), rSet.getString("relationship"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return dependant;
	}
	
	public static void removeAllDependantsOfEmployee(long employeeId){
		try{
			String command = "delete from tbl_dependant where employee_id = "+employeeId;
			DBConnection.writeToDatabase(command);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
	}
}// end class
