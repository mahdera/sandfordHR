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
public class SchoolFormalTrainings {
	private long id;
	private long employeeId;
	private String namePlaceCountry;
	private String type;
	private String attendedFrom;
	private String attendedTo;
	private String certificateDiplomaObtained;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public SchoolFormalTrainings() {
	}

	/**
	 * @param employeeId
	 * @param namePlaceCountry
	 * @param type
	 * @param attendedFrom
	 * @param attendedTo
	 * @param certificateDiplomaObtained
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public SchoolFormalTrainings(long employeeId, String namePlaceCountry,
			String type, String attendedFrom, String attendedTo,
			String certificateDiplomaObtained, int modifiedBy,
			Date modificationDate) {
		this.employeeId = employeeId;
		this.namePlaceCountry = namePlaceCountry;
		this.type = type;
		this.attendedFrom = attendedFrom;
		this.attendedTo = attendedTo;
		this.certificateDiplomaObtained = certificateDiplomaObtained;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param namePlaceCountry
	 * @param type
	 * @param attendedFrom
	 * @param attendedTo
	 * @param certificateDiplomaObtained
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public SchoolFormalTrainings(long id, long employeeId,
			String namePlaceCountry, String type, String attendedFrom,
			String attendedTo, String certificateDiplomaObtained,
			int modifiedBy, Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.namePlaceCountry = namePlaceCountry;
		this.type = type;
		this.attendedFrom = attendedFrom;
		this.attendedTo = attendedTo;
		this.certificateDiplomaObtained = certificateDiplomaObtained;
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
	 * @return the namePlaceCountry
	 */
	public String getNamePlaceCountry() {
		return namePlaceCountry;
	}

	/**
	 * @param namePlaceCountry
	 *            the namePlaceCountry to set
	 */
	public void setNamePlaceCountry(String namePlaceCountry) {
		this.namePlaceCountry = namePlaceCountry;
	}

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @param type
	 *            the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}

	/**
	 * @return the attendedFrom
	 */
	public String getAttendedFrom() {
		return attendedFrom;
	}

	/**
	 * @param attendedFrom
	 *            the attendedFrom to set
	 */
	public void setAttendedFrom(String attendedFrom) {
		this.attendedFrom = attendedFrom;
	}

	/**
	 * @return the attendedTo
	 */
	public String getAttendedTo() {
		return attendedTo;
	}

	/**
	 * @param attendedTo
	 *            the attendedTo to set
	 */
	public void setAttendedTo(String attendedTo) {
		this.attendedTo = attendedTo;
	}

	/**
	 * @return the certificateDiplomaObtained
	 */
	public String getCertificateDiplomaObtained() {
		return certificateDiplomaObtained;
	}

	/**
	 * @param certificateDiplomaObtained
	 *            the certificateDiplomaObtained to set
	 */
	public void setCertificateDiplomaObtained(String certificateDiplomaObtained) {
		this.certificateDiplomaObtained = certificateDiplomaObtained;
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
			String sqlStr = "insert into tbl_school_formal_trainings values(?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setString(3, this.getNamePlaceCountry());
			pStmt.setString(4, this.getType());
			pStmt.setString(5, this.getAttendedFrom());
			pStmt.setString(6, this.getAttendedTo());
			pStmt.setString(7, this.getCertificateDiplomaObtained());
			pStmt.setInt(8, this.getModifiedBy());
			pStmt.setDate(9, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(SchoolFormalTrainings schoolFormalTrainings) {
		try {
			String sqlStr = "update tbl_school_formal_trainings set employee_id = ?, name_place_country = ?," +
					"type = ?, attended_from = ?, attended_to = ?, certificate_diploma_obtained = ?," +
					"modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, schoolFormalTrainings.getEmployeeId());
			pStmt.setString(2, schoolFormalTrainings.getNamePlaceCountry());
			pStmt.setString(3, schoolFormalTrainings.getType());
			pStmt.setString(4, schoolFormalTrainings.getAttendedFrom());
			pStmt.setString(5, schoolFormalTrainings.getAttendedTo());
			pStmt.setString(6, schoolFormalTrainings.getCertificateDiplomaObtained());
			pStmt.setInt(7, schoolFormalTrainings.getModifiedBy());
			pStmt.setDate(8, schoolFormalTrainings.getModificationDate());
			pStmt.setLong(9, schoolFormalTrainings.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_school_formal_trainings where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<SchoolFormalTrainings> getAllSchoolFormalTrainings() {
		List<SchoolFormalTrainings> list = new ArrayList<SchoolFormalTrainings>();
		SchoolFormalTrainings schoolFormalTrainings = null;
		try {
			String query = "select * from tbl_school_formal_trainings order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				schoolFormalTrainings = new SchoolFormalTrainings(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("name_place_country"), rSet.getString("type"), rSet.getString("attended_from"), 
						rSet.getString("attended_to"), rSet.getString("certificate_diploma_obtained"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(schoolFormalTrainings);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public static List<SchoolFormalTrainings> getAllSchoolFormalTrainingsForEmployee(long employeeId){
		List<SchoolFormalTrainings> list = new ArrayList<SchoolFormalTrainings>();
		SchoolFormalTrainings schoolFormalTrainings = null;
		try {
			String query = "select * from tbl_school_formal_trainings where employee_id = "+employeeId+" order by attended_to desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				schoolFormalTrainings = new SchoolFormalTrainings(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("name_place_country"), rSet.getString("type"), rSet.getString("attended_from"), 
						rSet.getString("attended_to"), rSet.getString("certificate_diploma_obtained"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(schoolFormalTrainings);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static SchoolFormalTrainings getSchoolFormalTrainings(long id) {
		SchoolFormalTrainings schoolFormalTrainings = null;
		try {
			String query = "select * from tbl_school_formal_trainings where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				schoolFormalTrainings = new SchoolFormalTrainings(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("name_place_country"), rSet.getString("type"), rSet.getString("attended_from"), 
						rSet.getString("attended_to"), rSet.getString("certificate_diploma_obtained"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return schoolFormalTrainings;
	}
	
	public static void removeAllSchoolFormalTrainingsOfEmployee(long employeeId){
		try{
			String command = "delete from tbl_school_formal_trainings where employee_id = "+employeeId;
			DBConnection.writeToDatabase(command);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
	}
}// end class
