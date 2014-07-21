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
public class RecruitmentRequest {
	private long id;
	private int departmentId;
	private String requesterTitle;
	private Date requestDate;
	private Date desiredHireDate;
	private String positionRequestedReplacementFor;
	private String positionRequestedNewPosition;
	private String positionRequestedAdministrative;
	private String positionRequestedManagerial;
	private String positionRequestedNonTrades;
	private String positionRequestedOperationsSupport;
	private String positionRequestedProfessional;
	private String positionRequestedTrades;
	private String positionRequestedProposedJobTitle;
	private String positionRequestedBudgetedRate;
	private String temporaryWorkerNumberOfDays;
	private String temporaryWorkerNumberOfWeeks;
	private String temporaryWorkerNumberOfMonths;
	private Date temporaryWorkerStartDate;
	private Date temporaryWorkerEndDate;
	private String temporaryWorkerHourlyRate;
	private String temporaryWorkerHowMany;
	private String additionalInformationRequired;
	private String additionalInformationDesired;
	private int modifiedBy;
	private Date modificationDate;

	/**
	 * 
	 */
	public RecruitmentRequest() {
	}

	

	/**
	 * @param departmentId
	 * @param requesterTitle
	 * @param requestDate
	 * @param desiredHireDate
	 * @param positionRequestedReplacementFor
	 * @param positionRequestedNewPosition
	 * @param positionRequestedAdministrative
	 * @param positionRequestedManagerial
	 * @param positionRequestedNonTrades
	 * @param positionRequestedOperationsSupport
	 * @param positionRequestedProfessional
	 * @param positionRequestedTrades
	 * @param positionRequestedProposedJobTitle
	 * @param positionRequestedBudgetedRate
	 * @param temporaryWorkerNumberOfDays
	 * @param temporaryWorkerNumberOfWeeks
	 * @param temporaryWorkerNumberOfMonths
	 * @param temporaryWorkerStartDate
	 * @param temporaryWorkerEndDate
	 * @param temporaryWorkerHourlyRate
	 * @param temporaryWorkerHowMany
	 * @param additionalInformationRequired
	 * @param additionalInformationDesired
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public RecruitmentRequest(int departmentId, String requesterTitle,
			Date requestDate, Date desiredHireDate,
			String positionRequestedReplacementFor,
			String positionRequestedNewPosition,
			String positionRequestedAdministrative,
			String positionRequestedManagerial,
			String positionRequestedNonTrades,
			String positionRequestedOperationsSupport,
			String positionRequestedProfessional,
			String positionRequestedTrades,
			String positionRequestedProposedJobTitle,
			String positionRequestedBudgetedRate,
			String temporaryWorkerNumberOfDays,
			String temporaryWorkerNumberOfWeeks,
			String temporaryWorkerNumberOfMonths,
			Date temporaryWorkerStartDate, Date temporaryWorkerEndDate,
			String temporaryWorkerHourlyRate, String temporaryWorkerHowMany,
			String additionalInformationRequired,
			String additionalInformationDesired, int modifiedBy,
			Date modificationDate) {
		this.departmentId = departmentId;
		this.requesterTitle = requesterTitle;
		this.requestDate = requestDate;
		this.desiredHireDate = desiredHireDate;
		this.positionRequestedReplacementFor = positionRequestedReplacementFor;
		this.positionRequestedNewPosition = positionRequestedNewPosition;
		this.positionRequestedAdministrative = positionRequestedAdministrative;
		this.positionRequestedManagerial = positionRequestedManagerial;
		this.positionRequestedNonTrades = positionRequestedNonTrades;
		this.positionRequestedOperationsSupport = positionRequestedOperationsSupport;
		this.positionRequestedProfessional = positionRequestedProfessional;
		this.positionRequestedTrades = positionRequestedTrades;
		this.positionRequestedProposedJobTitle = positionRequestedProposedJobTitle;
		this.positionRequestedBudgetedRate = positionRequestedBudgetedRate;
		this.temporaryWorkerNumberOfDays = temporaryWorkerNumberOfDays;
		this.temporaryWorkerNumberOfWeeks = temporaryWorkerNumberOfWeeks;
		this.temporaryWorkerNumberOfMonths = temporaryWorkerNumberOfMonths;
		this.temporaryWorkerStartDate = temporaryWorkerStartDate;
		this.temporaryWorkerEndDate = temporaryWorkerEndDate;
		this.temporaryWorkerHourlyRate = temporaryWorkerHourlyRate;
		this.temporaryWorkerHowMany = temporaryWorkerHowMany;
		this.additionalInformationRequired = additionalInformationRequired;
		this.additionalInformationDesired = additionalInformationDesired;
		this.modifiedBy = modifiedBy;
		this.modificationDate = modificationDate;
	}

	

	/**
	 * @param id
	 * @param departmentId
	 * @param requesterTitle
	 * @param requestDate
	 * @param desiredHireDate
	 * @param positionRequestedReplacementFor
	 * @param positionRequestedNewPosition
	 * @param positionRequestedAdministrative
	 * @param positionRequestedManagerial
	 * @param positionRequestedNonTrades
	 * @param positionRequestedOperationsSupport
	 * @param positionRequestedProfessional
	 * @param positionRequestedTrades
	 * @param positionRequestedProposedJobTitle
	 * @param positionRequestedBudgetedRate
	 * @param temporaryWorkerNumberOfDays
	 * @param temporaryWorkerNumberOfWeeks
	 * @param temporaryWorkerNumberOfMonths
	 * @param temporaryWorkerStartDate
	 * @param temporaryWorkerEndDate
	 * @param temporaryWorkerHourlyRate
	 * @param temporaryWorkerHowMany
	 * @param additionalInformationRequired
	 * @param additionalInformationDesired
	 * @param modifiedBy
	 * @param modificationDate
	 */
	public RecruitmentRequest(long id, int departmentId, String requesterTitle,
			Date requestDate, Date desiredHireDate,
			String positionRequestedReplacementFor,
			String positionRequestedNewPosition,
			String positionRequestedAdministrative,
			String positionRequestedManagerial,
			String positionRequestedNonTrades,
			String positionRequestedOperationsSupport,
			String positionRequestedProfessional,
			String positionRequestedTrades,
			String positionRequestedProposedJobTitle,
			String positionRequestedBudgetedRate,
			String temporaryWorkerNumberOfDays,
			String temporaryWorkerNumberOfWeeks,
			String temporaryWorkerNumberOfMonths,
			Date temporaryWorkerStartDate, Date temporaryWorkerEndDate,
			String temporaryWorkerHourlyRate, String temporaryWorkerHowMany,
			String additionalInformationRequired,
			String additionalInformationDesired, int modifiedBy,
			Date modificationDate) {
		this.id = id;
		this.departmentId = departmentId;
		this.requesterTitle = requesterTitle;
		this.requestDate = requestDate;
		this.desiredHireDate = desiredHireDate;
		this.positionRequestedReplacementFor = positionRequestedReplacementFor;
		this.positionRequestedNewPosition = positionRequestedNewPosition;
		this.positionRequestedAdministrative = positionRequestedAdministrative;
		this.positionRequestedManagerial = positionRequestedManagerial;
		this.positionRequestedNonTrades = positionRequestedNonTrades;
		this.positionRequestedOperationsSupport = positionRequestedOperationsSupport;
		this.positionRequestedProfessional = positionRequestedProfessional;
		this.positionRequestedTrades = positionRequestedTrades;
		this.positionRequestedProposedJobTitle = positionRequestedProposedJobTitle;
		this.positionRequestedBudgetedRate = positionRequestedBudgetedRate;
		this.temporaryWorkerNumberOfDays = temporaryWorkerNumberOfDays;
		this.temporaryWorkerNumberOfWeeks = temporaryWorkerNumberOfWeeks;
		this.temporaryWorkerNumberOfMonths = temporaryWorkerNumberOfMonths;
		this.temporaryWorkerStartDate = temporaryWorkerStartDate;
		this.temporaryWorkerEndDate = temporaryWorkerEndDate;
		this.temporaryWorkerHourlyRate = temporaryWorkerHourlyRate;
		this.temporaryWorkerHowMany = temporaryWorkerHowMany;
		this.additionalInformationRequired = additionalInformationRequired;
		this.additionalInformationDesired = additionalInformationDesired;
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
	 * @return the departmentId
	 */
	public int getDepartmentId() {
		return departmentId;
	}

	/**
	 * @param departmentId
	 *            the departmentId to set
	 */
	public void setDepartmentId(int departmentId) {
		this.departmentId = departmentId;
	}

	/**
	 * @return the requesterTitle
	 */
	public String getRequesterTitle() {
		return requesterTitle;
	}

	/**
	 * @param requesterTitle
	 *            the requesterTitle to set
	 */
	public void setRequesterTitle(String requesterTitle) {
		this.requesterTitle = requesterTitle;
	}

	/**
	 * @return the requestDate
	 */
	public Date getRequestDate() {
		return requestDate;
	}

	/**
	 * @param requestDate
	 *            the requestDate to set
	 */
	public void setRequestDate(Date requestDate) {
		this.requestDate = requestDate;
	}

	/**
	 * @return the desiredHireDate
	 */
	public Date getDesiredHireDate() {
		return desiredHireDate;
	}

	/**
	 * @param desiredHireDate
	 *            the desiredHireDate to set
	 */
	public void setDesiredHireDate(Date desiredHireDate) {
		this.desiredHireDate = desiredHireDate;
	}

	/**
	 * @return the positionRequestedReplacementFor
	 */
	public String getPositionRequestedReplacementFor() {
		return positionRequestedReplacementFor;
	}

	/**
	 * @param positionRequestedReplacementFor
	 *            the positionRequestedReplacementFor to set
	 */
	public void setPositionRequestedReplacementFor(
			String positionRequestedReplacementFor) {
		this.positionRequestedReplacementFor = positionRequestedReplacementFor;
	}

	/**
	 * @return the positionRequestedNewPosition
	 */
	public String getPositionRequestedNewPosition() {
		return positionRequestedNewPosition;
	}

	/**
	 * @param positionRequestedNewPosition
	 *            the positionRequestedNewPosition to set
	 */
	public void setPositionRequestedNewPosition(
			String positionRequestedNewPosition) {
		this.positionRequestedNewPosition = positionRequestedNewPosition;
	}

	/**
	 * @return the positionRequestedAdministrative
	 */
	public String getPositionRequestedAdministrative() {
		return positionRequestedAdministrative;
	}

	/**
	 * @param positionRequestedAdministrative
	 *            the positionRequestedAdministrative to set
	 */
	public void setPositionRequestedAdministrative(
			String positionRequestedAdministrative) {
		this.positionRequestedAdministrative = positionRequestedAdministrative;
	}

	/**
	 * @return the positionRequestedProposedJobTitle
	 */
	public String getPositionRequestedProposedJobTitle() {
		return positionRequestedProposedJobTitle;
	}

	/**
	 * @param positionRequestedProposedJobTitle
	 *            the positionRequestedProposedJobTitle to set
	 */
	public void setPositionRequestedProposedJobTitle(
			String positionRequestedProposedJobTitle) {
		this.positionRequestedProposedJobTitle = positionRequestedProposedJobTitle;
	}

	/**
	 * @return the positionRequestedBudgetedRate
	 */
	public String getPositionRequestedBudgetedRate() {
		return positionRequestedBudgetedRate;
	}

	/**
	 * @param positionRequestedBudgetedRate
	 *            the positionRequestedBudgetedRate to set
	 */
	public void setPositionRequestedBudgetedRate(
			String positionRequestedBudgetedRate) {
		this.positionRequestedBudgetedRate = positionRequestedBudgetedRate;
	}

	/**
	 * @return the temporaryWorkerNumberOfDays
	 */
	public String getTemporaryWorkerNumberOfDays() {
		return temporaryWorkerNumberOfDays;
	}

	/**
	 * @param temporaryWorkerNumberOfDays
	 *            the temporaryWorkerNumberOfDays to set
	 */
	public void setTemporaryWorkerNumberOfDays(
			String temporaryWorkerNumberOfDays) {
		this.temporaryWorkerNumberOfDays = temporaryWorkerNumberOfDays;
	}

	/**
	 * @return the temporaryWorkerNumberOfWeeks
	 */
	public String getTemporaryWorkerNumberOfWeeks() {
		return temporaryWorkerNumberOfWeeks;
	}

	/**
	 * @param temporaryWorkerNumberOfWeeks
	 *            the temporaryWorkerNumberOfWeeks to set
	 */
	public void setTemporaryWorkerNumberOfWeeks(
			String temporaryWorkerNumberOfWeeks) {
		this.temporaryWorkerNumberOfWeeks = temporaryWorkerNumberOfWeeks;
	}

	/**
	 * @return the temporaryWorkerNumberOfMonths
	 */
	public String getTemporaryWorkerNumberOfMonths() {
		return temporaryWorkerNumberOfMonths;
	}

	/**
	 * @param temporaryWorkerNumberOfMonths
	 *            the temporaryWorkerNumberOfMonths to set
	 */
	public void setTemporaryWorkerNumberOfMonths(
			String temporaryWorkerNumberOfMonths) {
		this.temporaryWorkerNumberOfMonths = temporaryWorkerNumberOfMonths;
	}

	/**
	 * @return the temporaryWorkerStartDate
	 */
	public Date getTemporaryWorkerStartDate() {
		return temporaryWorkerStartDate;
	}

	/**
	 * @param temporaryWorkerStartDate
	 *            the temporaryWorkerStartDate to set
	 */
	public void setTemporaryWorkerStartDate(Date temporaryWorkerStartDate) {
		this.temporaryWorkerStartDate = temporaryWorkerStartDate;
	}

	/**
	 * @return the temporaryWorkerEndDate
	 */
	public Date getTemporaryWorkerEndDate() {
		return temporaryWorkerEndDate;
	}

	/**
	 * @param temporaryWorkerEndDate
	 *            the temporaryWorkerEndDate to set
	 */
	public void setTemporaryWorkerEndDate(Date temporaryWorkerEndDate) {
		this.temporaryWorkerEndDate = temporaryWorkerEndDate;
	}

	/**
	 * @return the temporaryWorkerHourlyRate
	 */
	public String getTemporaryWorkerHourlyRate() {
		return temporaryWorkerHourlyRate;
	}

	/**
	 * @param temporaryWorkerHourlyRate
	 *            the temporaryWorkerHourlyRate to set
	 */
	public void setTemporaryWorkerHourlyRate(String temporaryWorkerHourlyRate) {
		this.temporaryWorkerHourlyRate = temporaryWorkerHourlyRate;
	}

	/**
	 * @return the temporaryWorkerHowMany
	 */
	public String getTemporaryWorkerHowMany() {
		return temporaryWorkerHowMany;
	}

	/**
	 * @param temporaryWorkerHowMany
	 *            the temporaryWorkerHowMany to set
	 */
	public void setTemporaryWorkerHowMany(String temporaryWorkerHowMany) {
		this.temporaryWorkerHowMany = temporaryWorkerHowMany;
	}

	/**
	 * @return the additionalInformationRequired
	 */
	public String getAdditionalInformationRequired() {
		return additionalInformationRequired;
	}

	/**
	 * @param additionalInformationRequired
	 *            the additionalInformationRequired to set
	 */
	public void setAdditionalInformationRequired(
			String additionalInformationRequired) {
		this.additionalInformationRequired = additionalInformationRequired;
	}

	/**
	 * @return the additionalInformationDesired
	 */
	public String getAdditionalInformationDesired() {
		return additionalInformationDesired;
	}

	/**
	 * @param additionalInformationDesired
	 *            the additionalInformationDesired to set
	 */
	public void setAdditionalInformationDesired(
			String additionalInformationDesired) {
		this.additionalInformationDesired = additionalInformationDesired;
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
	 * @return the positionRequestedManagerial
	 */
	public String getPositionRequestedManagerial() {
		return positionRequestedManagerial;
	}



	/**
	 * @param positionRequestedManagerial the positionRequestedManagerial to set
	 */
	public void setPositionRequestedManagerial(String positionRequestedManagerial) {
		this.positionRequestedManagerial = positionRequestedManagerial;
	}



	/**
	 * @return the positionRequestedNonTrades
	 */
	public String getPositionRequestedNonTrades() {
		return positionRequestedNonTrades;
	}



	/**
	 * @param positionRequestedNonTrades the positionRequestedNonTrades to set
	 */
	public void setPositionRequestedNonTrades(String positionRequestedNonTrades) {
		this.positionRequestedNonTrades = positionRequestedNonTrades;
	}



	/**
	 * @return the positionRequestedOperationsSupport
	 */
	public String getPositionRequestedOperationsSupport() {
		return positionRequestedOperationsSupport;
	}



	/**
	 * @param positionRequestedOperationsSupport the positionRequestedOperationsSupport to set
	 */
	public void setPositionRequestedOperationsSupport(
			String positionRequestedOperationsSupport) {
		this.positionRequestedOperationsSupport = positionRequestedOperationsSupport;
	}



	/**
	 * @return the positionRequestedProfessional
	 */
	public String getPositionRequestedProfessional() {
		return positionRequestedProfessional;
	}



	/**
	 * @param positionRequestedProfessional the positionRequestedProfessional to set
	 */
	public void setPositionRequestedProfessional(
			String positionRequestedProfessional) {
		this.positionRequestedProfessional = positionRequestedProfessional;
	}



	/**
	 * @return the positionRequestedTrades
	 */
	public String getPositionRequestedTrades() {
		return positionRequestedTrades;
	}



	/**
	 * @param positionRequestedTrades the positionRequestedTrades to set
	 */
	public void setPositionRequestedTrades(String positionRequestedTrades) {
		this.positionRequestedTrades = positionRequestedTrades;
	}



	public void save() {
		try {
			String sqlStr = "insert into tbl_recruitment_request values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setLong(1, 0);
			pStmt.setInt(2, this.getDepartmentId());
			pStmt.setString(3, this.getRequesterTitle());
			pStmt.setDate(4, this.getRequestDate());
			pStmt.setDate(5, this.getDesiredHireDate());
			pStmt.setString(6, this.getPositionRequestedReplacementFor());
			pStmt.setString(7, this.getPositionRequestedNewPosition());
			pStmt.setString(8, this.getPositionRequestedAdministrative());
			pStmt.setString(9, this.getPositionRequestedManagerial());
			pStmt.setString(10, this.getPositionRequestedNonTrades());
			pStmt.setString(11, this.getPositionRequestedOperationsSupport());
			pStmt.setString(12, this.getPositionRequestedProfessional());
			pStmt.setString(13, this.getPositionRequestedTrades());
			pStmt.setString(14, this.getPositionRequestedProposedJobTitle());
			pStmt.setString(15, this.getPositionRequestedBudgetedRate());
			pStmt.setString(16, this.getTemporaryWorkerNumberOfDays());
			pStmt.setString(17, this.getTemporaryWorkerNumberOfWeeks());
			pStmt.setString(18, this.getTemporaryWorkerNumberOfMonths());
			pStmt.setDate(19, this.getTemporaryWorkerStartDate());
			pStmt.setDate(20, this.getTemporaryWorkerEndDate());
			pStmt.setString(21, this.getTemporaryWorkerHourlyRate());
			pStmt.setString(22, this.getTemporaryWorkerHowMany());
			pStmt.setString(23, this.getAdditionalInformationRequired());
			pStmt.setString(24, this.getAdditionalInformationDesired());
			pStmt.setInt(25, this.getModifiedBy());
			pStmt.setDate(26, this.getModificationDate());
			DBConnection.writeToDatabase(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void update(RecruitmentRequest recruitmentRequest) {
		try {
			String sqlStr = "update tbl_recruitment_request set department_id = ?, requester_title = ?," +
					"request_date = ?, desired_hire_date = ?, position_requested_replacement_for = ?," +
					"position_requested_new_position = ?, position_requested_administrative = ?," +
					"position_requested_proposed_job_title = ?, position_requested_budgeted_rate = ?," +
					"temporary_worker_number_of_days = ?, temporary_worker_number_of_weeks = ?," +
					"temporary_worker_number_of_months = ?, temporary_worker_start_date = ?," +
					"temporary_worker_end_date = ?, temporary_worker_hourly_rate = ?, temporary_worker_how_many = ?," +
					"additional_information_required = ?, additional_information_desired = ?, modified_by = ?," +
					"modification_date = ?, position_requested_managerial = ?, position_requested_non_trades = ?," +
					"position_requested_operations_support = ?, position_requested_professional = ?," +
					"position_requested_trades = ? where id = ?";
			PreparedStatement pStmt = DBConnection.getPreparedStatement(sqlStr);
			pStmt.setInt(1, recruitmentRequest.getDepartmentId());
			pStmt.setString(2, recruitmentRequest.getRequesterTitle());
			pStmt.setDate(3, recruitmentRequest.getRequestDate());
			pStmt.setDate(4, recruitmentRequest.getDesiredHireDate());
			pStmt.setString(5, recruitmentRequest.getPositionRequestedReplacementFor());
			pStmt.setString(6, recruitmentRequest.getPositionRequestedNewPosition());
			pStmt.setString(7, recruitmentRequest.getPositionRequestedAdministrative());
			pStmt.setString(8, recruitmentRequest.getPositionRequestedProposedJobTitle());
			pStmt.setString(9, recruitmentRequest.getPositionRequestedBudgetedRate());
			pStmt.setString(10, recruitmentRequest.getTemporaryWorkerNumberOfDays());
			pStmt.setString(11, recruitmentRequest.getTemporaryWorkerNumberOfWeeks());
			pStmt.setString(12, recruitmentRequest.getTemporaryWorkerNumberOfMonths());
			pStmt.setDate(13, recruitmentRequest.getTemporaryWorkerStartDate());
			pStmt.setDate(14, recruitmentRequest.getTemporaryWorkerEndDate());
			pStmt.setString(15, recruitmentRequest.getTemporaryWorkerHourlyRate());
			pStmt.setString(16, recruitmentRequest.getTemporaryWorkerHowMany());
			pStmt.setString(17, recruitmentRequest.getAdditionalInformationRequired());
			pStmt.setString(18, recruitmentRequest.getAdditionalInformationDesired());
			pStmt.setInt(19, recruitmentRequest.getModifiedBy());
			pStmt.setDate(20, recruitmentRequest.getModificationDate());
			pStmt.setString(21, recruitmentRequest.getPositionRequestedManagerial());
			pStmt.setString(22, recruitmentRequest.getPositionRequestedNonTrades());
			pStmt.setString(23, recruitmentRequest.getPositionRequestedOperationsSupport());
			pStmt.setString(24, recruitmentRequest.getPositionRequestedProfessional());
			pStmt.setString(25, recruitmentRequest.getPositionRequestedTrades());
			pStmt.setLong(26, recruitmentRequest.getId());
			DBConnection.writeToDatabase(pStmt);
			System.out.println(pStmt);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static void delete(long id) {
		try {
			String command = "delete from tbl_recruitment_request where id = "+id;
			DBConnection.writeToDatabase(command);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
	}

	public static List<RecruitmentRequest> getAllRecruitmentRequests() {
		List<RecruitmentRequest> list = new ArrayList<RecruitmentRequest>();
		RecruitmentRequest recruitmentRequest = null;
		try {
			String query = "select * from tbl_recruitment_request order by modification_date desc";
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				recruitmentRequest = new RecruitmentRequest(rSet.getLong("id"), rSet.getInt("department_id"), 
						rSet.getString("requester_title"), rSet.getDate("request_date"), rSet.getDate("desired_hire_date"), 
						rSet.getString("position_requested_replacement_for"), rSet.getString("position_requested_new_position"), 
						rSet.getString("position_requested_administrative"), rSet.getString("position_requested_managerial"),
						rSet.getString("position_requested_non_trades"),rSet.getString("position_requested_operations_support"),
						rSet.getString("position_requested_professional"),rSet.getString("position_requested_trades"),
						rSet.getString("position_requested_proposed_job_title"),rSet.getString("position_requested_budgeted_rate"), 
						rSet.getString("temporary_worker_number_of_days"),rSet.getString("temporary_worker_number_of_weeks"), 
						rSet.getString("temporary_worker_number_of_months"),rSet.getDate("temporary_worker_start_date"), 
						rSet.getDate("temporary_worker_end_date"),rSet.getString("temporary_worker_hourly_rate"), 
						rSet.getString("temporary_worker_how_many"),rSet.getString("additional_information_required"), 
						rSet.getString("additional_information_desired"),rSet.getInt("modified_by"), rSet.getDate("modification_date"));
				list.add(recruitmentRequest);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return list;
	}

	public static RecruitmentRequest getRecruitmentRequest(long id) {
		RecruitmentRequest recruitmentRequest = null;
		try {
			String query = "select * from tbl_recruitment_request where id = "+id;
			ResultSet rSet = DBConnection.readFromDatabase(query);
			while(rSet.next()){
				recruitmentRequest = new RecruitmentRequest(rSet.getLong("id"), rSet.getInt("department_id"), 
						rSet.getString("requester_title"), rSet.getDate("request_date"), rSet.getDate("desired_hire_date"), 
						rSet.getString("position_requested_replacement_for"), rSet.getString("position_requested_new_position"), 
						rSet.getString("position_requested_administrative"), rSet.getString("position_requested_managerial"),
						rSet.getString("position_requested_non_trades"),rSet.getString("position_requested_operations_support"),
						rSet.getString("position_requested_professional"),rSet.getString("position_requested_trades"),
						rSet.getString("position_requested_proposed_job_title"),rSet.getString("position_requested_budgeted_rate"), 
						rSet.getString("temporary_worker_number_of_days"),rSet.getString("temporary_worker_number_of_weeks"), 
						rSet.getString("temporary_worker_number_of_months"),rSet.getDate("temporary_worker_start_date"), 
						rSet.getDate("temporary_worker_end_date"),rSet.getString("temporary_worker_hourly_rate"), 
						rSet.getString("temporary_worker_how_many"),rSet.getString("additional_information_required"), 
						rSet.getString("additional_information_desired"),rSet.getInt("modified_by"), rSet.getDate("modification_date"));				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConnection.disconnectDatabase();
		}
		return recruitmentRequest;
	}
}// end class
