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
public class PastPost {
	private long id;
	private long employeeId;
	private String pastPostFrom;
	private String pastPostTo;
	private String startingSalary;
	private String finalSalary;
	private String exactTitleOfPost;
	private String nameOfEmployer;
	private String typeOfBusiness;
	private String addressOfEmployer;
	private String nameOfSupervisor;
	private String reasonForLeaving;
	private int modifiedBy;
	private Date modificationDate;
	/**
	 * 
	 */
	public PastPost() {
	}
	/**
	 * @param employeeId
	 * @param pastPostFrom
	 * @param pastPostTo
	 * @param startingSalary
	 * @param finalSalary
	 * @param exactTitleOfPost
	 * @param nameOfEmployer
	 * @param nameOfSupervisor
	 * @param reasonForLeaving
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public PastPost(long employeeId, String pastPostFrom, String pastPostTo,
			String startingSalary, String finalSalary, String exactTitleOfPost,
			String nameOfEmployer,String typeOfBusiness,String addressOfEmployer, String nameOfSupervisor,
			String reasonForLeaving, int modifiedBy, Date modificationDate) {
		this.employeeId = employeeId;
		this.pastPostFrom = pastPostFrom;
		this.pastPostTo = pastPostTo;
		this.startingSalary = startingSalary;
		this.finalSalary = finalSalary;
		this.exactTitleOfPost = exactTitleOfPost;
		this.nameOfEmployer = nameOfEmployer;
		this.typeOfBusiness = typeOfBusiness;
		this.addressOfEmployer = addressOfEmployer;
		this.nameOfSupervisor = nameOfSupervisor;
		this.reasonForLeaving = reasonForLeaving;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}
	/**
	 * @param id
	 * @param employeeId
	 * @param pastPostFrom
	 * @param pastPostTo
	 * @param startingSalary
	 * @param finalSalary
	 * @param exactTitleOfPost
	 * @param nameOfEmployer
	 * @param nameOfSupervisor
	 * @param reasonForLeaving
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public PastPost(long id, long employeeId, String pastPostFrom,
			String pastPostTo, String startingSalary, String finalSalary,
			String exactTitleOfPost, String nameOfEmployer,String typeOfBusiness,String addressOfEmployer,
			String nameOfSupervisor, String reasonForLeaving, int modifiedBy,
			Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.pastPostFrom = pastPostFrom;
		this.pastPostTo = pastPostTo;
		this.startingSalary = startingSalary;
		this.finalSalary = finalSalary;
		this.exactTitleOfPost = exactTitleOfPost;
		this.nameOfEmployer = nameOfEmployer;
		this.typeOfBusiness = typeOfBusiness;
		this.addressOfEmployer = addressOfEmployer;
		this.nameOfSupervisor = nameOfSupervisor;
		this.reasonForLeaving = reasonForLeaving;
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
	 * @param id the id to set
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
	 * @param employeeId the employeeId to set
	 */
	public void setEmployeeId(long employeeId) {
		this.employeeId = employeeId;
	}
	/**
	 * @return the pastPostFrom
	 */
	public String getPastPostFrom() {
		return pastPostFrom;
	}
	/**
	 * @param pastPostFrom the pastPostFrom to set
	 */
	public void setPastPostFrom(String pastPostFrom) {
		this.pastPostFrom = pastPostFrom;
	}
	/**
	 * @return the pastPostTo
	 */
	public String getPastPostTo() {
		return pastPostTo;
	}
	/**
	 * @param pastPostTo the pastPostTo to set
	 */
	public void setPastPostTo(String pastPostTo) {
		this.pastPostTo = pastPostTo;
	}
	/**
	 * @return the startingSalary
	 */
	public String getStartingSalary() {
		return startingSalary;
	}
	/**
	 * @param startingSalary the startingSalary to set
	 */
	public void setStartingSalary(String startingSalary) {
		this.startingSalary = startingSalary;
	}
	/**
	 * @return the finalSalary
	 */
	public String getFinalSalary() {
		return finalSalary;
	}
	/**
	 * @param finalSalary the finalSalary to set
	 */
	public void setFinalSalary(String finalSalary) {
		this.finalSalary = finalSalary;
	}
	/**
	 * @return the exactTitleOfPost
	 */
	public String getExactTitleOfPost() {
		return exactTitleOfPost;
	}
	/**
	 * @param exactTitleOfPost the exactTitleOfPost to set
	 */
	public void setExactTitleOfPost(String exactTitleOfPost) {
		this.exactTitleOfPost = exactTitleOfPost;
	}
	/**
	 * @return the nameOfEmployer
	 */
	public String getNameOfEmployer() {
		return nameOfEmployer;
	}
	/**
	 * @param nameOfEmployer the nameOfEmployer to set
	 */
	public void setNameOfEmployer(String nameOfEmployer) {
		this.nameOfEmployer = nameOfEmployer;
	}
	/**
	 * @return the nameOfSupervisor
	 */
	public String getNameOfSupervisor() {
		return nameOfSupervisor;
	}
	/**
	 * @param nameOfSupervisor the nameOfSupervisor to set
	 */
	public void setNameOfSupervisor(String nameOfSupervisor) {
		this.nameOfSupervisor = nameOfSupervisor;
	}
	/**
	 * @return the reasonForLeaving
	 */
	public String getReasonForLeaving() {
		return reasonForLeaving;
	}
	/**
	 * @param reasonForLeaving the reasonForLeaving to set
	 */
	public void setReasonForLeaving(String reasonForLeaving) {
		this.reasonForLeaving = reasonForLeaving;
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
	
	/**
	 * @return the typeOfBusiness
	 */
	public String getTypeOfBusiness() {
		return typeOfBusiness;
	}
	/**
	 * @param typeOfBusiness the typeOfBusiness to set
	 */
	public void setTypeOfBusiness(String typeOfBusiness) {
		this.typeOfBusiness = typeOfBusiness;
	}
	/**
	 * @return the addressOfEmployer
	 */
	public String getAddressOfEmployer() {
		return addressOfEmployer;
	}
	/**
	 * @param addressOfEmployer the addressOfEmployer to set
	 */
	public void setAddressOfEmployer(String addressOfEmployer) {
		this.addressOfEmployer = addressOfEmployer;
	}
	public void save() {
		try {
			String sqlStr = "insert into tbl_past_post values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setString(3, this.getPastPostFrom());
			pStmt.setString(4, this.getPastPostTo());
			pStmt.setString(5, this.getStartingSalary());
			pStmt.setString(6, this.getFinalSalary());
			pStmt.setString(7, this.getExactTitleOfPost());
			pStmt.setString(8, this.getNameOfEmployer());
			pStmt.setString(9, this.getTypeOfBusiness());
			pStmt.setString(10, this.getAddressOfEmployer());
			pStmt.setString(11, this.getNameOfSupervisor());
			pStmt.setString(12, this.getReasonForLeaving());
			pStmt.setInt(13, this.getModifiedBy());
			pStmt.setDate(14, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(PastPost pastPost) {
		try {
			String sqlStr = "update tbl_past_post set employee_id = ?, past_post_from = ?," +
					"past_post_to = ?, starting_salary = ?, final_salary = ?, exact_title_of_post = ?," +
					"name_of_employer = ?, name_of_supervisor = ?, reason_for_leaving = ?, modified_by = ?," +
					"modification_date = ?, type_of_business = ?, address_of_employer = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, pastPost.getEmployeeId());
			pStmt.setString(2, pastPost.getPastPostFrom());
			pStmt.setString(3, pastPost.getPastPostTo());
			pStmt.setString(4, pastPost.getStartingSalary());
			pStmt.setString(5, pastPost.getFinalSalary());
			pStmt.setString(6, pastPost.getExactTitleOfPost());
			pStmt.setString(7, pastPost.getNameOfEmployer());
			pStmt.setString(8, pastPost.getReasonForLeaving());
			pStmt.setInt(9, pastPost.getModifiedBy());
			pStmt.setDate(10, pastPost.getModificationDate());
			pStmt.setString(11,pastPost.getTypeOfBusiness());
			pStmt.setString(12, pastPost.getAddressOfEmployer());
			pStmt.setLong(13, pastPost.getId());
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_past_post where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<PastPost> getAllPastPosts() {
		List<PastPost> list = new ArrayList<PastPost>();
		PastPost pastPost = null;
		try {
			String query = "select * from tbl_past_post order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				pastPost = new PastPost(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("past_post_from"),	rSet.getString("past_post_to"), 
						rSet.getString("starting_salary"), rSet.getString("final_salary"), 
						rSet.getString("exact_title_of_post"), rSet.getString("name_of_employer"), 
						rSet.getString("type_of_business"),rSet.getString("address_of_employer"),
						rSet.getString("name_of_supervisor"), rSet.getString("reason_for_leaving"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(pastPost);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public static List<PastPost> getAllPastPostsForEmployee(long employeeId){
		List<PastPost> list = new ArrayList<PastPost>();
		PastPost pastPost = null;
		try {
			String query = "select * from tbl_past_post where employee_id = "+employeeId+" order by past_post_to desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				pastPost = new PastPost(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("past_post_from"),	rSet.getString("past_post_to"), 
						rSet.getString("starting_salary"), rSet.getString("final_salary"), 
						rSet.getString("exact_title_of_post"), rSet.getString("name_of_employer"), 
						rSet.getString("type_of_business"),rSet.getString("address_of_employer"),
						rSet.getString("name_of_supervisor"), rSet.getString("reason_for_leaving"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(pastPost);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static PastPost getPresentPost(long id) {
		PastPost pastPost = null;
		try {
			String query = "select * from tbl_past_post where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				pastPost = new PastPost(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getString("past_post_from"),	rSet.getString("past_post_to"), 
						rSet.getString("starting_salary"), rSet.getString("final_salary"), 
						rSet.getString("exact_title_of_post"), rSet.getString("name_of_employer"), 
						rSet.getString("type_of_business"),rSet.getString("address_of_employer"),
						rSet.getString("name_of_supervisor"), rSet.getString("reason_for_leaving"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return pastPost;
	}
	
	public static void removeAllPastPostsOfEmployee(long employeeId){
		try{
			String command = "delete from tbl_past_post where employee_id = "+employeeId;
			DBConnection.writeToDatabase(command);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
	}
}//end class
