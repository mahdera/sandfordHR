/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;
import java.sql.Date;

/**
 * @author mahder
 * 
 */
public class EmployeePhoto {
	private long id;
	private long employeeId;
	private String fileName;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public EmployeePhoto() {
	}

	/**
	 * @param employeeId
	 * @param fileName
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public EmployeePhoto(long employeeId, String fileName, int modifiedBy,
			Date modificationDate) {
		this.employeeId = employeeId;
		this.fileName = fileName;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param fileName
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public EmployeePhoto(long id, long employeeId, String fileName,
			int modifiedBy, Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.fileName = fileName;
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
	 * @return the fileName
	 */
	public String getFileName() {
		return fileName;
	}

	/**
	 * @param fileName
	 *            the fileName to set
	 */
	public void setFileName(String fileName) {
		this.fileName = fileName;
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
			String sqlStr = "insert into tbl_employee_photo values(?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setString(3, this.getFileName());
			pStmt.setInt(4, this.getModifiedBy());
			pStmt.setDate(5, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(EmployeePhoto employeePhoto) {
		try {
			String sqlStr = "update tbl_employee_photo set employee_id = ?, file_name = ?," +
					"modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, employeePhoto.getEmployeeId());
			pStmt.setString(2, employeePhoto.getFileName());
			pStmt.setInt(3, employeePhoto.getModifiedBy());
			pStmt.setDate(4, employeePhoto.getModificationDate());
			pStmt.setLong(5, employeePhoto.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_employee_photo where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<EmployeePhoto> getAllEmployeePhotos() {
		List<EmployeePhoto> list = new ArrayList<EmployeePhoto>();
		EmployeePhoto employeePhoto = null;
		try {
			String query = "select * from tbl_employee_photo order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeePhoto = new EmployeePhoto(rSet.getLong("id"), rSet.getLong("employee_id"), rSet.getString("file_name"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(employeePhoto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static EmployeePhoto getEmployeePhoto(long id) {
		EmployeePhoto employeePhoto = null;
		try {
			String query = "select * from tbl_employee_photo where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeePhoto = new EmployeePhoto(rSet.getLong("id"), rSet.getLong("employee_id"), rSet.getString("file_name"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return employeePhoto;
	}
	
	public static EmployeePhoto getEmployeePhotoForEmployee(long employeeId){
		EmployeePhoto employeePhoto = null;
		try {
			String query = "select * from tbl_employee_photo where employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeePhoto = new EmployeePhoto(rSet.getLong("id"), rSet.getLong("employee_id"), rSet.getString("file_name"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return employeePhoto;
	}
	
	public static String getUniqueFileNameForEmployee(String fileName){		
		int countVal = 0;
		String uniqueFileName = null;
		try{
			StringTokenizer token = new StringTokenizer(fileName,".");
			String originalFileName = token.nextToken();
			String fileExtName = token.nextToken();
			//now get the max pics 
			String query = "select count(*) as cnt from tbl_employee_photo";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				countVal = rSet.getInt("cnt");
			}
			uniqueFileName = "EMP_PHOTO" + "_" + (++countVal) + "." + fileExtName;			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return uniqueFileName;
	}
}// end class
