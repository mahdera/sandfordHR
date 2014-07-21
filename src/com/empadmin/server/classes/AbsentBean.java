/**
 * 
 */
package com.empadmin.server.classes;

/**
 * @author Mahder on macbook Pro
 *
 */
public class AbsentBean {
	private long employeeId;
	private float absentDays;
	/**
	 * 
	 */
	public AbsentBean() {
	}
	/**
	 * @param employeeId
	 * @param absentDays
	 */
	public AbsentBean(long employeeId, float absentDays) {
		this.employeeId = employeeId;
		this.absentDays = absentDays;
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
	 * @return the absentDays
	 */
	public float getAbsentDays() {
		return absentDays;
	}
	/**
	 * @param absentDays the absentDays to set
	 */
	public void setAbsentDays(float absentDays) {
		this.absentDays = absentDays;
	}
	
	
}//end class
