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
public class Transfer {
	private long id;
	private long employeeId;
	private int transferedFromDivisionId;
	private int transferedToDivisionId;
	private int transferedFromDepartmentId;
	private int transferedToDepartmentId;
	private String transferDetail;
	private Date transferDate;

	/**
	 * 
	 */
	public Transfer() {
	}

	

	/**
	 * @param employeeId
	 * @param transferedFromDivisionId
	 * @param transferedToDivisionId
	 * @param transferedFromDepartmentId
	 * @param transferedToDepartmentId
	 * @param transferDetail
	 * @param transferDate
	 */
	public Transfer(long employeeId, int transferedFromDivisionId,
			int transferedToDivisionId, int transferedFromDepartmentId,
			int transferedToDepartmentId, String transferDetail,
			Date transferDate) {
		this.employeeId = employeeId;
		this.transferedFromDivisionId = transferedFromDivisionId;
		this.transferedToDivisionId = transferedToDivisionId;
		this.transferedFromDepartmentId = transferedFromDepartmentId;
		this.transferedToDepartmentId = transferedToDepartmentId;
		this.transferDetail = transferDetail;
		this.transferDate = transferDate;
	}

	

	/**
	 * @param id
	 * @param employeeId
	 * @param transferedFromDivisionId
	 * @param transferedToDivisionId
	 * @param transferedFromDepartmentId
	 * @param transferedToDepartmentId
	 * @param transferDetail
	 * @param transferDate
	 */
	public Transfer(long id, long employeeId, int transferedFromDivisionId,
			int transferedToDivisionId, int transferedFromDepartmentId,
			int transferedToDepartmentId, String transferDetail,
			Date transferDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.transferedFromDivisionId = transferedFromDivisionId;
		this.transferedToDivisionId = transferedToDivisionId;
		this.transferedFromDepartmentId = transferedFromDepartmentId;
		this.transferedToDepartmentId = transferedToDepartmentId;
		this.transferDetail = transferDetail;
		this.transferDate = transferDate;
	}

	public long getId() {
		return id;
	}



	public void setId(long id) {
		this.id = id;
	}



	public long getEmployeeId() {
		return employeeId;
	}



	public void setEmployeeId(long employeeId) {
		this.employeeId = employeeId;
	}



	public int getTransferedFromDivisionId() {
		return transferedFromDivisionId;
	}



	public void setTransferedFromDivisionId(int transferedFromDivisionId) {
		this.transferedFromDivisionId = transferedFromDivisionId;
	}



	public int getTransferedToDivisionId() {
		return transferedToDivisionId;
	}



	public void setTransferedToDivisionId(int transferedToDivisionId) {
		this.transferedToDivisionId = transferedToDivisionId;
	}



	public int getTransferedFromDepartmentId() {
		return transferedFromDepartmentId;
	}



	public void setTransferedFromDepartmentId(int transferedFromDepartmentId) {
		this.transferedFromDepartmentId = transferedFromDepartmentId;
	}



	public int getTransferedToDepartmentId() {
		return transferedToDepartmentId;
	}



	public void setTransferedToDepartmentId(int transferedToDepartmentId) {
		this.transferedToDepartmentId = transferedToDepartmentId;
	}



	public String getTransferDetail() {
		return transferDetail;
	}



	public void setTransferDetail(String transferDetail) {
		this.transferDetail = transferDetail;
	}



	public Date getTransferDate() {
		return transferDate;
	}



	public void setTransferDate(Date transferDate) {
		this.transferDate = transferDate;
	}



	public void addTransfer() {
		try {
			String command = "insert into tbl_transfer values(0,"+this.getEmployeeId()+","+
		this.getTransferedFromDivisionId()+","+this.getTransferedToDivisionId()+","+
					this.getTransferedFromDepartmentId()+","+this.getTransferedToDepartmentId()+",'"+
		this.getTransferDetail()+"','"+this.getTransferDate()+"')";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateTransfer(long id,int transferedFromDivisionId,
			int transferedToDivisionId,int transferedFromDepartmentId,
			int transferedToDepartmentId,String transferDetail,Date transferDate) {
		try {
			String command = "update tbl_transfer set  transfered_from_division_id="+transferedFromDivisionId+", transfered_to_division_id="+transferedToDivisionId+", "+
					"transfered_from_department_id="+transferedFromDepartmentId+", transfered_to_department_id="+transferedToDepartmentId+", transfer_detail='"+transferDetail+"', transfer_date='"+
		transferDate+"' where id = "+id;
			System.out.println(command);
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteTransfer(long id) {
		try {
			String command = "delete from tbl_transfer where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<Transfer> getAlltransfer() {
		List<Transfer> list = new ArrayList<Transfer>();
		Transfer transfer = null;
		try {
			String query = "select * from tbl_transfer";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				transfer = new Transfer(rSet.getLong("id"),rSet.getLong("employee_id"),
						rSet.getInt("transfered_from_division_id"),rSet.getInt("transfered_to_division_id"),
						rSet.getInt("transfered_from_department_id"),rSet.getInt("transfered_to_department_id"),
						rSet.getString("transfer_detail"),rSet.getDate("transfer_date"));
				list.add(transfer);				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Transfer getTransfer(long id) {
		Transfer transfer = null;
		try {
			String query = "select * from tbl_transfer where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				transfer = new Transfer(rSet.getLong("id"),rSet.getLong("employee_id"),
						rSet.getInt("transfered_from_division_id"),rSet.getInt("transfered_to_division_id"),
						rSet.getInt("transfered_from_department_id"),rSet.getInt("transfered_to_department_id"),
						rSet.getString("transfer_detail"),rSet.getDate("transfer_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return transfer;
	}
	
	public static List<Transfer> getAlltransferForThisEmployee(long employeeId){
		List<Transfer> list = new ArrayList<Transfer>();
		Transfer transfer = null;
		try {
			String query = "select * from tbl_transfer where employee_id = "+employeeId;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				transfer = new Transfer(rSet.getLong("id"),rSet.getLong("employee_id"),
						rSet.getInt("transfered_from_division_id"),rSet.getInt("transfered_to_division_id"),
						rSet.getInt("transfered_from_department_id"),rSet.getInt("transfered_to_department_id"),
						rSet.getString("transfer_detail"),rSet.getDate("transfer_date"));
				list.add(transfer);				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
}// end class
