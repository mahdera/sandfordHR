<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>

<%
	long employeeRecordId = Long.parseLong(request.getParameter("employeeRecordId"));
	Employee emp = Employee.getEmployee(employeeRecordId);
	
%>
<table border="1" width="100%">
	<tr>
		<td></td>
		<td align="right">
		<%
			EmployeePhoto ePhoto = EmployeePhoto.getEmployeePhotoFor(emp.getId());
			if(ePhoto == null){
		%>
				<img src="design/nophoto.jpeg" border="1" width="20%" align="middle" />
		<%
			}else{
		%>
				<img src="showimagenow.jsp?employeeId=<%=employeeRecordId%>" width="20%" height="18%"/>
		<%
			}
		%>
			<br/>
			<a href="#.jsp" onclick="showEmployeePhotoChageForm(<%=employeeRecordId%>);">
				Change Photo
			</a>
		</td>
	</tr>
	<tr>
		<td colspan="2"><div id="employeePhotoEditDiv"></div></td>
	</tr>
	<tr>
		<td colspan="2">
			<fieldset>
				<legend>1. Basic Information</legend>
				<table border="1" width="100%">
					<tr>
						<td colspan="3" align="right">
							<a href="#.jsp" onclick="showEditFieldsOfEmployeeBasicInformation(<%=emp.getId() %>);">Edit</a>
						</td>
					</tr>
					<tr>
						<td width="33%">
							<strong>Name: </strong><%=emp.getFirstName() %>
						</td>
						<td width="33%">
							<strong>Father Name: </strong><%=emp.getFatherName() %>
						</td>
						<td width="33%">
							<strong>Grand Father Name: </strong><%=emp.getGrandFatherName() %>							
						</td>
					</tr>
					<tr>
						<td>
							<strong>Sex: </strong><%=emp.getSex() %>
						</td>
						<td>
							<strong>Date of Birth: </strong><%=emp.getDateOfBirth() %>
						</td>
						<td>
							<strong>Id Number: </strong><%=emp.getIdNumber() %>
						</td>
					</tr>
					<tr>
						<td>
							<strong>Pension Number: </strong><%=emp.getPensionNumber() %>
						</td>
						<td>
							<strong>Employement Date: </strong><%=emp.getEmployementDate() %>
						</td>
						<td>
							<strong>Religion: </strong><%=Religion.getReligion(emp.getReligionId()).getReligion() %> 	
						</td>
					</tr>
					<tr>
						<td>
							<strong>Nationality: </strong><%=emp.getNationality() %>
						</td>
						<td>
							<strong>Marital Status: </strong><%=MaritalStatus.getMaritalStatus(emp.getMaritalStatusId()).getMaritalStatus() %>						
						</td>
						<td>
							<strong>Spouse Full Name: </strong><%=emp.getSpouseFullName() %>
						</td>
					</tr>
					<tr>
						<td>
							<strong>Basic Salary: </strong><%=emp.getBasicSalary() %>
						</td>
						<td>
							<strong>Employee Type: </strong><%=EmployeeType.getEmployeeType(emp.getEmployeeTypeId()).getEmployeeType() %>						
						</td>
						<td>
							<strong>Employee Position: </strong><%=emp.getEmployeePosition() %>
						</td>
					</tr>
					<tr>
						<td>
							<strong>Maximum Education Level: </strong><%=EducationLevel.getEducationLevel(emp.getEducationLevelId()).getEducationLevel() %>
						</td>
						<td>
							<strong>Budget Center: </strong><%=FacultyInstituteSchool.getFacultyInstituteSchool(emp.getBudgetCenterId()).getFisName() %>
						</td>
						<td>
							<strong>Employement Type: </strong><%=EmployementType.getEmployementType(emp.getEmployementTypeId()).getEmployementType() %>
						</td>
					</tr>					
				</table>
			</fieldset>
		</td>		
	</tr>
	<tr>
		<td colspan="2">
			<div id="employeeBasicInformationEditDiv" style="background:#CCCCFF"></div>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<fieldset>
				<legend>2. Works At</legend>
				<%
					List<WorksAt> worksAtList = WorksAt.getAllWorksAtForEmployee(emp.getId());
					Iterator<WorksAt> worksAtItr = worksAtList.iterator();
				%>
				<table border="1" width="100%">
					<tr>
						<td colspan="4" align="right">
							<a href="#.jsp" onclick="showNewWorksAtForm(<%=employeeRecordId %>);">
										Add new place of work
							</a>
						</td>
					</tr>
					<tr>
						<th width="10%" style="background: #cccccc; color: black;">
							Organization:
						</th>
						<th width="10%" style="background: #cccccc; color: black;">
							Division:
						</th>
						<th width="10%" style="background: #cccccc; color: black;">
							Department:
						</th>
						<th width="10%" style="background: #cccccc; color: black;">
							Edit
						</th>
					</tr>
					<%
						while(worksAtItr.hasNext()){
							WorksAt wA = worksAtItr.next();
							College college = College.getCollege(wA.getCollegeId());
							FacultyInstituteSchool fis = FacultyInstituteSchool.getFacultyInstituteSchool(wA.getFisId());
							String fisName = "NA";
							if(fis != null)
								fisName = fis.getFisName();
							
							Department dept = Department.getDepartment(wA.getDepartmentId());
							String deptName = "NA";
							if(dept != null)
								deptName = dept.getDepartmentName();
							%>
							<tr>
								<td width="10%">
									<%=college.getCollegeName() %>
								</td>
								<td width="10%">
									<%=fisName %>
								</td>
								<td width="10%">
									<%=deptName %>
								</td>
								<td width="10%">
									<a href="#.jsp" onclick="showEditFieldsOfWoreksAt(<%=wA.getId() %>);">
										Edit
									</a>									
								</td>
							</tr>
							<%
						}//end while loop
					%>
					<tr>
						<td colspan="4">
							<div id="newWorksAtDiv"></div>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<div id="editWorksAtDiv"></div>
						</td>
					</tr>
				</table>
			</fieldset>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<fieldset>
				<legend>3. Education Information</legend>
				<%
					List<EducationInformation> eduInfoList = EducationInformation.getAllEducationInformationForEmployee(emp.getId());
					Iterator<EducationInformation> eduInfoItr = eduInfoList.iterator();
				%>				
				<table border="1" width="100%" id="educationGrid">
						<tr>
							<td colspan="5" align="right">
								<a href="#.jsp" onclick="showNewEducationInformationForm(<%=employeeRecordId %>);">
										Add new education information
									</a>
							</td>
						</tr>					
						<tr>
							<th style="background: #cccccc; color: black;">Name of Institution</th>
							<th style="background: #cccccc; color: black;">Field of Study</th>
							<th style="background: #cccccc; color: black;">Education Level</th>
							<th style="background: #cccccc; color: black;">Date of Award</th>
							<th style="background: #cccccc; color: black;">Edit</th>							
						</tr>
						<%
							while(eduInfoItr.hasNext()){
								EducationInformation edu = eduInfoItr.next();
								FieldOfStudy fStudy = FieldOfStudy.getFieldOfStudy(edu.getFieldOfStudyId());								
						%>					
						<tr>
							<td><%=edu.getNameOfInistitution() %></td>
							<td><%=fStudy.getFieldOfStudy() %></td>
							<td><%=edu.getEducationLevel() %></td>
							<td><%=edu.getDateOfAward() %></td>
							<td>
									<a href="#.jsp" onclick="showEditFieldsOfEducationInformation(<%=edu.getId() %>);">
										Edit
									</a>									
							</td>							
						</tr>					
						<%
							}//end while loop
						%>
					<tr>
						<td colspan="5">
							<div id="newEducationInfoDiv"></div>
						</td>
					</tr>
					<tr>
						<td colspan="5">
							<div id="editEducationInfoDiv"></div>
						</td>
					</tr>
				</table>
			</fieldset></td>
	</tr>
	<tr>
		<td colspan="2">
			<fieldset>
				<legend>4. Experience/Service Information</legend>
				<%
					List<Experience> expList = Experience.getAllExperiencesOfEmployee(emp.getId());
					Iterator<Experience> expItr = expList.iterator();
				%>
				<table border="1" width="100%" id="experienceGrid">
						<tr>
							<td colspan="5" align="right">
								<a href="#.jsp" onclick="showNewExperienceInformationForm(<%=employeeRecordId %>);">
										Add new Experience info
									</a>
							</td>
						</tr>
						<tr>
							<th style="background: #cccccc; color: black;">Job</th>
							<th style="background: #cccccc; color: black;">Starting From</th>
							<th style="background: #cccccc; color: black;">Upto</th>
							<th style="background: #cccccc; color: black;">Place of Work</th>
							<th width="10%" style="background: #cccccc; color: black;">Edit</th>
						</tr>					
						<%
							while(expItr.hasNext()){
								Experience ex = expItr.next();
								//Job job = Job.getJob(ex.getJobId());								
						%>					
						<tr>
							<td width="20%">
								<%=ex.getJobId() %>
							</td>
							<td>	
								<%=ex.getStartingFrom() %>							
							</td>
							<td>	
								<%=ex.getUpto() %>							
							</td>
							<td>	
								<%=ex.getPlaceWorked() %>							
							</td>
							<td width="30%">
									<a href="#.jsp" onclick="showEditFieldsOfExperienceInformation(<%=ex.getId() %>);">
										Edit
									</a>									
							</td>
						</tr>					
						<%
							}//end while loop
						%>	
					<tr>
					<td colspan="5">
							<div id="newExperienceInfoDiv"></div>
						</td>
					</tr>
					<tr>
						<td colspan="5">
							<div id="editExperienceInfoDiv"></div>
						</td>
					</tr>				
				</table>
			</fieldset>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<fieldset>
				<legend>5. Training Information</legend>
				<%
					List<TrainingInformation> trainingInfoList = TrainingInformation.getAllTrainingInformationsForEmployee(emp.getId());
					Iterator<TrainingInformation> trainingInfoItr = trainingInfoList.iterator();
				%>
				<table border="1" width="100%" id="trainingGrid">
						<tr>
							<td align="right" colspan="5">
								<a href="#.jsp" onclick="showNewTrainingInformationForm(<%=employeeRecordId %>);">
										Add new Training info
									</a>
							</td>
						</tr>					
						<tr>
							<th style="background: #cccccc; color: black;">Training	Taken</th>
							<th style="background: #cccccc; color: black;">Place of Training</th>
							<th style="background: #cccccc; color: black;">Duration</th>
							<th style="background: #cccccc; color: black;">Year of Training</th>
							<th style="background: #cccccc; color: black;">Edit</th>
						</tr>					
						<%
							while(trainingInfoItr.hasNext()){
								TrainingInformation tInfo = trainingInfoItr.next();								
						%>
						<tr>
							<td><%=tInfo.getTrainingTaken() %></td>
							<td><%=tInfo.getPlaceOfTraining() %></td>
							<td><%=tInfo.getDuration() %></td>
							<td><%=tInfo.getYearOfTraining() %></td>
							<td width="30%">
									<a href="#.jsp" onclick="showEditFieldsOfTrainingInformation(<%=tInfo.getId() %>);">
										Edit
									</a>									
							</td>
						</tr>
						<%
							}//end while loop
						%>
						<tr>
					<td colspan="5">
							<div id="newTrainingInfoDiv"></div>
						</td>
					</tr>
					<tr>
						<td colspan="5">
							<div id="editTrainingInfoDiv"></div>
						</td>
					</tr>
				</table>
			</fieldset>
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<fieldset>
				<%
					List<Address> addressList = Address.getAllAddressesForEmployee(emp.getId());
					Iterator<Address> addressItr = addressList.iterator();					
				%>
				<legend>6. Address</legend>
				<table border="1" width="100%">
					<tr>
						<td align="right" colspan="8">
							<a href="#.jsp" onclick="showNewAddressForm(<%=employeeRecordId %>);">
										Add new address
									</a>
						</td>
					</tr>
					<tr>
						<th style="background: #cccccc; color: black;">Kefele Ketema</th>
						<th style="background: #cccccc; color: black;">Woreda</th>
						<th style="background: #cccccc; color: black;">Kebele</th>
						<th style="background: #cccccc; color: black;">House Number</th>
						<th style="background: #cccccc; color: black;">Telephone House</th>
						<th style="background: #cccccc; color: black;">Telephone Mobile</th>
						<th style="background: #cccccc; color: black;">Email</th>
						<th style="background: #cccccc; color: black;">Edit</th>
					</tr>
					<%
						while(addressItr.hasNext()){
							Address ad = addressItr.next();
							KefeleKetema k = KefeleKetema.getKefeleKetema(ad.getKefeleKetemaId());							
							%>
							<tr>
								<td><%=k.getKefeleKetema() %></td>
								<td><%=ad.getWoreda() %></td>
								<td><%=ad.getKebele() %></td>
								<td><%=ad.getHouseNumber() %></td>
								<td><%=ad.getTelephoneHouse() %></td>
								<td><%=ad.getTelephoneMobile() %></td>
								<td><%=ad.getEmail() %></td>
								<td width="15%">
									<a href="#.jsp" onclick="showEditFieldsOfAddress(<%=ad.getId() %>);">
										Edit
									</a>									
								</td>
							</tr>
							<%
						}//end while loop
					%>	
					<tr>
					<td colspan="8">
							<div id="newAddressDiv"></div>
						</td>
					</tr>
					<tr>
						<td colspan="8">
							<div id="editAddressDiv"></div>
						</td>
					</tr>				
				</table>
			</fieldset></td>
	</tr>
	<tr>
		<td colspan="2">
			<fieldset>
				<%
					List<Dependant> dependantList = Dependant.getAllDependantsForEmployee(emp.getId());
					Iterator<Dependant> dependantItr = dependantList.iterator();					
				%>
				<legend>7. Dependant</legend>
				<table border="1" width="100%">
					<tr>
						<td align="right" colspan="8">
							<a href="#.jsp" onclick="showNewDependantForm(<%=employeeRecordId %>);">
										Add new dependant
							</a>
						</td>
					</tr>
					<tr>
						<th style="background: #cccccc; color: black;">Full Name</th>
						<th style="background: #cccccc; color: black;">City</th>
						<th style="background: #cccccc; color: black;">Kefele ketema</th>
						<th style="background: #cccccc; color: black;">Woreda</th>
						<th style="background: #cccccc; color: black;">Kebele</th>
						<th style="background: #cccccc; color: black;">House Number</th>
						<th style="background: #cccccc; color: black;">Mobile Number</th>
						<th style="background: #cccccc; color: black;">Edit</th>						
					</tr>
					<%
						if(Dependant.doesThisEmployeeHasDependants(emp.getId())){
							while(dependantItr.hasNext()){
								Dependant dep = dependantItr.next();
								KefeleKetema k = KefeleKetema.getKefeleKetema(dep.getKefeleKetemaId());							
								%>
								<tr>
									<td><%=dep.getFirstName()%> <%=dep.getFatherName() %> <%=dep.getGrandFatherName() %></td>
									<td><%=dep.getCity() %></td>
									<td><%=k.getKefeleKetema() %></td>
									<td><%=dep.getWoreda() %></td>
									<td><%=dep.getKebele() %></td>
									<td><%=dep.getHouseNumber() %></td>
									<td><%=dep.getMobileNumber() %></td>
									<td width="15%">
										<a href="#.jsp" onclick="showEditFieldsOfDependant(<%=dep.getId() %>);">
											Edit
										</a>									
									</td>
								</tr>
								<tr>
								<td colspan="8">
										<div id="newDependantDiv"></div>
									</td>
								</tr>
								<tr>
									<td colspan="8">
										<div id="editDependantDiv"></div>
									</td>
								</tr>
								<%
							}//end while loop
						}else{
							%>
							<tr>
								<td colspan="8">
									<p class="msg info">No dependants registered!</p>
								</td>
							</tr>
							<tr>
								<td colspan="8">
										<div id="newDependantDiv"></div>
									</td>
								</tr>
								<tr>
									<td colspan="8">
										<div id="editDependantDiv"></div>
									</td>
								</tr>
							<%
						}
					%>					
				</table>
			</fieldset></td>
	</tr>
	<tr>
		<td colspan="2">
			<fieldset>
				<%
					EmergencyContact emergencyContact = EmergencyContact.getEmergencyContactForEmployee(emp.getId());
								
				%>
				<legend>8. Emergency Contact</legend>
				<table border="1" width="100%">
					<tr>
						<td align="right" colspan="8">
							<a href="#.jsp" onclick="showNewEmergencyContactForm(<%=employeeRecordId %>);">
										Add new emergency contact
							</a>
						</td>
					</tr>
					<tr>
						<th style="background: #cccccc; color: black;">First Name</th>
						<th style="background: #cccccc; color: black;">Father Name</th>
						<th style="background: #cccccc; color: black;">Relationship</th>
						<th style="background: #cccccc; color: black;">Home Telephone</th>
						<th style="background: #cccccc; color: black;">Mobile</th>
						<th style="background: #cccccc; color: black;">Work Telephone</th>
						<th style="background: #cccccc; color: black;">Edit</th>						
					</tr>
					<%
						if(EmergencyContact.doesThisEmployeeHasEmergencyContact(emp.getId())){														
								%>
								<tr>
									<td><%=emergencyContact.getFirstName() %></td>
									<td><%=emergencyContact.getLastName() %></td>
									<td><%=emergencyContact.getRelationship() %></td>
									<td><%=emergencyContact.getHomeTelephone() %></td>
									<td><%=emergencyContact.getMobile() %></td>
									<td><%=emergencyContact.getWorkTelephone() %></td>
									<td width="15%">
										<a href="#.jsp" onclick="showEditFieldsOfEmergencyContact(<%=emergencyContact.getId() %>);">
											Edit
										</a>									
									</td>
								</tr>
								<tr>
								<td colspan="8">
										<div id="newEmergencyContactDiv"></div>
									</td>
								</tr>
								<tr>
									<td colspan="8">
										<div id="editEmergencyContactDiv"></div>
									</td>
								</tr>
								<%							
						}else{
							%>
							<tr>
								<td colspan="8">
									<p class="msg info">No emergency contact registered!</p>
								</td>
							</tr>
							<tr>
								<td colspan="8">
										<div id="newEmergencyContactDiv"></div>
									</td>
								</tr>
								<tr>
									<td colspan="8">
										<div id="editEmergencyContactDiv"></div>
									</td>
								</tr>
							<%
						}
					%>					
				</table>
			</fieldset></td>
	</tr>
</table>