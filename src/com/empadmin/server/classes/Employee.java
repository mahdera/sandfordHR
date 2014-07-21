package com.empadmin.server.classes;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Iterator;

/**
 * @author mahder
 * 
 */

public class Employee {
	private long id;
	private String lastName;
	private String firstName;
	private String middleName;
	private String maidenName;
	private Date dateOfBirth;
	private String placeOfBirth;
	private String nationalityAtBirth;
	private String presentNationality;
	private String sex;
	private String maritalStatus;
	private String preferredFieldOfWork;
	private String listOfProfessionalActivities;
	private String listOfPublications;
	private String employmentRecord;
	private boolean objectContactingPresentEmployer;
	private boolean been_arrested;
	private String employeeCategoryType;
	private boolean deleted;
	private int modifiedBy;
	private Date modificationDate;
	private String employeeIdNumber;

	/**
	 * 
	 */
	public Employee() {
	}

	/**
	 * @param lastName
	 * @param firstName
	 * @param middleName
	 * @param maidenName
	 * @param dateOfBirth
	 * @param placeOfBirth
	 * @param nationalityAtBirth
	 * @param presentNationality
	 * @param sex
	 * @param maritalStatus
	 * @param preferredFieldOfWork
	 * @param listOfProfessionalActivities
	 * @param listOfPublications
	 * @param employmentRecord
	 * @param objectContactingPresentEmployer
	 * @param been_arrested
	 * @param modifiedBy
	 * @param modificationDate
	 * @param employeeIdNumber
	 */
	public Employee(String lastName, String firstName, String middleName,
			String maidenName, Date dateOfBirth, String placeOfBirth,
			String nationalityAtBirth, String presentNationality, String sex,
			String maritalStatus, String preferredFieldOfWork,
			String listOfProfessionalActivities, String listOfPublications,
			String employmentRecord, boolean objectContactingPresentEmployer,
			boolean been_arrested,String employeeCategoryType,boolean deleted, int modifiedBy, Date modificationDate,
			String employeeIdNumber) {
		this.lastName = lastName;
		this.firstName = firstName;
		this.middleName = middleName;
		this.maidenName = maidenName;
		this.dateOfBirth = dateOfBirth;
		this.placeOfBirth = placeOfBirth;
		this.nationalityAtBirth = nationalityAtBirth;
		this.presentNationality = presentNationality;
		this.sex = sex;
		this.maritalStatus = maritalStatus;
		this.preferredFieldOfWork = preferredFieldOfWork;
		this.listOfProfessionalActivities = listOfProfessionalActivities;
		this.listOfPublications = listOfPublications;
		this.employmentRecord = employmentRecord;
		this.objectContactingPresentEmployer = objectContactingPresentEmployer;
		this.been_arrested = been_arrested;
		this.employeeCategoryType = employeeCategoryType;
		this.deleted = deleted;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
		this.employeeIdNumber = employeeIdNumber;
	}

	/**
	 * @param id
	 * @param lastName
	 * @param firstName
	 * @param middleName
	 * @param maidenName
	 * @param dateOfBirth
	 * @param placeOfBirth
	 * @param nationalityAtBirth
	 * @param presentNationality
	 * @param sex
	 * @param maritalStatus
	 * @param preferredFieldOfWork
	 * @param listOfProfessionalActivities
	 * @param listOfPublications
	 * @param employmentRecord
	 * @param objectContactingPresentEmployer
	 * @param been_arrested
	 * @param modifiedBy
	 * @param modificationDate
	 * @param employeeIdNumber
	 */
	public Employee(long id, String lastName, String firstName,
			String middleName, String maidenName, Date dateOfBirth,
			String placeOfBirth, String nationalityAtBirth,
			String presentNationality, String sex, String maritalStatus,
			String preferredFieldOfWork, String listOfProfessionalActivities,
			String listOfPublications, String employmentRecord,
			boolean objectContactingPresentEmployer, boolean been_arrested,
			String employeeCategoryType,boolean deleted,	int modifiedBy, Date modificationDate,
			String employeeIdNumber) {
		this.id = id;
		this.lastName = lastName;
		this.firstName = firstName;
		this.middleName = middleName;
		this.maidenName = maidenName;
		this.dateOfBirth = dateOfBirth;
		this.placeOfBirth = placeOfBirth;
		this.nationalityAtBirth = nationalityAtBirth;
		this.presentNationality = presentNationality;
		this.sex = sex;
		this.maritalStatus = maritalStatus;
		this.preferredFieldOfWork = preferredFieldOfWork;
		this.listOfProfessionalActivities = listOfProfessionalActivities;
		this.listOfPublications = listOfPublications;
		this.employmentRecord = employmentRecord;
		this.objectContactingPresentEmployer = objectContactingPresentEmployer;
		this.been_arrested = been_arrested;
		this.employeeCategoryType = employeeCategoryType;
		this.deleted = deleted;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
		this.employeeIdNumber = employeeIdNumber;
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
	 * @return the lastName
	 */
	public String getLastName() {
		return lastName;
	}

	/**
	 * @param lastName
	 *            the lastName to set
	 */
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	/**
	 * @return the firstName
	 */
	public String getFirstName() {
		return firstName;
	}

	/**
	 * @param firstName
	 *            the firstName to set
	 */
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	/**
	 * @return the middleName
	 */
	public String getMiddleName() {
		return middleName;
	}

	/**
	 * @param middleName
	 *            the middleName to set
	 */
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}

	/**
	 * @return the maidenName
	 */
	public String getMaidenName() {
		return maidenName;
	}

	/**
	 * @param maidenName
	 *            the maidenName to set
	 */
	public void setMaidenName(String maidenName) {
		this.maidenName = maidenName;
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
	 * @return the placeOfBirth
	 */
	public String getPlaceOfBirth() {
		return placeOfBirth;
	}

	/**
	 * @param placeOfBirth
	 *            the placeOfBirth to set
	 */
	public void setPlaceOfBirth(String placeOfBirth) {
		this.placeOfBirth = placeOfBirth;
	}

	/**
	 * @return the nationalityAtBirth
	 */
	public String getNationalityAtBirth() {
		return nationalityAtBirth;
	}

	/**
	 * @param nationalityAtBirth
	 *            the nationalityAtBirth to set
	 */
	public void setNationalityAtBirth(String nationalityAtBirth) {
		this.nationalityAtBirth = nationalityAtBirth;
	}

	/**
	 * @return the presentNationality
	 */
	public String getPresentNationality() {
		return presentNationality;
	}

	/**
	 * @param presentNationality
	 *            the presentNationality to set
	 */
	public void setPresentNationality(String presentNationality) {
		this.presentNationality = presentNationality;
	}

	/**
	 * @return the sex
	 */
	public String getSex() {
		return sex;
	}

	/**
	 * @param sex
	 *            the sex to set
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}

	/**
	 * @return the maritalStatus
	 */
	public String getMaritalStatus() {
		return maritalStatus;
	}

	/**
	 * @param maritalStatus
	 *            the maritalStatus to set
	 */
	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	/**
	 * @return the preferredFieldOfWork
	 */
	public String getPreferredFieldOfWork() {
		return preferredFieldOfWork;
	}

	/**
	 * @param preferredFieldOfWork
	 *            the preferredFieldOfWork to set
	 */
	public void setPreferredFieldOfWork(String preferredFieldOfWork) {
		this.preferredFieldOfWork = preferredFieldOfWork;
	}

	/**
	 * @return the listOfProfessionalActivities
	 */
	public String getListOfProfessionalActivities() {
		return listOfProfessionalActivities;
	}

	/**
	 * @param listOfProfessionalActivities
	 *            the listOfProfessionalActivities to set
	 */
	public void setListOfProfessionalActivities(
			String listOfProfessionalActivities) {
		this.listOfProfessionalActivities = listOfProfessionalActivities;
	}

	/**
	 * @return the listOfPublications
	 */
	public String getListOfPublications() {
		return listOfPublications;
	}

	/**
	 * @param listOfPublications
	 *            the listOfPublications to set
	 */
	public void setListOfPublications(String listOfPublications) {
		this.listOfPublications = listOfPublications;
	}

	/**
	 * @return the employmentRecord
	 */
	public String getEmploymentRecord() {
		return employmentRecord;
	}

	/**
	 * @param employmentRecord
	 *            the employmentRecord to set
	 */
	public void setEmploymentRecord(String employmentRecord) {
		this.employmentRecord = employmentRecord;
	}

	/**
	 * @return the objectContactingPresentEmployer
	 */
	public boolean isObjectContactingPresentEmployer() {
		return objectContactingPresentEmployer;
	}

	/**
	 * @param objectContactingPresentEmployer
	 *            the objectContactingPresentEmployer to set
	 */
	public void setObjectContactingPresentEmployer(
			boolean objectContactingPresentEmployer) {
		this.objectContactingPresentEmployer = objectContactingPresentEmployer;
	}

	/**
	 * @return the been_arrested
	 */
	public boolean isBeen_arrested() {
		return been_arrested;
	}

	/**
	 * @param been_arrested
	 *            the been_arrested to set
	 */
	public void setBeen_arrested(boolean been_arrested) {
		this.been_arrested = been_arrested;
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
	
	

	/**
	 * @return the employeeCategoryType
	 */
	public String getEmployeeCategoryType() {
		return employeeCategoryType;
	}

	/**
	 * @param employeeCategoryType the employeeCategoryType to set
	 */
	public void setEmployeeCategoryType(String employeeCategoryType) {
		this.employeeCategoryType = employeeCategoryType;
	}
	
	

	/**
	 * @return the deleted
	 */
	public boolean isDeleted() {
		return deleted;
	}

	/**
	 * @param deleted the deleted to set
	 */
	public void setDeleted(boolean deleted) {
		this.deleted = deleted;
	}
	
	

	/**
	 * @return the employeeIdNumber
	 */
	public String getEmployeeIdNumber() {
		return employeeIdNumber;
	}

	/**
	 * @param employeeIdNumber the employeeIdNumber to set
	 */
	public void setEmployeeIdNumber(String employeeIdNumber) {
		this.employeeIdNumber = employeeIdNumber;
	}

	public void save() {
		try {
			String sqlStr = "insert into tbl_employee values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setString(2, this.getLastName());
			pStmt.setString(3, this.getFirstName());
			pStmt.setString(4, this.getMiddleName());
			pStmt.setString(5, this.getMaidenName());
			pStmt.setDate(6, this.getDateOfBirth());
			pStmt.setString(7, this.getPlaceOfBirth());
			pStmt.setString(8, this.getNationalityAtBirth());
			pStmt.setString(9, this.getPresentNationality());
			pStmt.setString(10, this.getSex());
			pStmt.setString(11, this.getMaritalStatus());
			pStmt.setString(12, this.getPreferredFieldOfWork());
			pStmt.setString(13, this.getListOfProfessionalActivities());
			pStmt.setString(14, this.getListOfPublications());
			pStmt.setString(15, this.getEmploymentRecord());
			pStmt.setBoolean(16, this.isObjectContactingPresentEmployer());
			pStmt.setBoolean(17, this.isBeen_arrested());
			pStmt.setString(18, this.getEmployeeCategoryType());
			pStmt.setBoolean(19, this.isDeleted());
			pStmt.setInt(20, this.getModifiedBy());
			pStmt.setDate(21, this.getModificationDate());
			pStmt.setString(22, this.getEmployeeIdNumber());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(Employee employee) {
		try {
			String sqlStr = "update tbl_employee set last_name = ?, first_name = ?," +
					"middle_name = ?, maiden_name = ?, date_of_birth = ?, place_of_birth = ?," +
					"nationality_at_birth = ?, present_nationality = ?, sex = ?, marital_status = ?," +
					"preferred_field_of_work = ?, list_of_professional_activities = ?, list_of_publications = ?," +
					"employment_record = ?, object_contacting_present_employer = ?, been_arrested = ?," +
					"employee_category_type = ?, deleted = ?, modified_by = ?, modification_date = ?, employee_id_number = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setString(1, employee.getLastName());
			pStmt.setString(2, employee.getFirstName());
			pStmt.setString(3, employee.getMiddleName());
			pStmt.setString(4, employee.getMaidenName());
			pStmt.setDate(5, employee.getDateOfBirth());
			pStmt.setString(6, employee.getPlaceOfBirth());
			pStmt.setString(7, employee.getNationalityAtBirth());
			pStmt.setString(8, employee.getPresentNationality());
			pStmt.setString(9, employee.getSex());
			pStmt.setString(10, employee.getMaritalStatus());
			pStmt.setString(11, employee.getPreferredFieldOfWork());
			pStmt.setString(12, employee.getListOfProfessionalActivities());
			pStmt.setString(13, employee.getListOfPublications());
			pStmt.setString(14, employee.getEmploymentRecord());
			pStmt.setBoolean(15, employee.isObjectContactingPresentEmployer());
			pStmt.setBoolean(16, employee.isBeen_arrested());
			pStmt.setString(17, employee.getEmployeeCategoryType());
			pStmt.setBoolean(18, employee.isDeleted());
			pStmt.setInt(19, employee.getModifiedBy());
			pStmt.setDate(20, employee.getModificationDate());
			pStmt.setString(21, employee.getEmployeeIdNumber());
			pStmt.setLong(22, employee.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String sqlStr = "delete from tbl_employee where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, id);
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}
	
	public static List<Employee> getAllEmployeesOfThisDepartment(int departmentId){
		List<Employee> list = new ArrayList<Employee>();
		Employee employee = null;
		try {
			String query = "select tbl_employee.* from tbl_employee, tbl_works_at where deleted = false " +
					"and tbl_employee.id = tbl_works_at.employee_id and " +
					"tbl_works_at.department_id = "+departmentId+" order by first_name,last_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employee = new Employee(rSet.getLong("id"), rSet.getString("last_name"), 
						rSet.getString("first_name"),rSet.getString("middle_name"), 
						rSet.getString("maiden_name"), rSet.getDate("date_of_birth"), 
						rSet.getString("place_of_birth"),rSet.getString("nationality_at_birth"), 
						rSet.getString("present_nationality"),rSet.getString("sex"), 
						rSet.getString("marital_status"), rSet.getString("preferred_field_of_work"), 
						rSet.getString("list_of_professional_activities"), rSet.getString("list_of_publications"), 
						rSet.getString("employment_record"), rSet.getBoolean("object_contacting_present_employer"), 
						rSet.getBoolean("been_arrested"), rSet.getString("employee_category_type"),
						rSet.getBoolean("deleted"),rSet.getInt("modified_by"),rSet.getDate("modification_date"),
						rSet.getString("employee_id_number"));
				list.add(employee);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static List<Employee> getAllEmployees() {
		List<Employee> list = new ArrayList<Employee>();
		Employee employee = null;
		try {
			String query = "select * from tbl_employee where deleted = false order by first_name,last_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employee = new Employee(rSet.getLong("id"), rSet.getString("last_name"), 
						rSet.getString("first_name"),rSet.getString("middle_name"), 
						rSet.getString("maiden_name"), rSet.getDate("date_of_birth"), 
						rSet.getString("place_of_birth"),rSet.getString("nationality_at_birth"), 
						rSet.getString("present_nationality"),rSet.getString("sex"), 
						rSet.getString("marital_status"), rSet.getString("preferred_field_of_work"), 
						rSet.getString("list_of_professional_activities"), rSet.getString("list_of_publications"), 
						rSet.getString("employment_record"), rSet.getBoolean("object_contacting_present_employer"), 
						rSet.getBoolean("been_arrested"), rSet.getString("employee_category_type"),
						rSet.getBoolean("deleted"),rSet.getInt("modified_by"),rSet.getDate("modification_date"),
						rSet.getString("employee_id_number"));
				list.add(employee);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}
	
	public static List<Employee> getAllEmployeesOfCategory(String employeeCategoryType){
		List<Employee> list = new ArrayList<Employee>();
		Employee employee = null;
		try {
			String query = "select * from tbl_employee where employee_category_type = '"+employeeCategoryType+"' and deleted = false order by first_name, middle_name, last_name";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employee = new Employee(rSet.getLong("id"), rSet.getString("last_name"), 
						rSet.getString("first_name"),rSet.getString("middle_name"), 
						rSet.getString("maiden_name"), rSet.getDate("date_of_birth"), 
						rSet.getString("place_of_birth"),rSet.getString("nationality_at_birth"), 
						rSet.getString("present_nationality"),rSet.getString("sex"), 
						rSet.getString("marital_status"), rSet.getString("preferred_field_of_work"), 
						rSet.getString("list_of_professional_activities"), rSet.getString("list_of_publications"), 
						rSet.getString("employment_record"), rSet.getBoolean("object_contacting_present_employer"), 
						rSet.getBoolean("been_arrested"), rSet.getString("employee_category_type"),
						rSet.getBoolean("deleted"),rSet.getInt("modified_by"),rSet.getDate("modification_date"),
						rSet.getString("employee_id_number"));
				list.add(employee);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static Employee getEmployee(long id) {
		Employee employee = null;
		try {
			String query = "select * from tbl_employee where id = "+id;
			System.out.println(query);
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employee = new Employee(rSet.getLong("id"), rSet.getString("last_name"), 
						rSet.getString("first_name"),rSet.getString("middle_name"), 
						rSet.getString("maiden_name"), rSet.getDate("date_of_birth"), 
						rSet.getString("place_of_birth"),rSet.getString("nationality_at_birth"), 
						rSet.getString("present_nationality"),rSet.getString("sex"), 
						rSet.getString("marital_status"), rSet.getString("preferred_field_of_work"), 
						rSet.getString("list_of_professional_activities"), rSet.getString("list_of_publications"), 
						rSet.getString("employment_record"), rSet.getBoolean("object_contacting_present_employer"), 
						rSet.getBoolean("been_arrested"), rSet.getString("employee_category_type"),
						rSet.getBoolean("deleted"),rSet.getInt("modified_by"),rSet.getDate("modification_date"),
						rSet.getString("employee_id_number"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return employee;
	}
	
	public static Employee findEmployeeUsing(String familyName,String firstName,
			String middleName,Date dateOfBirth){
		Employee employee = null;
		try{
			String query = "select * from tbl_employee where last_name = '"+familyName+"' and first_name='"+
		firstName+"' and middle_name = '"+middleName+"' and date_of_birth = '"+dateOfBirth+"'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employee = new Employee(rSet.getLong("id"), rSet.getString("last_name"), 
						rSet.getString("first_name"),rSet.getString("middle_name"), 
						rSet.getString("maiden_name"), rSet.getDate("date_of_birth"), 
						rSet.getString("place_of_birth"),rSet.getString("nationality_at_birth"), 
						rSet.getString("present_nationality"),rSet.getString("sex"), 
						rSet.getString("marital_status"), rSet.getString("preferred_field_of_work"), 
						rSet.getString("list_of_professional_activities"), rSet.getString("list_of_publications"), 
						rSet.getString("employment_record"), rSet.getBoolean("object_contacting_present_employer"), 
						rSet.getBoolean("been_arrested"), rSet.getString("employee_category_type"),
						rSet.getBoolean("deleted"),rSet.getInt("modified_by"),rSet.getDate("modification_date"),
						rSet.getString("employee_id_number"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return employee;
	}
	
	public static void softDeleteThisEmployee(long employeeId){
		try{
			String strSql = "update tbl_employee set deleted = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(strSql);
			pStmt.setBoolean(1, true);
			pStmt.setLong(2, employeeId);
			DBConnection.writeToDatabase(pStmt);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
	}
	
	public static long howManyEmployeesAreThere(){
		long employeeCount = 0;
		try{
			String query = "select count(*) as cnt from tbl_employee";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employeeCount = rSet.getLong("cnt");
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return employeeCount;
	}
	
	public static Employee findEmployeeUsingEmployeeIdNumber(String employeeIdNumber){
		Employee employee = null;
		try{
			String query = "select * from tbl_employee where employee_id_number = '"+employeeIdNumber+"'";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				employee = new Employee(rSet.getLong("id"), rSet.getString("last_name"), 
						rSet.getString("first_name"),rSet.getString("middle_name"), 
						rSet.getString("maiden_name"), rSet.getDate("date_of_birth"), 
						rSet.getString("place_of_birth"),rSet.getString("nationality_at_birth"), 
						rSet.getString("present_nationality"),rSet.getString("sex"), 
						rSet.getString("marital_status"), rSet.getString("preferred_field_of_work"), 
						rSet.getString("list_of_professional_activities"), rSet.getString("list_of_publications"), 
						rSet.getString("employment_record"), rSet.getBoolean("object_contacting_present_employer"), 
						rSet.getBoolean("been_arrested"), rSet.getString("employee_category_type"),
						rSet.getBoolean("deleted"),rSet.getInt("modified_by"),rSet.getDate("modification_date"),
						rSet.getString("employee_id_number"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			DBConnection.disconnectDatabase();
		}
		return employee;
	}
}// end class
