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
public class PermitAlertLookup {
	private int id;
	private int workPermitPeriod;
	private int residencePermitPeriod;
	private int passportExpiryPeriod;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public PermitAlertLookup() {
	}

	/**
	 * @param workPermitPeriod
	 * @param residencePermitPeriod
	 * @param passportExpiryPeriod
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public PermitAlertLookup(int workPermitPeriod, int residencePermitPeriod,
			int passportExpiryPeriod, int modifiedBy, Date modificationDate) {
		this.workPermitPeriod = workPermitPeriod;
		this.residencePermitPeriod = residencePermitPeriod;
		this.passportExpiryPeriod = passportExpiryPeriod;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param workPermitPeriod
	 * @param residencePermitPeriod
	 * @param passportExpiryPeriod
	 * @param modifiedBy;
	 * @param modificationDate
	 */
	public PermitAlertLookup(int id,int workPermitPeriod, int residencePermitPeriod,
			int passportExpiryPeriod, int modifiedBy, Date modificationDate) {
		this.id = id;
		this.workPermitPeriod = workPermitPeriod;
		this.residencePermitPeriod = residencePermitPeriod;
		this.passportExpiryPeriod = passportExpiryPeriod;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
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
	 * @return the workPermitPeriod
	 */
	public int getWorkPermitPeriod() {
		return workPermitPeriod;
	}

	/**
	 * @param workPermitPeriod
	 *            the workPermitPeriod to set
	 */
	public void setWorkPermitPeriod(int workPermitPeriod) {
		this.workPermitPeriod = workPermitPeriod;
	}

	/**
	 * @return the residencePermitPeriod
	 */
	public int getResidencePermitPeriod() {
		return residencePermitPeriod;
	}

	/**
	 * @param residencePermitPeriod
	 *            the residencePermitPeriod to set
	 */
	public void setResidencePermitPeriod(int residencePermitPeriod) {
		this.residencePermitPeriod = residencePermitPeriod;
	}

	/**
	 * @return the passportExpiryPeriod
	 */
	public int getPassportExpiryPeriod() {
		return passportExpiryPeriod;
	}

	/**
	 * @param passportExpiryPeriod
	 *            the passportExpiryPeriod to set
	 */
	public void setPassportExpiryPeriod(int passportExpiryPeriod) {
		this.passportExpiryPeriod = passportExpiryPeriod;
	}
	
	

	/**
	 * @return the modifiedBy
	 */
	public int getModifiedBy() {
		return modifiedBy;
	}

	/**
	 * @param modifiedBy the modifiedBy to set
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
	 * @param modificationDate the modificationDate to set
	 */
	public void setModificationDate(Date modificationDate) {
		this.modificationDate = modificationDate;
	}

	public void save() {
		try {
			String sqlStr = "insert into tbl_permit_alert_lookup values(?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, 0);
			pStmt.setInt(2, this.getWorkPermitPeriod());
			pStmt.setInt(3, this.getResidencePermitPeriod());
			pStmt.setInt(4, this.getPassportExpiryPeriod());
			pStmt.setInt(5, this.getModifiedBy());
			pStmt.setDate(6, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(PermitAlertLookup permitAlertLookup) {
		try {
			String sqlStr = "update tbl_permit_alert_lookup set work_permit_period = ?, residence_permit_period = ?," +
					"passport_expiry_period = ?, modified_by = ?, modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, permitAlertLookup.getWorkPermitPeriod());
			pStmt.setInt(2, permitAlertLookup.getResidencePermitPeriod());
			pStmt.setInt(3, permitAlertLookup.getPassportExpiryPeriod());
			pStmt.setInt(4, permitAlertLookup.getModifiedBy());
			pStmt.setDate(5, permitAlertLookup.getModificationDate());
			pStmt.setInt(6, permitAlertLookup.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(int id) {
		try {
			String sqlStr = "delete from tbl_permit_alert_lookup where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<PermitAlertLookup> getAllPermitAlertLookups() {
		List<PermitAlertLookup> list = new ArrayList<PermitAlertLookup>();
		PermitAlertLookup permitAlertLookup = null;
		try {
			String query = "select * from tbl_permit_alert_lookup order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				permitAlertLookup = new PermitAlertLookup(rSet.getInt("id"), rSet.getInt("work_permit_period"), 
						rSet.getInt("residence_permit_period"), rSet.getInt("passport_expiry_period"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(permitAlertLookup);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static PermitAlertLookup getPermitAlertLookup(int id) {
		PermitAlertLookup permitAlertLookup = null;
		try {
			String query = "select * from tbl_permit_alert_lookup where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				permitAlertLookup = new PermitAlertLookup(rSet.getInt("id"), rSet.getInt("work_permit_period"), 
						rSet.getInt("residence_permit_period"), rSet.getInt("passport_expiry_period"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return permitAlertLookup;
	}
	
	public static PermitAlertLookup getMaxPermitAlertLookupValue(){
		PermitAlertLookup permitAlertLookup = null;
		try {
			String query = "select * from tbl_permit_alert_lookup order by modification_date desc limit 0,1";			
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				permitAlertLookup = new PermitAlertLookup(rSet.getInt("id"), rSet.getInt("work_permit_period"), 
						rSet.getInt("residence_permit_period"), rSet.getInt("passport_expiry_period"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return permitAlertLookup;
	}
}// end class
