/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.Date;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 * @author mahder
 * 
 */
public class EvaluationResult {
	private long id;
	private float result;
	private Date dateEvaluated;
	private long employeeId;

	/**
	 * 
	 */
	public EvaluationResult() {
	}

	/**
	 * @param result
	 * @param dateEvaluated
	 * @param employeeId
	 */
	public EvaluationResult(float result, Date dateEvaluated, long employeeId) {
		this.result = result;
		this.dateEvaluated = dateEvaluated;
		this.employeeId = employeeId;
	}
	
	public EvaluationResult(float result, long employeeId) {
		this.result = result;		
		this.employeeId = employeeId;
		java.util.Date d = new java.util.Date();
        int y = d.getYear();
        int m = d.getMonth();
        int k = d.getDate();
        y+=1900;
        m++;
        String currentDate = y+"-"+m+"-"+k;        
        this.dateEvaluated = Date.valueOf(currentDate);
	}

	/**
	 * @param id
	 * @param result
	 * @param dateEvaluated
	 * @param employeeId
	 */
	public EvaluationResult(long id, float result, Date dateEvaluated,
			long employeeId) {
		this.id = id;
		this.result = result;
		this.dateEvaluated = dateEvaluated;
		this.employeeId = employeeId;
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
	 * @return the result
	 */
	public float getResult() {
		return result;
	}

	/**
	 * @param result
	 *            the result to set
	 */
	public void setResult(float result) {
		this.result = result;
	}

	/**
	 * @return the dateEvaluated
	 */
	public Date getDateEvaluated() {
		return dateEvaluated;
	}

	/**
	 * @param dateEvaluated
	 *            the dateEvaluated to set
	 */
	public void setDateEvaluated(Date dateEvaluated) {
		this.dateEvaluated = dateEvaluated;
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

	public void addEvaluationResult() {
		try {
			String command = "INSERT INTO tbl_evaluation_result VALUES(0,"+this.getResult()+",'"+
			this.getDateEvaluated()+"',"+this.getEmployeeId()+")";
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void updateEvaluationResult(long evalId,float result) {
		try {
			String command = "UPDATE tbl_evaluation_result SET result = "+result+" WHERE id = "+evalId;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void deleteEvaluationResult(long id) {
		try {
			String command = "DELETE FROM tbl_evaluation_result WHERE id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<EvaluationResult> getAllEvaluationResultOfEmployee(
			long employeeId) {
		List<EvaluationResult> list = new ArrayList<EvaluationResult>();
		EvaluationResult eval = null;
		try {
			String query = "SELECT * FROM tbl_evaluation_result WHERE employee_id = "+
			employeeId+" ORDER BY date_evaluated DESC";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				eval = new EvaluationResult(rSet.getLong("id"),rSet.getFloat("result"),
						rSet.getDate("date_evaluated"),rSet.getLong("employee_id"));
				list.add(eval);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static EvaluationResult getEvaluationResult(long id) {		
		EvaluationResult eval = null;
		try {
			String query = "SELECT * FROM tbl_evaluation_result WHERE id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				eval = new EvaluationResult(rSet.getLong("id"),rSet.getFloat("result"),
						rSet.getDate("date_evaluated"),rSet.getLong("employee_id"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return eval;
	}
}// end class
