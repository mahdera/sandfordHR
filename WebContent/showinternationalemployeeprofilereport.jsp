<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	Employee employee = Employee.getEmployee(employeeId);
%>
<div id="printReportDiv">
<form id="personalDataForm">
			<table border="0" width="100%" style="border: 1px solid #2779aa" rules="all">
				<tr>
					<td colspan="2" align="center">
						<img src="design/juticeogo.PNG" border="0"/>
					</td>
				</tr>
				<tr>
					<td valign="top" colspan="2">
						<strong>							
							<p style="text-align:center">
							<font size="4"><label id="lbljusticeprofessionalassociationemployeeinformationregistrationform">
							Sandford International School<br/>
							International Staff Personal Data Form</label></font>					
							</p>
						</strong>
					</td>					
				</tr>
				<tr style="background:#000000;color:#ffffff">
					<td colspan="2">
						INSTRUCTIONS<br/>
						Please answer each question clearly and completely. Read carefully and follow all directions.
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table border="1" width="100%" style="border: 1px solid #2779aa" rules="all">
							<%
								EmployeePhoto employeePhoto = null;
								employeePhoto = EmployeePhoto.getEmployeePhotoForEmployee(employeeId);
								if(employeePhoto != null){
							%>
							<tr>
								<td colspan="4" align="right">
									<img src="employee_photo/<%=employeePhoto.getFileName() %>" border="0" width="10%"/>
								</td>
							</tr>
							<%
								}
							%>
							<tr style="background:#eee">
								<td>1. Family name (grand father's name)</td>
								<td>First name</td>
								<td>Middle name</td>
								<td>Maiden name, if any</td>
							</tr>
							<tr style="background:#eee">
								<td><%=employee.getLastName() %></td>
								<td><%=employee.getFirstName() %></td>
								<td><%=employee.getMiddleName() %></td>
								<td><%=employee.getMaidenName() %></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table border="0" width="100%" style="border: 1px solid #2779aa" rules="all">
							<tr style="background:#eee">
								<td>2. Date of birth</td>
								<td>3. Place of birth</td>
								<td>4. Nationality (ies) at birth</td>
								<td>5. Present nationality (ies)</td>
								<td>6. Sex</td>
							</tr>
							<tr style="background:#eee">
								<td><%=employee.getDateOfBirth() %></td>
								<td><%=employee.getPlaceOfBirth() %></td>
								<td><%=employee.getNationalityAtBirth() %></td>
								<td><%=employee.getPresentNationality() %></td>
								<td>
									<%=employee.getSex() %>									
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table border="0" width="100%" style="border: 1px solid #2779aa" rules="all">
							<tr style="background:#eee">
								<td>7. Marital Status</td>
								<%
									String maritalStatus = employee.getMaritalStatus();									
								%>
								<td>
									<%
										if(maritalStatus.equalsIgnoreCase("married")){
									%>
											Married <input type="radio" name="radmaritalstatus" id="radmarried" value="Married" checked="checked" disabled="disabled"/>
									<%
										}else{
									%>
											Married <input type="radio" name="radmaritalstatus" id="radmarried" value="Married" disabled="disabled"/>
									<%
										}
									%>
								</td>
								<td>
									<%
										if(maritalStatus.equalsIgnoreCase("separated")){
									%>
											Separated <input type="radio" name="radmaritalstatus" id="radseparated" value="Separated" checked="checked" disabled="disabled"/>
									<%
										}else{
									%>
											Separated <input type="radio" name="radmaritalstatus" id="radseparated" value="Separated" disabled="disabled"/>
									<%
										}
									%>
								</td>
								<td>
									<%
										if(maritalStatus.equalsIgnoreCase("widow(er)")){
									%>
											Widow(er) <input type="radio" name="radmaritalstatus" id="radwidower" value="Widow(er)" checked="checked" disabled="disabled"/>
									<%
										}else{
									%>
											Widow(er) <input type="radio" name="radmaritalstatus" id="radwidower" value="Widow(er)" disabled="disabled"/>
									<%
										}
									%>
								</td>
								<td>
									<%
										if(maritalStatus.equalsIgnoreCase("divorced")){
									%>
											Divorced <input type="radio" name="radmaritalstatus" id="raddivorced" value="Divorced" checked="checked" disabled="disabled"/>
									<%
										}else{
									%>
											Divorced <input type="radio" name="radmaritalstatus" id="raddivorced" value="Divorced" disabled="disabled"/>
									<%
										}
									%>
								</td>
								<td>
									<%
										if(maritalStatus.equalsIgnoreCase("single")){
									%>
											Single <input type="radio" name="radmaritalstatus" id="radsingle" value="Single" checked="checked" disabled="disabled"/>
									<%
										}else{
									%>
											Single <input type="radio" name="radmaritalstatus" id="radsingle" value="Single" disabled="disabled"/>
									<%
										}
									%>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table border="0" width="100%" style="border: 1px solid #2779aa" rules="all">
							<tr style="background:#eee">
								<td>8. Permanent address</td>
								<td>9. Present address (if different)</td>
							</tr>
							<tr style="background:#eee">
								<%
									Address employeeAddress = Address.getAddressForEmployee(employee.getId());
								%>
								<td><%=employeeAddress.getPermanentAddress() %></td>
								<td><%=employeeAddress.getPresentAddress() %></td>
							</tr>
							<tr style="background:#eee">
								<td>Telephone No.</td>
								<td>Telephone/Fax No.</td>
							</tr>
							<tr style="background:#eee">
								<td><%=employeeAddress.getTelephoneNumber() %></td>
								<td><%=employeeAddress.getTelephoneFaxNumber() %></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table border="0" width="100%" style="border: 1px solid #2779aa" rules="all">
							<tr style="background:#eeeeee">
								<td colspan="2">						
										<table border="0" width="100%" id="dependentsGrid" style="border: 1px solid #2779aa" rules="all">
											<thead>								
											<tr>								
												<th style="background:#cccccc;color:black;">Name</th>
												<th style="background:#cccccc;color:black;">Date of Birth (yyyy-mm-dd)</th>
												<th style="background:#cccccc;color:black;">Relationship</th>												
											</tr>
											</thead>
											<tbody>
												<%
													List<Dependant> dependantList = Dependant.getAllDependantsForEmployee(employee.getId());
													Iterator<Dependant> dependantItr = dependantList.iterator();
													
													while(dependantItr.hasNext()){
														Dependant dependant = dependantItr.next();
												%>
														<tr>										
															<td><%=dependant.getName() %></td>
															<td><%=dependant.getDateOfBirth() %></td>
															<td>	<%=dependant.getRelationship() %></td>																							
														</tr>
												<%
													}//end while loop
												%>																
											</tbody>
										</table>						
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						11. What is your preferred field of work?<br/>
						<%=employee.getPreferredFieldOfWork() %>
					</td>
				</tr>				
				<tr style="background:#eee">
					<td colspan="2">
						12. EDUCATIONAL. Give full details - N.B. Please give exact titles of degrees in original language.
						<br/>
						A. UNIVERSITY OR EQUIVALENT  Please do not translate or equate to other degrees.						
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						<table border="0" width="100%" style="border: 1px solid #2779aa" rules="all">
							<tr style="background:#eeeeee">
								<td colspan="2">	
										<table border="0" width="100%" id="educationalGrid" style="border: 1px solid #2779aa" rules="all">
											<thead>								
											<tr>								
												<th style="background:#cccccc;color:black;">NAME. PLACE AND COUNTRY</th>
												<th style="background:#cccccc;color:black;">ATTENDED FROM (Mo/Year)</th>
												<th style="background:#cccccc;color:black;">ATTENDED TO (Mo/Year)</th>
												<th style="background:#cccccc;color:black;">DEGREES and ACADEMIC DISTINCTIONS OBTAINED</th>
												<th style="background:#cccccc;color:black;">MAIN COURSE OF STUDY</th>												
											</tr>
											</thead>
											<tbody>
												<%
													List<EducationInformation> educationInformationList = EducationInformation.getAllEducationInformationsForEmployee(employee.getId());
													Iterator<EducationInformation> educationInformationItr = educationInformationList.iterator();
													
													while(educationInformationItr.hasNext()){
														EducationInformation educationInformation = educationInformationItr.next();
												%>
															<tr>										
																<td>	<%=educationInformation.getNamePlaceCountry() %></td>
																<td><%=educationInformation.getAttendedFrom() %></td>
																<td>	<%=educationInformation.getAttendedTo() %></td>
																<td>	<%=educationInformation.getDegreesAcademicDistinctions() %></td>
																<td>	<%=educationInformation.getMainCourseOfStudy() %></td>																							
															</tr>	
												<%
													}//end while loop
												%>															
											</tbody>
										</table>						
								</td>
							</tr>
						</table>	
					</td>
				</tr>
				<tr>
					<td colspan="2">
						B. SCHOOLS OR OTHER FORMAL TRAININGS OR EDUCATION FROM AGE 14 (e.g. high school, technical school or apprenticeship)
					</td>					
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						<table border="0" width="100%" style="border: 1px solid #2779aa" rules="all">
							<tr style="background:#eeeeee">
								<td colspan="2">										
										<table border="0" width="100%" id="schoolsGrid" style="border: 1px solid #2779aa" rules="all">
											<thead>								
											<tr>								
												<th style="background:#cccccc;color:black;">NAME. PLACE AND COUNTRY</th>
												<th style="background:#cccccc;color:black;">TYPE</th>
												<th style="background:#cccccc;color:black;">ATTENDED FROM (Mo/Year)</th>
												<th style="background:#cccccc;color:black;">ATTENDED TO (Mo/Year)</th>
												<th style="background:#cccccc;color:black;">CERTIFICATES OR DIPLOMAS OBTAINED</th>																					
											</tr>
											</thead>
											<tbody>
												<%
													List<SchoolFormalTrainings> schoolFormalTrainingsList = SchoolFormalTrainings.getAllSchoolFormalTrainingsForEmployee(employee.getId());
													Iterator<SchoolFormalTrainings> schoolFormalTrainingsItr = schoolFormalTrainingsList.iterator();
													
													while(schoolFormalTrainingsItr.hasNext()){
														SchoolFormalTrainings schoolFormalTrainings = schoolFormalTrainingsItr.next();
												%>
														<tr>										
															<td><%=schoolFormalTrainings.getNamePlaceCountry() %></td>
															<td><%=schoolFormalTrainings.getType() %></td>
															<td>	<%=schoolFormalTrainings.getAttendedFrom() %></td>
															<td>	<%=schoolFormalTrainings.getAttendedTo() %></td>													
															<td><%=schoolFormalTrainings.getCertificateDiplomaObtained() %></td>																							
														</tr>
												<%
													}//end while loop
												%>																
											</tbody>
										</table>						
								</td>
							</tr>
						</table>	
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						13. LIST PROFESSIONAL SOCIETIES AND ACTIVITIES IN CIVIC, PUBLIC OR INTERNATIONAL AFFAIRS<br/>
						<%=employee.getListOfProfessionalActivities() %>
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						14. LIST ANY SIGNIFICANT PUBLICATIONS YOU HAVE WRITTEN<br/>
						<%=employee.getListOfPublications() %>
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						15. EMPLOYMENT RECORD: Starting with your present post, list in reverse order
						every employment you have had. User a separate block for each case.
						Include also service in the armed forces and note any period during which you were not
						gainfully employed. Give both gross and net salaries per annum for your last or present post.<br/>
						<%=employee.getEmploymentRecord() %>
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						A. PRESENT POST (LAST POST, IF NOT PRESENTLY IN EMPLOYMENT)
					</td>
				</tr>
				<%
					PresentPost presentPost = PresentPost.getPresentPostForEmployee(employee.getId());
				%>
				<tr style="background:#eee">
					<td colspan="2">
						<table border="0" width="100%" style="border: 1px solid #2779aa" rules="all">
							<tr>
								<td>FROM</td>
								<td>TO</td>
								<td colspan="2">SALARY PER ANNUM</td>
								<td>EXACT TITLE OF YOUR POST</td>
							</tr>							
							<tr>
								<td>Month/Year<br/><%=presentPost.getPresentPostFrom() %></td>
								<td>Month/Year<br/><%=presentPost.getPresentPostTo() %></td>
								<td>
									Starting<br/>
									<%=presentPost.getStartingSalary() %>
								</td>
								<td>
									Final<br/>
									<%=presentPost.getFinalSalary() %>
								</td>
								<td>
									<br/>
									<%=presentPost.getExactTitleOfPost() %>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									NAME OF EMPLOYER:<br/>
									<%=presentPost.getNameOfEmployer() %>
								</td>
								<td colspan="3">
									TYPE OF BUSINESS:<br/>
									<%=presentPost.getTypeOfBusiness() %>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									ADDRESS OF EMPLOYER:<br/>
									<%=presentPost.getAddressOfEmployer() %>
								</td>
								<td colspan="2">
									NAME OF SUPERVISOR:<br/>
									<%=presentPost.getNameOfSupervisor() %>
								</td>
							</tr>
							<tr>
								<td colspan="5">
									REASON FOR LEAVING:<br/>
									<%=presentPost.getReasonForLeaving() %>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						B. PREVIOUS POSTS (IN REVERSE ORDER)
					</td>
				</tr>
				<%
					List<PastPost> pastPostList = PastPost.getAllPastPostsForEmployee(employee.getId());
					Iterator<PastPost> pastPostItr = pastPostList.iterator();
					
					while(pastPostItr.hasNext()){
						PastPost pastPost = pastPostItr.next();
				%>
				<tr style="background:#eee">
					<td colspan="2">						
						<table border="0" width="100%" style="border: 1px solid #2779aa" rules="all">
							<tr>
								<td>FROM</td>
								<td>TO</td>
								<td colspan="2">SALARY PER ANNUM</td>
								<td>EXACT TITLE OF YOUR POST</td>
							</tr>							
							<tr>
								<td>Month/Year<br/><%=pastPost.getPastPostFrom() %></td>
								<td>Month/Year<br/><%=pastPost.getPastPostTo() %></td>
								<td>
									Starting<br/>
									<%=pastPost.getStartingSalary() %>
								</td>
								<td>
									Final<br/>
									<%=pastPost.getFinalSalary() %>
								</td>
								<td>
									<br/>
									<%=pastPost.getExactTitleOfPost() %>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									NAME OF EMPLOYER:<br/>
									<%=pastPost.getNameOfEmployer() %>
								</td>
								<td colspan="3">
									TYPE OF BUSINESS:<br/>
									<%=pastPost.getTypeOfBusiness() %>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									ADDRESS OF EMPLOYER:<br/>
									<%=pastPost.getAddressOfEmployer() %>
								</td>
								<td colspan="2">
									NAME OF SUPERVISOR:<br/>
									<%=pastPost.getNameOfSupervisor() %>
								</td>
							</tr>
							<tr>
								<td colspan="5">
									REASON FOR LEAVING:<br/>
									<%=pastPost.getReasonForLeaving() %>
								</td>
							</tr>
						</table>						
					</td>
				</tr>
				<%
					}//end while loop
				%>
				<tr style="background:#eee">
					<td colspan="2">
						<div id="addedPreviousPostDiv"></div>
					</td>
				</tr>				
				<tr style="background:#eee">
					<td colspan="2">
						16. HAVE YOU ANY OBJECTIONS TO OUR MAKING INQUIRIES OF YOUR PRESENT EMPLOYER?
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<%
							if(employee.isObjectContactingPresentEmployer()){
						%>
								YES <input type="radio" name="radobjection" id="radobjectionyes" value="yes" checked="checked" disabled="disabled"/>
						<%
							}else{
						%>
								YES <input type="radio" name="radobjection" id="radobjectionyes" value="yes" disabled="disabled"/>
						<%
							}
						%>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<%
							if(!employee.isObjectContactingPresentEmployer()){
						%>
								NO <input type="radio" name="radobjection" id="radobjectionno" value="no" checked="checked" disabled="disabled"/>
						<%
							}else{
						%>
								NO <input type="radio" name="radobjection" id="radobjectionno" value="no" disabled="disabled"/>
						<%
							}
						%>
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						17. REFERENCES: List three persons, not related to you, who are familiar with
						your character and qualifications. Do not repeat names of supervisors listed
						under item 15.
						<%
							List<Reference> referenceList = Reference.getAllReferencesForEmployee(employee.getId());
							Iterator<Reference> referenceItr = null;
							if(referenceList != null)
							 	referenceItr = referenceList.iterator();							
						%>
						<table border="0" width="100%" style="border: 1px solid #2779aa" rules="all">
							<tr>
								<th style="background:#cccccc;color:black;">FULL NAME</th>
								<th style="background:#cccccc;color:black;">FULL ADDRESS</th>
								<th style="background:#cccccc;color:black;">BUSINESS OR OCCUPATION</th>
							</tr>
							<%
								while(referenceItr.hasNext()){
									Reference reference = referenceItr.next();
							%>
							<tr>
								<td><%=reference.getFullName() %></td>
								<td><%=reference.getFullAddress() %></td>
								<td><%=reference.getBusinessOrOccupation() %></td>
							</tr>
							<%
								}//end while loop
							%>							
						</table>
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						18. HAVE YOU EVER BEEN ARRESTED, INDICTED, OR SUMMONED INTO COURT AS A DEFENDANT IN A CRIMINAL PROCEEDING, OR 
						CONVICTED, FINED OR IMPRISONED FOR THE VIOLATION OF ANY LAW (excluding minor traffic violations)?
						<%
							if(employee.isBeen_arrested()){
						%>
								<input type="radio" name="radcriminalinformation" id="radcriminalinfoyes" value="yes" checked="checked" disabled="disabled"/> YES &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<%
							}else{
						%>
								<input type="radio" name="radcriminalinformation" id="radcriminalinfoyes" value="yes" disabled="disabled"/> YES &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<%
							}
						
							if(!employee.isBeen_arrested()){
						%>
								<input type="radio" name="radcriminalinformation" id="radcriminalinfono" value="no" checked="checked" disabled="disabled"/> NO
						<%
							}else{
						%>
								<input type="radio" name="radcriminalinformation" id="radcriminalinfono" value="no" disabled="disabled"/> NO
						<%
							}
						%>
					</td>
				</tr>				
				<tr style="background:#000000;color:#ffffff">
					<td colspan="2">
						EMPLOYMENT TYPE DESCRIPTION<br/>
						In the following section, you are required to fill the employement details for the international staff.						
					</td>
				</tr>
				<%
					EmployeeType employeeTypeObj = EmployeeType.getEmployeeTypeForEmployee(employee.getId());
				%>
				<tr>
					<td colspan="2">
						<table border="0" width="100%" style="border: 1px solid #2779aa" rules="all">
							<tr style="background:#eee">
								<td width="20%">Employee Type:</td>
								<td>
									<%=employeeTypeObj.getEmpType() %>									
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<%
					if(employeeTypeObj.getEmpType().equalsIgnoreCase("regular contract holder")){
						EmployeeContractType employeeContractType = EmployeeContractType.getEmployeeContractTypeForEmployee(employee.getId());
				%>
						<tr>
							<td colspan="2">
								<div id="contractTypeDiv">
									<table border="0" width="100%" style="border: 1px solid #2779aa" rules="all">
										<tr style="background:#eee">
											<td width="20%">	Employee Contract Type:</td>
											<td>
												<%=employeeContractType.getContractType() %>												
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
				<%
					}
				%>
	</table>
</form>
</div>
<table border="0" width="100%">
	<tr>
		<td align="right">
			<a href="#.jsp" onclick="printDiv('printReportDiv')"><img src="images/printer.jpg" align="absmiddle"/> Print</a>
		</td>
	</tr>
</table>
<script type="text/javascript">
	$(document).ready(function(){
		$('#loadingDiv').hide();
	});//end document.ready function
</script>