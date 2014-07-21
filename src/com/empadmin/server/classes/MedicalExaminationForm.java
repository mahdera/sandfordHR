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
public class MedicalExaminationForm {
	private long id;
	private long employeeId;
	private Date medicalExamDate;
	private String weight;
	private String height;
	private String bloodPressure;
	private String pulse;
	private String temperature;
	private String skin;
	private String vision;
	private String hearing;
	private String teeth;
	private String chest;
	private String abdomen;
	private String general;
	private String abilityAdjustWorkEnvironment;
	private String abilitySeaLevel;
	private String doctorName;
	private String healthFacilityAddress;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public MedicalExaminationForm() {
	}

	/**
	 * @param employeeId
	 * @param medicalExamDate
	 * @param weight
	 * @param height
	 * @param bloodPressure
	 * @param pulse
	 * @param temperature
	 * @param skin
	 * @param vision
	 * @param hearing
	 * @param teeth
	 * @param chest
	 * @param abdomen
	 * @param general
	 * @param abilityAdjustWorkEnvironment
	 * @param abilitySeaLevel
	 * @param doctorName
	 * @param healthFacilityAddress
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public MedicalExaminationForm(long employeeId, Date medicalExamDate,
			String weight, String height, String bloodPressure, String pulse,
			String temperature, String skin, String vision, String hearing,
			String teeth, String chest, String abdomen, String general,
			String abilityAdjustWorkEnvironment, String abilitySeaLevel,
			String doctorName, String healthFacilityAddress, int modifiedBy,
			Date modificationDate) {
		this.employeeId = employeeId;
		this.medicalExamDate = medicalExamDate;
		this.weight = weight;
		this.height = height;
		this.bloodPressure = bloodPressure;
		this.pulse = pulse;
		this.temperature = temperature;
		this.skin = skin;
		this.vision = vision;
		this.hearing = hearing;
		this.teeth = teeth;
		this.chest = chest;
		this.abdomen = abdomen;
		this.general = general;
		this.abilityAdjustWorkEnvironment = abilityAdjustWorkEnvironment;
		this.abilitySeaLevel = abilitySeaLevel;
		this.doctorName = doctorName;
		this.healthFacilityAddress = healthFacilityAddress;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	/**
	 * @param id
	 * @param employeeId
	 * @param medicalExamDate
	 * @param weight
	 * @param height
	 * @param bloodPressure
	 * @param pulse
	 * @param temperature
	 * @param skin
	 * @param vision
	 * @param hearing
	 * @param teeth
	 * @param chest
	 * @param abdomen
	 * @param general
	 * @param abilityAdjustWorkEnvironment
	 * @param abilitySeaLevel
	 * @param doctorName
	 * @param healthFacilityAddress
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public MedicalExaminationForm(long id, long employeeId,
			Date medicalExamDate, String weight, String height,
			String bloodPressure, String pulse, String temperature,
			String skin, String vision, String hearing, String teeth,
			String chest, String abdomen, String general,
			String abilityAdjustWorkEnvironment, String abilitySeaLevel,
			String doctorName, String healthFacilityAddress, int modifiedBy,
			Date modificationDate) {
		this.id = id;
		this.employeeId = employeeId;
		this.medicalExamDate = medicalExamDate;
		this.weight = weight;
		this.height = height;
		this.bloodPressure = bloodPressure;
		this.pulse = pulse;
		this.temperature = temperature;
		this.skin = skin;
		this.vision = vision;
		this.hearing = hearing;
		this.teeth = teeth;
		this.chest = chest;
		this.abdomen = abdomen;
		this.general = general;
		this.abilityAdjustWorkEnvironment = abilityAdjustWorkEnvironment;
		this.abilitySeaLevel = abilitySeaLevel;
		this.doctorName = doctorName;
		this.healthFacilityAddress = healthFacilityAddress;
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
	 * @return the medicalExamDate
	 */
	public Date getMedicalExamDate() {
		return medicalExamDate;
	}

	/**
	 * @param medicalExamDate
	 *            the medicalExamDate to set
	 */
	public void setMedicalExamDate(Date medicalExamDate) {
		this.medicalExamDate = medicalExamDate;
	}

	/**
	 * @return the weight
	 */
	public String getWeight() {
		return weight;
	}

	/**
	 * @param weight
	 *            the weight to set
	 */
	public void setWeight(String weight) {
		this.weight = weight;
	}

	/**
	 * @return the height
	 */
	public String getHeight() {
		return height;
	}

	/**
	 * @param height
	 *            the height to set
	 */
	public void setHeight(String height) {
		this.height = height;
	}

	/**
	 * @return the bloodPressure
	 */
	public String getBloodPressure() {
		return bloodPressure;
	}

	/**
	 * @param bloodPressure
	 *            the bloodPressure to set
	 */
	public void setBloodPressure(String bloodPressure) {
		this.bloodPressure = bloodPressure;
	}

	/**
	 * @return the pulse
	 */
	public String getPulse() {
		return pulse;
	}

	/**
	 * @param pulse
	 *            the pulse to set
	 */
	public void setPulse(String pulse) {
		this.pulse = pulse;
	}

	/**
	 * @return the temperature
	 */
	public String getTemperature() {
		return temperature;
	}

	/**
	 * @param temperature
	 *            the temperature to set
	 */
	public void setTemperature(String temperature) {
		this.temperature = temperature;
	}

	/**
	 * @return the skin
	 */
	public String getSkin() {
		return skin;
	}

	/**
	 * @param skin
	 *            the skin to set
	 */
	public void setSkin(String skin) {
		this.skin = skin;
	}

	/**
	 * @return the vision
	 */
	public String getVision() {
		return vision;
	}

	/**
	 * @param vision
	 *            the vision to set
	 */
	public void setVision(String vision) {
		this.vision = vision;
	}

	/**
	 * @return the hearing
	 */
	public String getHearing() {
		return hearing;
	}

	/**
	 * @param hearing
	 *            the hearing to set
	 */
	public void setHearing(String hearing) {
		this.hearing = hearing;
	}

	/**
	 * @return the teeth
	 */
	public String getTeeth() {
		return teeth;
	}

	/**
	 * @param teeth
	 *            the teeth to set
	 */
	public void setTeeth(String teeth) {
		this.teeth = teeth;
	}

	/**
	 * @return the chest
	 */
	public String getChest() {
		return chest;
	}

	/**
	 * @param chest
	 *            the chest to set
	 */
	public void setChest(String chest) {
		this.chest = chest;
	}

	/**
	 * @return the abdomen
	 */
	public String getAbdomen() {
		return abdomen;
	}

	/**
	 * @param abdomen
	 *            the abdomen to set
	 */
	public void setAbdomen(String abdomen) {
		this.abdomen = abdomen;
	}

	/**
	 * @return the general
	 */
	public String getGeneral() {
		return general;
	}

	/**
	 * @param general
	 *            the general to set
	 */
	public void setGeneral(String general) {
		this.general = general;
	}

	/**
	 * @return the abilityAdjustWorkEnvironment
	 */
	public String getAbilityAdjustWorkEnvironment() {
		return abilityAdjustWorkEnvironment;
	}

	/**
	 * @param abilityAdjustWorkEnvironment
	 *            the abilityAdjustWorkEnvironment to set
	 */
	public void setAbilityAdjustWorkEnvironment(
			String abilityAdjustWorkEnvironment) {
		this.abilityAdjustWorkEnvironment = abilityAdjustWorkEnvironment;
	}

	/**
	 * @return the abilitySeaLevel
	 */
	public String getAbilitySeaLevel() {
		return abilitySeaLevel;
	}

	/**
	 * @param abilitySeaLevel
	 *            the abilitySeaLevel to set
	 */
	public void setAbilitySeaLevel(String abilitySeaLevel) {
		this.abilitySeaLevel = abilitySeaLevel;
	}

	/**
	 * @return the doctorName
	 */
	public String getDoctorName() {
		return doctorName;
	}

	/**
	 * @param doctorName
	 *            the doctorName to set
	 */
	public void setDoctorName(String doctorName) {
		this.doctorName = doctorName;
	}

	/**
	 * @return the healthFacilityAddress
	 */
	public String getHealthFacilityAddress() {
		return healthFacilityAddress;
	}

	/**
	 * @param healthFacilityAddress
	 *            the healthFacilityAddress to set
	 */
	public void setHealthFacilityAddress(String healthFacilityAddress) {
		this.healthFacilityAddress = healthFacilityAddress;
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
			String sqlStr = "insert into tbl_medical_examination_form values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setLong(2, this.getEmployeeId());
			pStmt.setDate(3, this.getMedicalExamDate());
			pStmt.setString(4, this.getWeight());
			pStmt.setString(5, this.getHeight());
			pStmt.setString(6, this.getBloodPressure());
			pStmt.setString(7, this.getPulse());
			pStmt.setString(8, this.getTemperature());
			pStmt.setString(9, this.getSkin());
			pStmt.setString(10, this.getVision());
			pStmt.setString(11, this.getHearing());
			pStmt.setString(12, this.getTeeth());
			pStmt.setString(13, this.getChest());
			pStmt.setString(14, this.getAbdomen());
			pStmt.setString(15, this.getGeneral());
			pStmt.setString(16, this.getAbilityAdjustWorkEnvironment());
			pStmt.setString(17, this.getAbilitySeaLevel());
			pStmt.setString(18, this.getDoctorName());
			pStmt.setString(19, this.getHealthFacilityAddress());
			pStmt.setInt(20, this.getModifiedBy());
			pStmt.setDate(21, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(MedicalExaminationForm medicalExaminationForm) {
		try {
			String sqlStr = "update tbl_medical_examination_form set employee_id = ?, medical_exam_date = ?," +
					"weight = ?, height = ?, blood_pressure = ?, pulse = ?, temperature = ?, skin = ?," +
					"vision = ?, hearing = ?, teeth = ?, chest = ?, abdomen = ?, general = ?, ability_adjust_work_environment = ?," +
					"ability_sea_level = ?, doctor_name = ?, health_facility_address = ?, modified_by = ?," +
					"modification_date = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, medicalExaminationForm.getEmployeeId());
			pStmt.setDate(2, medicalExaminationForm.getMedicalExamDate());
			pStmt.setString(3, medicalExaminationForm.getWeight());
			pStmt.setString(4, medicalExaminationForm.getHeight());
			pStmt.setString(5, medicalExaminationForm.getBloodPressure());
			pStmt.setString(6, medicalExaminationForm.getPulse());
			pStmt.setString(7, medicalExaminationForm.getTemperature());
			pStmt.setString(8, medicalExaminationForm.getSkin());
			pStmt.setString(9, medicalExaminationForm.getVision());
			pStmt.setString(10, medicalExaminationForm.getHearing());
			pStmt.setString(11, medicalExaminationForm.getTeeth());
			pStmt.setString(12, medicalExaminationForm.getChest());
			pStmt.setString(13, medicalExaminationForm.getAbdomen());
			pStmt.setString(14, medicalExaminationForm.getGeneral());
			pStmt.setString(15, medicalExaminationForm.getAbilityAdjustWorkEnvironment());
			pStmt.setString(16, medicalExaminationForm.getAbilitySeaLevel());
			pStmt.setString(17, medicalExaminationForm.getDoctorName());
			pStmt.setString(18, medicalExaminationForm.getHealthFacilityAddress());
			pStmt.setInt(19, medicalExaminationForm.getModifiedBy());
			pStmt.setDate(20, medicalExaminationForm.getModificationDate());
			pStmt.setLong(21, medicalExaminationForm.getId());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String command = "delete from tbl_medical_examination_form where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<MedicalExaminationForm> getAllMedicalExaminationForms() {
		List<MedicalExaminationForm> list = new ArrayList<MedicalExaminationForm>();
		MedicalExaminationForm medicalExaminationForm = null;
		try {
			String query = "select * from tbl_medical_examination_form order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				medicalExaminationForm = new MedicalExaminationForm(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getDate("medical_exam_date"), rSet.getString("weight"), rSet.getString("height"), 
						rSet.getString("blood_pressure"), rSet.getString("pulse"), rSet.getString("temperature"), 
						rSet.getString("skin"), rSet.getString("vision"), rSet.getString("hearing"), rSet.getString("teeth"), 
						rSet.getString("chest"), rSet.getString("abdomen"), rSet.getString("general"), 
						rSet.getString("ability_adjust_work_environment"), rSet.getString("ability_sea_level"), 
						rSet.getString("doctor_name"), rSet.getString("health_facility_address"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(medicalExaminationForm);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static MedicalExaminationForm getMedicalExaminationForm(long id) {
		MedicalExaminationForm medicalExaminationForm = null;
		try {
			String query = "select * from tbl_medical_examination_form where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				medicalExaminationForm = new MedicalExaminationForm(rSet.getLong("id"), rSet.getLong("employee_id"), 
						rSet.getDate("medical_exam_date"), rSet.getString("weight"), rSet.getString("height"), 
						rSet.getString("blood_pressure"), rSet.getString("pulse"), rSet.getString("temperature"), 
						rSet.getString("skin"), rSet.getString("vision"), rSet.getString("hearing"), rSet.getString("teeth"), 
						rSet.getString("chest"), rSet.getString("abdomen"), rSet.getString("general"), 
						rSet.getString("ability_adjust_work_environment"), rSet.getString("ability_sea_level"), 
						rSet.getString("doctor_name"), rSet.getString("health_facility_address"), 
						rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return medicalExaminationForm;
	}
}// end class
