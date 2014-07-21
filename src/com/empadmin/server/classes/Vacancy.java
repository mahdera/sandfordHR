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
public class Vacancy {
	private long id;
	private String jobTitle;
	private String name;
	private String location;
	private String subUnit;
	private String hiringManager;
	private String numberOfPositions;
	private String description;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public Vacancy() {
	}

	/**
	 * @param jobTitle
	 * @param name
	 * @param location
	 * @param subUnit
	 * @param hiringManager
	 * @param numberOfPositions
	 * @param description
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public Vacancy(String jobTitle, String name, String location,
			String subUnit, String hiringManager, String numberOfPositions,
			String description, int modifiedBy, Date modificationDate) {
		this.jobTitle = jobTitle;
		this.name = name;
		this.location = location;
		this.subUnit = subUnit;
		this.hiringManager = hiringManager;
		this.numberOfPositions = numberOfPositions;
		this.description = description;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param jobTitle
	 * @param name
	 * @param location
	 * @param subUnit
	 * @param hiringManager
	 * @param numberOfPositions
	 * @param description
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public Vacancy(long id, String jobTitle, String name, String location,
			String subUnit, String hiringManager, String numberOfPositions,
			String description, int modifiedBy, Date modificationDate) {
		this.id = id;
		this.jobTitle = jobTitle;
		this.name = name;
		this.location = location;
		this.subUnit = subUnit;
		this.hiringManager = hiringManager;
		this.numberOfPositions = numberOfPositions;
		this.description = description;
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
	 * @return the jobTitle
	 */
	public String getJobTitle() {
		return jobTitle;
	}

	/**
	 * @param jobTitle
	 *            the jobTitle to set
	 */
	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
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
	 * @return the location
	 */
	public String getLocation() {
		return location;
	}

	/**
	 * @param location
	 *            the location to set
	 */
	public void setLocation(String location) {
		this.location = location;
	}

	/**
	 * @return the subUnit
	 */
	public String getSubUnit() {
		return subUnit;
	}

	/**
	 * @param subUnit
	 *            the subUnit to set
	 */
	public void setSubUnit(String subUnit) {
		this.subUnit = subUnit;
	}

	/**
	 * @return the hiringManager
	 */
	public String getHiringManager() {
		return hiringManager;
	}

	/**
	 * @param hiringManager
	 *            the hiringManager to set
	 */
	public void setHiringManager(String hiringManager) {
		this.hiringManager = hiringManager;
	}

	/**
	 * @return the numberOfPositions
	 */
	public String getNumberOfPositions() {
		return numberOfPositions;
	}

	/**
	 * @param numberOfPositions
	 *            the numberOfPositions to set
	 */
	public void setNumberOfPositions(String numberOfPositions) {
		this.numberOfPositions = numberOfPositions;
	}

	/**
	 * @return the description
	 */
	public String getDescription() {
		return description;
	}

	/**
	 * @param description
	 *            the description to set
	 */
	public void setDescription(String description) {
		this.description = description;
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
			String sqlStr = "insert into tbl_vacancy values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, this.getId());
			pStmt.setString(2, this.getJobTitle());
			pStmt.setString(3, this.getName());
			pStmt.setString(4, this.getLocation());
			pStmt.setString(5, this.getSubUnit());
			pStmt.setString(6, this.getHiringManager());
			pStmt.setString(7, this.getNumberOfPositions());
			pStmt.setString(8, this.getDescription());
			pStmt.setInt(9, this.getModifiedBy());
			pStmt.setDate(10, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(Vacancy vacancy) {
		try {
			String sqlStr = "update tbl_vacancy set job_title = ?, name = ?, location = ?, sub_unit = ?," +
					"hiring_manager = ?, number_of_positions = ?, description = ?, modified_by = ?," +
					"modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setString(1, vacancy.getJobTitle());
			pStmt.setString(2, vacancy.getName());
			pStmt.setString(3, vacancy.getLocation());
			pStmt.setString(4, vacancy.getSubUnit());
			pStmt.setString(5, vacancy.getHiringManager());
			pStmt.setString(6, vacancy.getNumberOfPositions());
			pStmt.setString(7, vacancy.getDescription());
			pStmt.setInt(8, vacancy.getModifiedBy());
			pStmt.setDate(9, vacancy.getModificationDate());
			pStmt.setLong(10, vacancy.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_vacancy where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Vacancy> getAllVacancies() {
		List<Vacancy> list = new ArrayList<Vacancy>();
		Vacancy vacancy = null;
		try {
			String query = "select * from tbl_vacancy order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				vacancy = new Vacancy(rSet.getLong("id"), rSet.getString("job_title"), rSet.getString("name"), 
						rSet.getString("location"), rSet.getString("sub_unit"), rSet.getString("hiring_manager"), 
						rSet.getString("number_of_positions"), rSet.getString("description"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(vacancy);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Vacancy getVacancy(long id) {
		Vacancy vacancy = null;
		try {
			String query = "select * from tbl_vacancy where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				vacancy = new Vacancy(rSet.getLong("id"), rSet.getString("job_title"), rSet.getString("name"), 
						rSet.getString("location"), rSet.getString("sub_unit"), rSet.getString("hiring_manager"), 
						rSet.getString("number_of_positions"), rSet.getString("description"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return vacancy;
	}
}// end class
