<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	Employee employee = Employee.getEmployee(employeeId);
%>
<form id="personalDataForm">
			<table border="1" width="100%">
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
						<table border="1" width="100%">
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
							<tr>
								<td colspan="4">
									<table border="1" width="100%">
										<tr style="background:#eee">
											<td align="right">Employee Identification Number (Auto Generated):</td>
											<td>
												<input type="text" name="txtemployeeidnumber" id="txtemployeeidnumber" style="width:98%;font-weight:bolder" disabled="disabled" value="<%=employee.getEmployeeIdNumber() %>"/>
											</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr style="background:#eee">
								<td>1. Family name (grand father's name)</td>
								<td>First name</td>
								<td>Middle name</td>
								<td>Maiden name, if any</td>
							</tr>
							<tr style="background:#eee">
								<td><input type="text" style="width:98%" name="txtfamilyname" id="txtfamilyname" value="<%=employee.getLastName() %>" disabled="disabled"/></td>
								<td><input type="text" style="width:98%" name="txtfirstname" id="txtfirstname" value="<%=employee.getFirstName() %>" disabled="disabled"/></td>
								<td><input type="text" style="width:98%" name="txtmiddlename" id="txtmiddlename" value="<%=employee.getMiddleName() %>" disabled="disabled"/></td>
								<td><input type="text" style="width:98%" name="txtmaidenname" id="txtmaidenname" value="<%=employee.getMaidenName() %>" disabled="disabled"/></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table border="1" width="100%">
							<tr style="background:#eee">
								<td>2. Date of birth</td>
								<td>3. Place of birth</td>
								<td>4. Nationality (ies) at birth</td>
								<td>5. Present nationality (ies)</td>
								<td>6. Sex</td>
							</tr>
							<tr style="background:#eee">
								<td><input type="text" style="width:80%" name="txtdateofbirth" id="txtdateofbirth" value="<%=employee.getDateOfBirth() %>" disabled="disabled"/></td>
								<td><input type="text" style="width:98%" name="txtplaceofbirth" id="txtplaceofbirth" value="<%=employee.getPlaceOfBirth() %>" disabled="disabled"/></td>
								<td><input type="text" style="width:98%" name="txtnationalityatbirth" id="txtnationalityatbirth" value="<%=employee.getNationalityAtBirth() %>" disabled="disabled"/></td>
								<td><input type="text" style="width:98%" name="txtpresentnationality" id="txtpresentnationality" value="<%=employee.getPresentNationality() %>" disabled="disabled"/></td>
								<td>
									<select name="slctsex" id="slctsex" style="width:100%" disabled="disabled">
										<%
											String employeeSex = employee.getSex();
											if(employeeSex.equalsIgnoreCase("female")){
										%>
												<option value="Female" selected="selected">Female</option>
												<option value="Male">Male</option>
										<%
											}else{
										%>
												<option value="Female">Female</option>
												<option value="Male" selected="selected">Male</option>
										<%
											}
										%>
									</select>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table border="1" width="100%">
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
						<table border="1" width="100%">
							<tr style="background:#eee">
								<td>8. Permanent address</td>
								<td>9. Present address (if different)</td>
							</tr>
							<tr style="background:#eee">
								<%
									Address employeeAddress = Address.getAddressForEmployee(employee.getId());
								%>
								<td><textarea style="width:100%" cols="10" rows="3" name="textareapermanentaddress" id="textareapermanentaddress" disabled="disabled"><%=employeeAddress.getPermanentAddress() %></textarea></td>
								<td><textarea style="width:100%" cols="10" rows="3" name="textareapresentaddress" id="textareapresentaddress" disabled="disabled"><%=employeeAddress.getPresentAddress() %></textarea></td>
							</tr>
							<tr style="background:#eee">
								<td>Telephone No.</td>
								<td>Telephone/Fax No.</td>
							</tr>
							<tr style="background:#eee">
								<td><input type="text" style="width:98%" name="txttelephonenumber" id="txttelephonenumber" value="<%=employeeAddress.getTelephoneNumber() %>" disabled="disabled"/></td>
								<td><input type="text" style="width:98%" name="txttelephonefax" id="txttelephonefax" value="<%=employeeAddress.getTelephoneFaxNumber() %>" disabled="disabled"/></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table border="1" width="100%">
							<tr style="background:#eeeeee">
								<td colspan="2">						
										<table border="1" width="100%" id="dependentsGrid">
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
															<td>	<input type="text" name="txtdependentname1" id="txtdependentname1" style="width:98%" value="<%=dependant.getName() %>" disabled="disabled"/></td>
															<td>	<input type="text" name="txtdependentdateofbirth1" id="txtdependentdateofbirth1" style="width:98%" value="<%=dependant.getDateOfBirth() %>" disabled="disabled"/></td>
															<td>	<input type="text" name="txtdependentrelationship1" id="txtdependentrelationship1" style="width:98%" value="<%=dependant.getRelationship() %>" disabled="disabled"/></td>																							
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
						<textarea cols="10" rows="3" style="width:100%" name="textareapreferredfieldofwork" id="textareapreferredfieldofwork" disabled="disabled"><%=employee.getPreferredFieldOfWork() %></textarea>
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
						<table border="1" width="100%">
							<tr style="background:#eeeeee">
								<td colspan="2">	
										<table border="1" width="100%" id="educationalGrid">
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
																<td>	<input type="text" name="txteducationnameplacecountry1" id="txteducationnameplacecountry1" style="width:98%" value="<%=educationInformation.getNamePlaceCountry() %>" disabled="disabled"/></td>
																<td>	<input type="text" name="txteducationattendedfrom1" id="txteducationattendedfrom1" style="width:98%" value="<%=educationInformation.getAttendedFrom() %>" disabled="disabled"/></td>
																<td>	<input type="text" name="txteducationattendedto1" id="txteducationattendedto1" style="width:98%" value="<%=educationInformation.getAttendedTo() %>" disabled="disabled"/></td>
																<td>	<input type="text" name="txteducationdegreesacademic1" id="txteducationdegreesacademic1" style="width:98%" value="<%=educationInformation.getDegreesAcademicDistinctions() %>" disabled="disabled"/></td>
																<td>	<input type="text" name="txteducationmaincourseofstudy1" id="txteducationmaincourseofstudy1" style="width:98%" value="<%=educationInformation.getMainCourseOfStudy() %>" disabled="disabled"/></td>																							
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
						<table border="1" width="100%">
							<tr style="background:#eeeeee">
								<td colspan="2">										
										<table border="1" width="100%" id="schoolsGrid">
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
															<td>	<input type="text" name="txtschoolnameplacecountry1" id="txtschoolnameplacecountry1" style="width:98%" value="<%=schoolFormalTrainings.getNamePlaceCountry() %>" disabled="disabled"/></td>
															<td>	<input type="text" name="txtschooltype1" id="txtschooltype1" style="width:98%" value="<%=schoolFormalTrainings.getType() %>" disabled="disabled"/></td>
															<td>	<input type="text" name="txtschoolattendedfrom1" id="txtschoolattendedfrom1" style="width:98%" value="<%=schoolFormalTrainings.getAttendedFrom() %>" disabled="disabled"/></td>
															<td>	<input type="text" name="txtschoolattendedto1" id="txtschoolattendedto1" style="width:98%" value="<%=schoolFormalTrainings.getAttendedTo() %>" disabled="disabled"/></td>													
															<td>	<input type="text" name="txtschoolcertificatesordiplomasobtained1" id="txtschoolcertificatesordiplomasobtained1" style="width:98%" value="<%=schoolFormalTrainings.getCertificateDiplomaObtained() %>" disabled="disabled"/></td>																							
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
						<textarea cols="10" rows="3" style="width:100%" name="textareaprofessionalsocietiesactivities" id="textareaprofessionalsocietiesactivities" disabled="disabled"><%=employee.getListOfProfessionalActivities() %></textarea>
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						14. LIST ANY SIGNIFICANT PUBLICATIONS YOU HAVE WRITTEN<br/>
						<textarea cols="10" rows="3" style="width:100%" name="textareapublications" id="textareapublications" disabled="disabled"><%=employee.getListOfPublications() %></textarea>
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						15. EMPLOYMENT RECORD: Starting with your present post, list in reverse order
						every employment you have had. User a separate block for each case.
						Include also service in the armed forces and note any period during which you were not
						gainfully employed. Give both gross and net salaries per annum for your last or present post.<br/>
						<textarea cols="10" rows="3" style="width:100%" name="textareaemploymentrecord" id="textareaemploymentrecord" disabled="disabled"><%=employee.getEmploymentRecord() %></textarea>
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
						<table border="1" width="100%">
							<tr>
								<td>FROM</td>
								<td>TO</td>
								<td colspan="2">SALARY PER ANNUM</td>
								<td>EXACT TITLE OF YOUR POST</td>
							</tr>							
							<tr>
								<td>Month/Year<br/><input type="text" style="width:98%" name="txtpresentpostfrom" id="txtpresentpostfrom" value="<%=presentPost.getPresentPostFrom() %>" disabled="disabled"/></td>
								<td>Month/Year<br/><input type="text" style="width:98%" name="txtpresentpostto" id="txtpresentpostto" value="<%=presentPost.getPresentPostTo() %>" disabled="disabled"/></td>
								<td>
									Starting<br/>
									<input type="text" style="width:98%" name="txtpresentpoststartingsalary" id="txtpresentpoststartingsalary" value="<%=presentPost.getStartingSalary() %>" disabled="disabled"/>
								</td>
								<td>
									Final<br/>
									<input type="text" style="width:98%" name="txtpresentpostfinalsalary" id="txtpresentpostfinalsalary" value="<%=presentPost.getFinalSalary() %>" disabled="disabled"/>
								</td>
								<td>
									<br/>
									<textarea cols="10" rows="3" style="width:100%" name="textareapresentpostexacttitleofpost" id="textareapresentpostexacttitleofpost" disabled="disabled"><%=presentPost.getExactTitleOfPost() %></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									NAME OF EMPLOYER:<br/>
									<input type="text" style="width:98%" name="txtpresentpostnameofemployer" id="txtpresentpostnameofemployer" value="<%=presentPost.getNameOfEmployer() %>" disabled="disabled"/>
								</td>
								<td colspan="3">
									TYPE OF BUSINESS:<br/>
									<input type="text" style="width:98%" name="txtpresentposttypeofbusiness" id="txtpresentposttypeofbusiness" value="<%=presentPost.getTypeOfBusiness() %>" disabled="disabled"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									ADDRESS OF EMPLOYER:<br/>
									<textarea cols="10" rows="3" style="width:100%" name="textareapresentpostaddressofemployer" id="textareapresentpostaddressofemployer" disabled="disabled"><%=presentPost.getAddressOfEmployer() %></textarea>
								</td>
								<td colspan="2">
									NAME OF SUPERVISOR:<br/>
									<input type="text" style="width:98%" name="textareapresentpostnameofsupervisor" id="textareapresentpostnameofsupervisor" value="<%=presentPost.getNameOfSupervisor() %>" disabled="disabled"/>
								</td>
							</tr>
							<tr>
								<td colspan="5">
									REASON FOR LEAVING:<br/>
									<textarea cols="10" rows="3" style="width:100%" name="textareapresentpostreasonforleaving" id="textareapresentpostreasonforleaving" disabled="disabled"><%=presentPost.getReasonForLeaving() %></textarea>
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
						<table border="1" width="100%">
							<tr>
								<td>FROM</td>
								<td>TO</td>
								<td colspan="2">SALARY PER ANNUM</td>
								<td>EXACT TITLE OF YOUR POST</td>
							</tr>							
							<tr>
								<td>Month/Year<br/><input type="text" style="width:98%" name="txtpreviouspostfrom1" id="txtpreviouspostfrom1" value="<%=pastPost.getPastPostFrom() %>" disabled="disabled"/></td>
								<td>Month/Year<br/><input type="text" style="width:98%" name="txtpreviouspostto1" id="txtpreviouspostto1" value="<%=pastPost.getPastPostTo() %>" disabled="disabled"/></td>
								<td>
									Starting<br/>
									<input type="text" style="width:98%" name="txtpreviouspoststartingsalary1" id="txtpreviouspoststartingsalary1" value="<%=pastPost.getStartingSalary() %>" disabled="disabled"/>
								</td>
								<td>
									Final<br/>
									<input type="text" style="width:98%" name="txtpreviouspostfinalsalary1" id="txtpreviouspostfinalsalary1" value="<%=pastPost.getFinalSalary() %>" disabled="disabled"/>
								</td>
								<td>
									<br/>
									<textarea cols="10" rows="3" style="width:100%" name="textareapreviouspostexacttitleofpost1" id="textareapreviouspostexacttitleofpost1" disabled="disabled"><%=pastPost.getExactTitleOfPost() %></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									NAME OF EMPLOYER:<br/>
									<input type="text" style="width:98%" name="textareapreviouspostnameofemployer1" id="textareapreviouspostnameofemployer1" value="<%=pastPost.getNameOfEmployer() %>" disabled="disabled"/>
								</td>
								<td colspan="3">
									TYPE OF BUSINESS:<br/>
									<input type="text" style="width:98%" name="txtpreviousposttypeofbusiness1" id="txtpreviousposttypeofbusiness1" value="<%=pastPost.getTypeOfBusiness() %>" disabled="disabled"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									ADDRESS OF EMPLOYER:<br/>
									<textarea cols="10" rows="3" style="width:100%" name="textareapreviouspostaddressofemployer1" id="textareapreviouspostaddressofemployer1" disabled="disabled"><%=pastPost.getAddressOfEmployer() %></textarea>
								</td>
								<td colspan="2">
									NAME OF SUPERVISOR:<br/>
									<input type="text" style="width:98%" name="textareapreviouspostnameofsupervisor1" id="textareapreviouspostnameofsupervisor1" value="<%=pastPost.getNameOfSupervisor() %>" disabled="disabled"/>
								</td>
							</tr>
							<tr>
								<td colspan="5">
									REASON FOR LEAVING:<br/>
									<textarea cols="10" rows="3" style="width:100%" name="textareapreviouspostreasonforleaving1" id="textareapreviouspostreasonforleaving1" disabled="disabled"><%=pastPost.getReasonForLeaving() %></textarea>
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
						<table border="1" width="100%">
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
								<td><input type="text" style="width:98%" name="txtreferencefullname1" id="txtreferencefullname1" value="<%=reference.getFullName() %>" disabled="disabled"/></td>
								<td><input type="text" style="width:98%" name="txtreferencefulladdress1" id="txtreferencefulladdress1" value="<%=reference.getFullAddress() %>" disabled="disabled"/></td>
								<td><input type="text" style="width:98%" name="txtreferencebusinessoroccupation1" id="txtreferencebusinessoroccupation1" value="<%=reference.getBusinessOrOccupation() %>" disabled="disabled"/></td>
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
						<table border="1" width="100%">
							<tr style="background:#eee">
								<td width="20%">Employee Type:</td>
								<td>
									<select style="width:100%" id="slctemployeetype" name="slctemployeetype" disabled="disabled">
										<%
											if(employeeTypeObj.getEmpType().equalsIgnoreCase("regular contract holder")){
												%>
													<option value="Regular Contract Holder" selected="selected">Regular Contract Holder</option>
													<option value="ELD">ELD (Employment for Limited Duration)</option>
													<option value="Part-time Employee">Part-time Employee</option>		
												<%
											}else if(employeeTypeObj.getEmpType().equalsIgnoreCase("eld")){
												%>
													<option value="Regular Contract Holder">Regular Contract Holder</option>
													<option value="ELD" selected="selected">ELD (Employment for Limited Duration)</option>
													<option value="Part-time Employee">Part-time Employee</option>
												<%
											}else if(employeeTypeObj.getEmpType().equalsIgnoreCase("part-time employee")){
												%>
													<option value="Regular Contract Holder">Regular Contract Holder</option>
													<option value="ELD">ELD (Employment for Limited Duration)</option>
													<option value="Part-time Employee" selected="selected">Part-time Employee</option>
												<%
											}
										%>										
									</select>
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
									<table border="1" width="100%">
										<tr style="background:#eee">
											<td width="20%">	Employee Contract Type:</td>
											<td>
												<select name="slctcontracttype" id="slctcontracttype" style="width:100%" disabled="disabled">
													<%
														if(employeeContractType.getContractType().equalsIgnoreCase("one year contract")){
															%>	
																<option value="One year" selected="selected">One year contract</option>
																<option value="Two years">Two years contract</option>
																<option value="Short term">Short term contract</option>
															<%
														}else if(employeeContractType.getContractType().equalsIgnoreCase("two years")){
															%>
																<option value="One year">One year contract</option>
																<option value="Two years" selected="selected">Two years contract</option>
																<option value="Short term">Short term contract</option>
															<%
														}else if(employeeContractType.getContractType().equalsIgnoreCase("short term contract")){
															%>
																<option value="One year">One year contract</option>
																<option value="Two years">Two years contract</option>
																<option value="Short term" selected="selected">Short term contract</option>
															<%
														}
													%>										
												</select>
											</td>
										</tr>
									</table>
								</div>
							</td>
						</tr>
				<%
					}
				%>
				<tr>
					<td colspan="2">
						<table border="1" width="100%">
							<tr style="background:#eee">
								<td width="20%">Employee Work Unit/Department:</td>
								<td>
									<select style="width:100%" id="slctemployeeworkunit" name="slctemployeeworkunit" disabled="disabled">
										<option value="" selected="selected">--Select--</option>										
										<%
											List<Department> departmentList = Department.getAllDepartments();
											Iterator<Department> departmentItr = departmentList.iterator();
											WorksAt employeeWorksAt = WorksAt.getWorksAtForEmployee(employeeId);
											if(employeeWorksAt != null){
												while(departmentItr.hasNext()){
													Department department = departmentItr.next();
													if(department.getId() == employeeWorksAt.getDepartmentId()){
													%>
														<option value="<%=department.getId() %>" selected="selected"><%=department.getDepartmentName() %></option>		
													<%
													}else{
													%>
														<option value="<%=department.getId() %>"><%=department.getDepartmentName() %></option>
													<%	
													}
												}//end while loop
											}
										%>																			
									</select>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table border="1" width="100%">
							<tr style="background:#eee">
								<td width="20%">Job Title:</td>
								<td>
									<select style="width:100%" id="slctjobtitle" name="slctjobtitle" disabled="disabled">
										<option value="" selected="selected">--Select--</option>
										<%
											List<Job> jobList = Job.getAllJobs();
											Iterator<Job> jobItr = jobList.iterator();
											EmployeeJob employeeJob = EmployeeJob.getEmployeeJobForThisEmployee(employeeId);
											if(employeeJob != null){
												while(jobItr.hasNext()){
													Job job = jobItr.next();
													if(job.getId() == employeeJob.getJobId()){
													%>
														<option value="<%=job.getId() %>" selected="selected"><%=job.getJobTitle() %></option>		
													<%
													}else{
													%>
														<option value="<%=job.getId() %>"><%=job.getJobTitle() %></option>
													<%
													}
												}//end while loop
											}
										%>																			
									</select>
								</td>
							</tr>
						</table>
					</td>
				</tr>
	</table>
</form>