<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	long empId = Long.parseLong(request.getParameter("empId"));	
	Employee emp = Employee.getEmployee(empId);
%>
<div id="printReportDiv">
<table border="1" width="100%" rules="rows,cols">
	<tr>
		<td colspan="2" align="center">
			<strong>Employee Profile</strong>
		</td>
	</tr>
	<tr>
		<td></td>
		<td align="right">
		<%
			EmployeePhoto ePhoto = EmployeePhoto.getEmployeePhotoFor(emp.getId());
			if(ePhoto == null){
		%>
				<img src="design/nophoto.gif" border="1" align="middle" width="15%" height="23%"/>
		<%
			}else{
		%>
				<img src="showimagenow.jsp?employeeId=<%=empId%>" width="15%" height="23%"/>
		<%
			}
		%>			
		</td>
	</tr>
	<tr>
		<td colspan="2">
			<fieldset>
				<legend>1. Basic Information</legend>
				<table border="1" width="100%" rules="rows,cols">
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
			</fieldset></td>
	</tr>
	<tr>
		<td colspan="2">
			<fieldset>
				<legend>2. Works At</legend>
				<%
					List<WorksAt> worksAtList = WorksAt.getAllWorksAtForEmployee(emp.getId());
					Iterator<WorksAt> worksAtItr = worksAtList.iterator();
				%>
				<table border="1" width="100%" rules="rows,cols">
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
							</tr>
							<%
						}//end while loop
					%>
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
				<table border="1" width="100%" id="educationGrid" rules="rows,cols">					
						<tr>
							<th style="background: #cccccc; color: black;">Name of Institution</th>
							<th style="background: #cccccc; color: black;">Field of Study</th>
							<th style="background: #cccccc; color: black;">Education Level</th>
							<th style="background: #cccccc; color: black;">Date of Award</th>
						</tr>
						<%
							while(eduInfoItr.hasNext()){
								EducationInformation edu = eduInfoItr.next();
								FieldOfStudy fStudy = FieldOfStudy.getFieldOfStudy(edu.getFieldOfStudyId());								
						%>					
						<tr>
							<td width="50%"><%=edu.getNameOfInistitution() %></td>
							<td><%=fStudy.getFieldOfStudy() %></td>
							<td><%=edu.getEducationLevel() %></td>
							<td><%=edu.getDateOfAward() %></td>
						</tr>					
						<%
							}//end while loop
						%>
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
				<table border="1" width="100%" id="experienceGrid" rules="rows,cols">
					
						<tr>
							<th style="background: #cccccc; color: black;">Job</th>
							<th style="background: #cccccc; color: black;">Starting From</th>
							<th style="background: #cccccc; color: black;">Upto</th>
							<th style="background: #cccccc; color: black;">Place of Work</th>
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
						</tr>					
						<%
							}//end while loop
						%>					
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
				<table border="1" width="100%" id="trainingGrid" rules="rows,cols">					
						<tr>
							<th style="background: #cccccc; color: black;">Training Taken</th>
							<th style="background: #cccccc; color: black;">Place of Training</th>
							<th style="background: #cccccc; color: black;">Duration</th>
							<th style="background: #cccccc; color: black;">Year of Training</th>
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
						</tr>
						<%
							}//end while loop
						%>
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
				<table border="1" width="100%" rules="rows,cols">
					<tr>
						<th style="background: #cccccc; color: black;">Kefele Ketema</th>
						<th style="background: #cccccc; color: black;">Woreda</th>
						<th style="background: #cccccc; color: black;">Kebele</th>
						<th style="background: #cccccc; color: black;">House Number</th>
						<th style="background: #cccccc; color: black;">Telephone House</th>
						<th style="background: #cccccc; color: black;">Telephone Mobile</th>
						<th style="background: #cccccc; color: black;">Email</th>
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
							</tr>
							<%
						}//end while loop
					%>					
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
				<table border="1" width="100%" rules="rows,cols">
					<tr>
						<th style="background: #cccccc; color: black;">Full Name</th>
						<th style="background: #cccccc; color: black;">City</th>
						<th style="background: #cccccc; color: black;">Kefele ketema</th>
						<th style="background: #cccccc; color: black;">Woreda</th>
						<th style="background: #cccccc; color: black;">Kebele</th>
						<th style="background: #cccccc; color: black;">House Number</th>
						<th style="background: #cccccc; color: black;">Mobile Number</th>						
					</tr>
					<%
						if(Dependant.doesThisEmployeeHasDependants(emp.getId())){
							while(dependantItr.hasNext()){
								Dependant dep = dependantItr.next();
								KefeleKetema k = KefeleKetema.getKefeleKetema(dep.getKefeleKetemaId());							
								%>
								<tr>
									<td><%=dep.getFirstName() %> <%=dep.getFatherName() %> <%=dep.getGrandFatherName() %></td>
									<td><%=dep.getCity() %></td>
									<td><%=k.getKefeleKetema() %></td>
									<td><%=dep.getWoreda() %></td>
									<td><%=dep.getKebele() %></td>
									<td><%=dep.getHouseNumber() %></td>
									<td><%=dep.getMobileNumber() %></td>
								</tr>
								<%
							}//end while loop
						}else{
							%>
							<tr>
								<td colspan="7">
									<p class="msg info">No dependants registered!</p>
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
					List<Promotion> promotionList = Promotion.getAllPromotionForThisEmployee(empId);
					Iterator<Promotion> promotionItr = promotionList.iterator();					
				%>
				<legend>8. Promotions</legend>
				<table border="1" width="100%" rules="rows,cols">
					<tr>
						<th style="background: #cccccc; color: black;">Promoted From Division</th>
						<th style="background: #cccccc; color: black;">Promoted To Division</th>
						<th style="background: #cccccc; color: black;">Promoted From Department</th>
						<th style="background: #cccccc; color: black;">Promoted To Department</th>
						<th style="background: #cccccc; color: black;">Promotion Detail</th>
						<th style="background: #cccccc; color: black;">Promotion Date</th>										
					</tr>
					<%
						
							while(promotionItr.hasNext()){
								Promotion promotion = promotionItr.next();															
								%>
								<tr>
									<td><%=FacultyInstituteSchool.getFacultyInstituteSchool(promotion.getPromotedFromDivisionId()).getFisName() %></td>
									<td><%=FacultyInstituteSchool.getFacultyInstituteSchool(promotion.getPromotedToDivisionId()).getFisName() %></td>
									<td><%=Department.getDepartment(promotion.getPromotedFromDepartmentId()).getDepartmentName() %></td>
									<td><%=Department.getDepartment(promotion.getPromotedToDepartmentId()).getDepartmentName() %></td>
									<td><%=promotion.getPromotionDetail() %></td>
									<td><%=promotion.getPromotionDate() %></td>									
								</tr>
								<%
							}//end while loop						
					%>					
				</table>
			</fieldset></td>
	</tr>
	<tr>
		<td colspan="2">
			<fieldset>
				<%
					List<Transfer> transferList = Transfer.getAlltransferForThisEmployee(empId);
					Iterator<Transfer> transferItr = transferList.iterator();					
				%>
				<legend>9. Transfer</legend>
				<table border="1" width="100%" rules="rows,cols">
					<tr>
						<th style="background: #cccccc; color: black;">Transfered From Division</th>
						<th style="background: #cccccc; color: black;">Transfered To Division</th>
						<th style="background: #cccccc; color: black;">Transfered From Department</th>
						<th style="background: #cccccc; color: black;">Transfered To Department</th>
						<th style="background: #cccccc; color: black;">Transfered Detail</th>
						<th style="background: #cccccc; color: black;">Transfered Date</th>										
					</tr>
					<%
						
							while(transferItr.hasNext()){
								Transfer transfer = transferItr.next();															
								%>
								<tr>
									<td><%=FacultyInstituteSchool.getFacultyInstituteSchool(transfer.getTransferedFromDivisionId()).getFisName() %></td>
									<td><%=FacultyInstituteSchool.getFacultyInstituteSchool(transfer.getTransferedToDivisionId()).getFisName() %></td>
									<td><%=Department.getDepartment(transfer.getTransferedFromDepartmentId()).getDepartmentName() %></td>
									<td><%=Department.getDepartment(transfer.getTransferedToDepartmentId()).getDepartmentName() %></td>
									<td><%=transfer.getTransferDetail() %></td>
									<td><%=transfer.getTransferDate() %></td>									
								</tr>
								<%
							}//end while loop						
					%>					
				</table>
			</fieldset></td>
	</tr>
	<tr>
		<td colspan="2">
			<fieldset>
				<%
					List<DisciplineManagement> disciplineManagementList = DisciplineManagement.getAllDisciplineManagementForThisEmployee(empId);
					Iterator<DisciplineManagement> disciplineManagementItr = disciplineManagementList.iterator();					
				%>
				<legend>10. Disciplinary Actions</legend>
				<table border="1" width="100%" rules="rows,cols">
					<tr>
						<th style="background: #cccccc; color: black;">Disciplinary Action Name</th>
						<th style="background: #cccccc; color: black;">Disciplinary Action Date</th>
						<th style="background: #cccccc; color: black;">Description</th>																
					</tr>
					<%
						
							while(disciplineManagementItr.hasNext()){
								DisciplineManagement d = disciplineManagementItr.next();															
								%>
								<tr>
									<td><%=d.getDisciplineName() %></td>
									<td><%=d.getDisciplineDate() %></td>
									<td><%=d.getDescription() %></td>																		
								</tr>
								<%
							}//end while loop						
					%>					
				</table>
			</fieldset></td>
	</tr>
</table>
</div>
<table border="0" width="100%">
	<tr>
		<td align="right">
			<a href="#.jsp" onclick="printDiv('printReportDiv')"><img src="images/printer.jpg" align="absmiddle"/> Print</a>
		</td>
	</tr>
</table>