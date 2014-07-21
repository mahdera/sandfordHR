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
							National Staff Personal Data Form</label></font>					
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
								EmployeePhoto employeePhoto = EmployeePhoto.getEmployeePhotoForEmployee(employeeId);
								if(employeePhoto != null){
							%>
							<tr>
								<td colspan="4" align="right">
									<img src="employee_photo/<%=employeePhoto.getFileName() %>" border="0" width="10%"/>
								</td>
							</tr>	
							<tr>
								<td colspan="4" align="right">
									<a href="#.jsp" id="attachEmployeePhotoEditLink">Change Employee Photo</a>
									<div id="employeePhotoEditDiv"></div>
								</td>
							</tr>	
							<%
								}else{
							%>
							<tr style="background:#eee">
								<td colspan="4" align="right">
									<a href="#.jsp" id="attachEmployeePhotoLink">Attach Employee Photo</a>
									<div id="employeePhotoDiv"></div>
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
								<td><input type="text" style="width:98%" name="txtfamilyname" id="txtfamilyname" value="<%=employee.getLastName() %>"/></td>
								<td><input type="text" style="width:98%" name="txtfirstname" id="txtfirstname" value="<%=employee.getFirstName() %>"/></td>
								<td><input type="text" style="width:98%" name="txtmiddlename" id="txtmiddlename" value="<%=employee.getMiddleName() %>"/></td>
								<td><input type="text" style="width:98%" name="txtmaidenname" id="txtmaidenname" value="<%=employee.getMaidenName() %>" /></td>
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
								<td>
									<input type="text" style="width:80%" name="txtdateofbirth" id="txtdateofbirth" value="<%=employee.getDateOfBirth() %>"/>									
									<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofbirth')" />
								</td>
								<td><input type="text" style="width:98%" name="txtplaceofbirth" id="txtplaceofbirth" value="<%=employee.getPlaceOfBirth() %>"/></td>
								<td><input type="text" style="width:98%" name="txtnationalityatbirth" id="txtnationalityatbirth" value="<%=employee.getNationalityAtBirth() %>"/></td>
								<td><input type="text" style="width:98%" name="txtpresentnationality" id="txtpresentnationality" value="<%=employee.getPresentNationality() %>"/></td>
								<td>
									<select name="slctsex" id="slctsex" style="width:100%">
										<%
											String employeeSex = employee.getSex();
											if(employeeSex.equalsIgnoreCase("female")){
										%>
												<option value="Female" selected="selected">Female</option>
										<%
											}else{
										%>
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
											Married <input type="radio" name="radmaritalstatus" id="radmarried" value="Married" checked="checked"/>
									<%
										}else{
									%>
											Married <input type="radio" name="radmaritalstatus" id="radmarried" value="Married"/>
									<%
										}
									%>
								</td>
								<td>
									<%
										if(maritalStatus.equalsIgnoreCase("separated")){
									%>
											Separated <input type="radio" name="radmaritalstatus" id="radseparated" value="Separated" checked="checked"/>
									<%
										}else{
									%>
											Separated <input type="radio" name="radmaritalstatus" id="radseparated" value="Separated"/>
									<%
										}
									%>
								</td>
								<td>
									<%
										if(maritalStatus.equalsIgnoreCase("widow(er)")){
									%>
											Widow(er) <input type="radio" name="radmaritalstatus" id="radwidower" value="Widow(er)" checked="checked"/>
									<%
										}else{
									%>
											Widow(er) <input type="radio" name="radmaritalstatus" id="radwidower" value="Widow(er)"/>
									<%
										}
									%>
								</td>
								<td>
									<%
										if(maritalStatus.equalsIgnoreCase("divorced")){
									%>
											Divorced <input type="radio" name="radmaritalstatus" id="raddivorced" value="Divorced" checked="checked"/>
									<%
										}else{
									%>
											Divorced <input type="radio" name="radmaritalstatus" id="raddivorced" value="Divorced"/>
									<%
										}
									%>
								</td>
								<td>
									<%
										if(maritalStatus.equalsIgnoreCase("single")){
									%>
											Single <input type="radio" name="radmaritalstatus" id="radsingle" value="Single" checked="checked"/>
									<%
										}else{
									%>
											Single <input type="radio" name="radmaritalstatus" id="radsingle" value="Single"/>
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
								<td><textarea class="jqte-test" style="width:100%" cols="10" rows="3" name="textareapermanentaddress" id="textareapermanentaddress"><%=employeeAddress.getPermanentAddress() %></textarea></td>
								<td><textarea class="jqte-test" style="width:100%" cols="10" rows="3" name="textareapresentaddress" id="textareapresentaddress"><%=employeeAddress.getPresentAddress() %></textarea></td>
							</tr>
							<tr style="background:#eee">
								<td>Telephone No.</td>
								<td>Telephone/Fax No.</td>
							</tr>
							<tr style="background:#eee">
								<td><input type="text" style="width:98%" name="txttelephonenumber" id="txttelephonenumber" value="<%=employeeAddress.getTelephoneNumber() %>"/></td>
								<td><input type="text" style="width:98%" name="txttelephonefax" id="txttelephonefax" value="<%=employeeAddress.getTelephoneFaxNumber() %>"/></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table border="1" width="100%">
							<tr style="background:#eeeeee">
								<td colspan="2">	
										<div align="right">
											<a href="#.jsp" onclick="insertNewGridRowToService(document.getElementById('dependentsGrid'));">
												[Add Row]
											</a>
											 | 
											<a href="#.jsp" onclick="removeTableRowFromService(document.getElementById('dependentsGrid'));">
												[Remove Row]
											</a>
										</div>					
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
													int dependentCtr = 1;
													while(dependantItr.hasNext()){
														Dependant dependant = dependantItr.next();
														//define the control names here...
														String dependentNameControl = "txtdependentname" + dependentCtr;
														String dependentDateOfBirthControl = "txtdependentdateofbirth" + dependentCtr;
														String dependentRelationshipControl = "txtdependentrelationship" + dependentCtr;
												%>
														<tr>										
															<td>	<input type="text" name="<%=dependentNameControl %>" id="<%=dependentNameControl %>" style="width:98%" value="<%=dependant.getName() %>"/></td>
															<td>	<input type="text" name="<%=dependentDateOfBirthControl %>" id="<%=dependentDateOfBirthControl %>" style="width:98%" value="<%=dependant.getDateOfBirth() %>"/></td>
															<td>	<input type="text" name="<%=dependentRelationshipControl %>" id="<%=dependentRelationshipControl %>" style="width:98%" value="<%=dependant.getRelationship() %>"/></td>																							
														</tr>
												<%
														dependentCtr++;
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
						<textarea class="jqte-test" cols="10" rows="3" style="width:100%" name="textareapreferredfieldofwork" id="textareapreferredfieldofwork"><%=employee.getPreferredFieldOfWork() %></textarea>
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
										<div align="right">
											<a href="#.jsp" onclick="insertNewGridRowToEducation(document.getElementById('educationalGrid'));">
												[Add Row]
											</a>
											 | 
											<a href="#.jsp" onclick="removeTableRowFromService(document.getElementById('educationalGrid'));">
												[Remove Row]
											</a>
										</div>
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
													int educationInformationCtr = 1;
													while(educationInformationItr.hasNext()){
														EducationInformation educationInformation = educationInformationItr.next();
														//define the control names here...
														String educationNamePlaceCountryControl = "txteducationnameplacecountry" + educationInformationCtr;
														String educationAttendedFromControl = "txteducationattendedfrom" + educationInformationCtr;
														String educationAttendedToControl = "txteducationattendedto" + educationInformationCtr;
														String educationDegreesAcademicControl = "txteducationdegreesacademic" + educationInformationCtr;
														String educationMainCourseOfStudyControl = "txteducationmaincourseofstudy" + educationInformationCtr;
												%>
															<tr>										
																<td>	<input type="text" name="<%=educationNamePlaceCountryControl %>" id="<%=educationNamePlaceCountryControl %>" style="width:98%" value="<%=educationInformation.getNamePlaceCountry() %>"/></td>
																<td>	<input type="text" name="<%=educationAttendedFromControl %>" id="<%=educationAttendedFromControl %>" style="width:98%" value="<%=educationInformation.getAttendedFrom() %>"/></td>
																<td>	<input type="text" name="<%=educationAttendedToControl %>" id="<%=educationAttendedToControl %>" style="width:98%" value="<%=educationInformation.getAttendedTo() %>"/></td>
																<td>	<input type="text" name="<%=educationDegreesAcademicControl %>" id="<%=educationDegreesAcademicControl %>" style="width:98%" value="<%=educationInformation.getDegreesAcademicDistinctions() %>"/></td>
																<td>	<input type="text" name="<%=educationMainCourseOfStudyControl %>" id="<%=educationMainCourseOfStudyControl %>" style="width:98%" value="<%=educationInformation.getMainCourseOfStudy() %>"/></td>																							
															</tr>	
												<%
														educationInformationCtr++;
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
										<div align="right">
											<a href="#.jsp" onclick="insertNewGridRowToSchool(document.getElementById('schoolsGrid'));">
												[Add Row]
											</a>
											 | 
											<a href="#.jsp" onclick="removeTableRowFromService(document.getElementById('schoolsGrid'));">
												[Remove Row]
											</a>
										</div>								
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
													int schoolFormalTrainingsCtr = 1;
													while(schoolFormalTrainingsItr.hasNext()){
														SchoolFormalTrainings schoolFormalTrainings = schoolFormalTrainingsItr.next();
														//define the control names here...
														String schoolNamePlaceCountryControl = "txtschoolnameplacecountry" + schoolFormalTrainingsCtr;
														String schoolTypeControl = "txtschooltype" + schoolFormalTrainingsCtr;
														String schoolAttendedFromControl = "txtschoolattendedfrom" + schoolFormalTrainingsCtr;
														String schoolAttendedToControl = "txtschoolattendedto" + schoolFormalTrainingsCtr;
														String schoolCertificatesControl = "txtschoolcertificatesordiplomasobtained" + schoolFormalTrainingsCtr;
												%>
														<tr>										
															<td>	<input type="text" name="<%=schoolNamePlaceCountryControl %>" id="<%=schoolNamePlaceCountryControl %>" style="width:98%" value="<%=schoolFormalTrainings.getNamePlaceCountry() %>"/></td>
															<td>	<input type="text" name="<%=schoolTypeControl %>" id="<%=schoolTypeControl %>" style="width:98%" value="<%=schoolFormalTrainings.getType() %>"/></td>
															<td>	<input type="text" name="<%=schoolAttendedFromControl %>" id="<%=schoolAttendedFromControl %>" style="width:98%" value="<%=schoolFormalTrainings.getAttendedFrom() %>"/></td>
															<td>	<input type="text" name="<%=schoolAttendedToControl %>" id="<%=schoolAttendedToControl %>" style="width:98%" value="<%=schoolFormalTrainings.getAttendedTo() %>"/></td>													
															<td>	<input type="text" name="<%=schoolCertificatesControl %>" id="<%=schoolCertificatesControl %>" style="width:98%" value="<%=schoolFormalTrainings.getCertificateDiplomaObtained() %>"/></td>																							
														</tr>
												<%
														schoolFormalTrainingsCtr++;
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
						<textarea class="jqte-test" cols="10" rows="3" style="width:100%" name="textareaprofessionalsocietiesactivities" id="textareaprofessionalsocietiesactivities"><%=employee.getListOfProfessionalActivities() %></textarea>
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						14. LIST ANY SIGNIFICANT PUBLICATIONS YOU HAVE WRITTEN<br/>
						<textarea class="jqte-test" cols="10" rows="3" style="width:100%" name="textareapublications" id="textareapublications"><%=employee.getListOfPublications() %></textarea>
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						15. EMPLOYMENT RECORD: Starting with your present post, list in reverse order
						every employment you have had. User a separate block for each case.
						Include also service in the armed forces and note any period during which you were not
						gainfully employed. Give both gross and net salaries per annum for your last or present post.<br/>
						<textarea class="jqte-test" cols="10" rows="3" style="width:100%" name="textareaemploymentrecord" id="textareaemploymentrecord"><%=employee.getEmploymentRecord() %></textarea>
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
								<td>Month/Year<br/><input type="text" style="width:98%" name="txtpresentpostfrom" id="txtpresentpostfrom" value="<%=presentPost.getPresentPostFrom() %>"/></td>
								<td>Month/Year<br/><input type="text" style="width:98%" name="txtpresentpostto" id="txtpresentpostto" value="<%=presentPost.getPresentPostTo() %>"/></td>
								<td>
									Starting<br/>
									<input type="text" style="width:98%" name="txtpresentpoststartingsalary" id="txtpresentpoststartingsalary" value="<%=presentPost.getStartingSalary() %>"/>
								</td>
								<td>
									Final<br/>
									<input type="text" style="width:98%" name="txtpresentpostfinalsalary" id="txtpresentpostfinalsalary" value="<%=presentPost.getFinalSalary() %>"/>
								</td>
								<td>
									<br/>
									<textarea cols="10" rows="3" style="width:100%" name="textareapresentpostexacttitleofpost" id="textareapresentpostexacttitleofpost"><%=presentPost.getExactTitleOfPost() %></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									NAME OF EMPLOYER:<br/>
									<input type="text" style="width:98%" name="txtpresentpostnameofemployer" id="txtpresentpostnameofemployer" value="<%=presentPost.getNameOfEmployer() %>"/>
								</td>
								<td colspan="3">
									TYPE OF BUSINESS:<br/>
									<input type="text" style="width:98%" name="txtpresentposttypeofbusiness" id="txtpresentposttypeofbusiness" value="<%=presentPost.getTypeOfBusiness() %>"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									ADDRESS OF EMPLOYER:<br/>
									<textarea cols="10" rows="3" style="width:100%" name="textareapresentpostaddressofemployer" id="textareapresentpostaddressofemployer"><%=presentPost.getAddressOfEmployer() %></textarea>
								</td>
								<td colspan="2">
									NAME OF SUPERVISOR:<br/>
									<input type="text" style="width:98%" name="textareapresentpostnameofsupervisor" id="textareapresentpostnameofsupervisor" value="<%=presentPost.getNameOfSupervisor() %>"/>
								</td>
							</tr>
							<tr>
								<td colspan="5">
									REASON FOR LEAVING:<br/>
									<textarea class="jqte-test" cols="10" rows="3" style="width:100%" name="textareapresentpostreasonforleaving" id="textareapresentpostreasonforleaving"><%=presentPost.getReasonForLeaving() %></textarea>
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
					int pastPostCtr = 1;
					while(pastPostItr.hasNext()){
						PastPost pastPost = pastPostItr.next();
						//define the control names here...
						String pastPostFromControl = "txtpreviouspostfrom" + pastPostCtr;
						String pastPostToControl = "txtpreviouspostto" + pastPostCtr;
						String pastPostStartingSalaryControl = "txtpreviouspoststartingsalary" + pastPostCtr;
						String pastPostFinalSalaryControl = "txtpreviouspostfinalsalary" + pastPostCtr;
						String pastPostExactTitleOfYourPostControl = "textareapreviouspostexacttitleofpost" + pastPostCtr;
						String pastPostNameOfEmployerControl = "textareapreviouspostnameofemployer" + pastPostCtr;
						String pastPostTypeOfBusinessControl = "txtpreviousposttypeofbusiness" + pastPostCtr;
						String pastPostAddressOfEmployerControl = "textareapreviouspostaddressofemployer" + pastPostCtr;
						String pastPostNameOfSupervisorControl = "textareapreviouspostnameofsupervisor" + pastPostCtr;
						String pastPostReasonForLeavingControl = "textareapreviouspostreasonforleaving" + pastPostCtr;
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
								<td>Month/Year<br/><input type="text" style="width:98%" name="<%=pastPostFromControl %>" id="<%=pastPostFromControl %>" value="<%=pastPost.getPastPostFrom() %>"/></td>
								<td>Month/Year<br/><input type="text" style="width:98%" name="<%=pastPostToControl %>" id="<%=pastPostToControl %>" value="<%=pastPost.getPastPostTo() %>"/></td>
								<td>
									Starting<br/>
									<input type="text" style="width:98%" name="<%=pastPostStartingSalaryControl %>" id="<%=pastPostStartingSalaryControl %>" value="<%=pastPost.getStartingSalary() %>"/>
								</td>
								<td>
									Final<br/>
									<input type="text" style="width:98%" name="<%=pastPostFinalSalaryControl %>" id="<%=pastPostFinalSalaryControl %>" value="<%=pastPost.getFinalSalary() %>"/>
								</td>
								<td>
									<br/>
									<textarea cols="10" rows="3" style="width:100%" name="<%=pastPostExactTitleOfYourPostControl %>" id="<%=pastPostExactTitleOfYourPostControl %>"><%=pastPost.getExactTitleOfPost() %></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									NAME OF EMPLOYER:<br/>
									<input type="text" style="width:98%" name="<%=pastPostNameOfEmployerControl %>" id="<%=pastPostNameOfEmployerControl %>" value="<%=pastPost.getNameOfEmployer() %>"/>
								</td>
								<td colspan="3">
									TYPE OF BUSINESS:<br/>
									<input type="text" style="width:98%" name="<%=pastPostTypeOfBusinessControl %>" id="<%=pastPostTypeOfBusinessControl %>" value="<%=pastPost.getTypeOfBusiness() %>"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									ADDRESS OF EMPLOYER:<br/>
									<textarea cols="10" rows="3" style="width:100%" name="<%=pastPostAddressOfEmployerControl %>" id="<%=pastPostAddressOfEmployerControl %>"><%=pastPost.getAddressOfEmployer() %></textarea>
								</td>
								<td colspan="2">
									NAME OF SUPERVISOR:<br/>
									<input type="text" style="width:98%" name="<%=pastPostNameOfSupervisorControl %>" id="<%=pastPostNameOfSupervisorControl %>" value="<%=pastPost.getNameOfSupervisor() %>"/>
								</td>
							</tr>
							<tr>
								<td colspan="5">
									REASON FOR LEAVING:<br/>
									<textarea class="jqte-test" cols="10" rows="3" style="width:100%" name="<%=pastPostReasonForLeavingControl %>" id="<%=pastPostReasonForLeavingControl %>"><%=pastPost.getReasonForLeaving() %></textarea>
								</td>
							</tr>
						</table>						
					</td>
				</tr>
				<%
						pastPostCtr++;
					}//end while loop
				%>
				<tr style="background:#eee">
					<td colspan="2">
						<div id="addedPreviousPostDiv"></div>
					</td>
				</tr>
				<!-- 
				<tr style="background:#eee">
					<td colspan="2" style="text-align:right">
						<a href="#.jsp" id="addPreviousPostLink">Add More Previous Post</a>
						<div id="howManyPreviousPostDiv"></div>
					</td>
				</tr>
				 -->
				<tr style="background:#eee">
					<td colspan="2">
						16. HAVE YOU ANY OBJECTIONS TO OUR MAKING INQUIRIES OF YOUR PRESENT EMPLOYER?
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<%
							if(employee.isObjectContactingPresentEmployer()){
						%>
								YES <input type="radio" name="radobjection" id="radobjectionyes" value="yes" checked="checked"/>
						<%
							}else{
						%>
								YES <input type="radio" name="radobjection" id="radobjectionyes" value="yes"/>
						<%
							}
						%>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<%
							if(!employee.isObjectContactingPresentEmployer()){
						%>
								NO <input type="radio" name="radobjection" id="radobjectionno" value="no" checked="checked"/>
						<%
							}else{
						%>
								NO <input type="radio" name="radobjection" id="radobjectionno" value="no"/>
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
								int referenceCtr = 1;
								while(referenceItr.hasNext()){
									Reference reference = referenceItr.next();
									//define the control names here...
									String referenceFullNameControl = "txtreferencefullname" + referenceCtr;
									String referenceFullAddressControl = "txtreferencefulladdress" + referenceCtr;
									String referenceBusinessOrOccupationControl = "txtreferencebusinessoroccupation" + referenceCtr;
							%>
							<tr>
								<td><input type="text" style="width:98%" name="<%=referenceFullNameControl %>" id="<%=referenceFullNameControl %>" value="<%=reference.getFullName() %>"/></td>
								<td><input type="text" style="width:98%" name="<%=referenceFullAddressControl %>" id="<%=referenceFullAddressControl %>" value="<%=reference.getFullAddress() %>"/></td>
								<td><input type="text" style="width:98%" name="<%=referenceBusinessOrOccupationControl %>" id="<%=referenceBusinessOrOccupationControl %>" value="<%=reference.getBusinessOrOccupation() %>"/></td>
							</tr>
							<%
									referenceCtr++;
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
								<input type="radio" name="radcriminalinformation" id="radcriminalinfoyes" value="yes" checked="checked"/> YES &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<%
							}else{
						%>
								<input type="radio" name="radcriminalinformation" id="radcriminalinfoyes" value="yes"/> YES &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<%
							}
						
							if(!employee.isBeen_arrested()){
						%>
								<input type="radio" name="radcriminalinformation" id="radcriminalinfono" value="no" checked="checked"/> NO
						<%
							}else{
						%>
								<input type="radio" name="radcriminalinformation" id="radcriminalinfono" value="no"/> NO
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
					NationalEmployeeType nationalEmployeeType = NationalEmployeeType.getNationalEmployeeTypeForEmployee(employee.getId());
				%>
				<tr>
					<td colspan="2">
						<table border="1" width="100%">
							<tr style="background:#eee">
								<td width="20%">Employee Type:</td>
								<td>
									<select style="width:100%" id="slctemployeetype" name="slctemployeetype">
										<%
											if(nationalEmployeeType.getEmploymentType().equalsIgnoreCase("regular employee")){
												%>
													<option value="Regular Employee" selected="selected">Regular Employee</option>
													<option value="Temporary Employee">Temporary Employee</option>															
												<%
											}else if(nationalEmployeeType.getEmploymentType().equalsIgnoreCase("Temporary Employee")){
												%>
													<option value="Regular Employee">Regular Employee</option>
													<option value="Temporary Employee" selected="selected">Temporary Employee</option>
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
						<div id="contractTypeDiv">
							<table border="1" width="100%">
								<tr style="background:#eee">
									<td width="20%">Employee Type By Work Position:</td>
									<%
										NationalEmployeeWorkPosition nationalEmployeeWorkPosition = NationalEmployeeWorkPosition.getNationalEmployeeWorkPositionForEmployee(employee.getId());
									%>
									<td>
										<select name="slctemployeetypebyworkposition" id="slctemployeetypebyworkposition" style="width:100%">
											<%
												if(nationalEmployeeWorkPosition.getWorkPosition().equalsIgnoreCase("admin and general")){
													%>	
														<option value="Admin and General" selected="selected">Admin and General</option>
														<option value="Service Employee">Service Employee</option>
														<option value="Teaching">Teaching</option>
													<%
												}else if(nationalEmployeeWorkPosition.getWorkPosition().equalsIgnoreCase("service employee")){
													%>
														<option value="Admin and General">Admin and General</option>
														<option value="Service Employee" selected="selected">Service Employee</option>
														<option value="Teaching">Teaching</option>
													<%
												}else if(nationalEmployeeWorkPosition.getWorkPosition().equalsIgnoreCase("teaching")){
													%>
														<option value="Admin and General">Admin and General</option>
														<option value="Service Employee">Service Employee</option>
														<option value="Teaching" selected="selected">Teaching</option>
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
			<tr>
					<td colspan="2">
						<table border="1" width="100%">
							<tr style="background:#eee">
								<td width="20%">Employee Work Unit/Department:</td>
								<td>
									<select style="width:100%" id="slctemployeeworkunit" name="slctemployeeworkunit">										
										<%
											List<Department> departmentList = Department.getAllDepartments();
											Iterator<Department> departmentItr = departmentList.iterator();
											WorksAt employeeWorksAt = WorksAt.getWorksAtForEmployee(employeeId);
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
									<select style="width:100%" id="slctjobtitle" name="slctjobtitle">
										<option value="" selected="selected">--Select--</option>
										<%
											List<Job> jobList = Job.getAllJobs();
											Iterator<Job> jobItr = jobList.iterator();
											EmployeeJob employeeJob = EmployeeJob.getEmployeeJobForThisEmployee(employeeId);
											while(jobItr.hasNext()){
												Job job = jobItr.next();
												if(job.getId() == (employeeJob != null ? employeeJob.getJobId() : 0)){
												%>
													<option value="<%=job.getId() %>" selected="selected"><%=job.getJobTitle() %></option>		
												<%
												}else{
												%>
													<option value="<%=job.getId() %>"><%=job.getJobTitle() %></option>
												<%
												}
											}//end while loop
										%>																			
									</select>
								</td>
							</tr>
						</table>
					</td>
			</tr>
			<tr>
				<td colspan="2">
					<table border="0" width="100%">
						<tr style="background:#eee">
							<td width="20%">Life Insurance Policy Number:</td>
							<td>
								<%
									String policyNumber = "";
									EmployeeInsurance employeeInsurance = EmployeeInsurance.getEmployeeInsuranceForEmployee(employeeId);
									if(employeeInsurance != null){
										policyNumber = employeeInsurance.getInsurancePolicyNumber();
									}
								%>
								<input type="text" name="txtpolicynumber" id="txtpolicynumber" value="<%=policyNumber %>" style="width:98%"/>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="button" value="Update" class="input-submit" id="btnupdate"/>
					<input type="reset" value="Undo" class="input-submit"/>
				</td>
			</tr>
	</table>
</form>
<script type="text/javascript">	
	$(document).ready(function(){
		$('.jqte-test').jqte();			
		// settings of status
		var jqteStatus = true;
		$(".status").click(function()
		{
			jqteStatus = jqteStatus ? false : true;
			$('.jqte-test').jqte({"status" : jqteStatus})
		});
		
		$('#attachEmployeePhotoLink').click(function(){
			var employeeId = "<%=employeeId%>";
			$('#employeePhotoDiv').load('showuploademployeephotoform.jsp?employeeId='+employeeId);			
		});
		
		$('#attachEmployeePhotoEditLink').click(function(){
			var employeeId = "<%=employeeId%>";
			$('#employeePhotoEditDiv').load('showuploademployeephotoformforedit.jsp?employeeId='+employeeId);
		});
		
		$('#btnupdate').click(function(){
			var employeeId = "<%=employeeId%>";
			var familyName = $('#txtfamilyname').val();
			var 	firstName = $('#txtfirstname').val();
			var middleName = $('#txtmiddlename').val();
			var maidenName = $('#txtmaidenname').val();
			var dateOfBirth = $('#txtdateofbirth').val();
			var placeOfBirth = $('#txtplaceofbirth').val();
			var nationalityAtBirth = $('#txtnationalityatbirth').val();
			var presentNationality = $('#txtpresentnationality').val();
			var sex = $('#slctsex').val();
			var maritalStatus = $("input[name=radmaritalstatus]:checked", '#personalDataForm').val();			
			var permanentAddress = $('#textareapermanentaddress').val();
			var presentAddress = $('#textareapresentaddress').val();
			var telephoneNumber = $('#txttelephonenumber').val();
			var telephoneFaxNumber = $('#txttelephonefax').val();
			var rowVal = $("#dependentsGrid tr").length - 1;
			var stringValues = "";
			var dependentName = "";
			var dependentDateOfBirth = "";
			var relationship = "";
			var dependentNameVal = "";
			var dependentDateOfBirthVal = "";
			var relationshipVal = "";	
			var workUnitId = $('#slctemployeeworkunit').val();
			var jobId = $('#slctjobtitle').val();
		
			
			for (var i = 1; i <= rowVal; i++) {
				dependentName = 'txtdependentname' + i;
				dependentDateOfBirth = 'txtdependentdateofbirth' + i;
				relationship = 'txtdependentrelationship' + i;	
				//alert(dependentName+":"+dependentDateOfBirth+":"+relationship);
				// now get the values of the text fields				
				dependentNameVal = $('#'+dependentName).val();				
				dependentDateOfBirthVal = $('#'+dependentDateOfBirth).val();//document.getElementById(dependentDateOfBirth).value;
				relationshipVal = $('#'+relationship).val();//document.getElementById(relationship).value;				

				stringValues += "&" + dependentName + "=" + dependentNameVal + "&" + dependentDateOfBirth
						+ "=" + dependentDateOfBirthVal + "&" + relationship + "=" + relationshipVal;				
			}//end for...loop
			
			//alert(stringValues);
			
			var preferredFieldOfWork = $('#textareapreferredfieldofwork').val();
			var educationGridRowVal = $('#educationalGrid tr').length - 1;
			var educationNamePlaceCountry = "";
			var educationAttendedFrom = "";
			var educationAttendedTo = "";
			var degreesAcademicDistinctionsObtained = "";
			var educationMainCourseOfStudy = "";
			var educationNamePlaceCountryVal = "";
			var educationAttendedFromVal = "";
			var educationAttendedToVal = "";
			var degreesAcademicDistinctionsObtainedVal = "";
			var educationMainCourseOfStudyVal = "";
			
			for (var i = 1; i <= educationGridRowVal; i++) {
				educationNamePlaceCountry = 'txteducationnameplacecountry' + i;
				educationAttendedFrom = 'txteducationattendedfrom' + i;
				educationAttendedTo = 'txteducationattendedto' + i;
				degreesAcademicDistinctionsObtained = 'txteducationdegreesacademic' + i;
				educationMainCourseOfStudy = 'txteducationmaincourseofstudy' + i;
				// now get the values of the text fields			
				educationNamePlaceCountryVal = $('#'+educationNamePlaceCountry).val();
				educationAttendedFromVal = $('#'+educationAttendedFrom).val();
				educationAttendedToVal = $('#'+educationAttendedTo).val();
				degreesAcademicDistinctionsObtainedVal = $('#'+degreesAcademicDistinctionsObtained).val();
				educationMainCourseOfStudyVal = $('#'+educationMainCourseOfStudy).val();

				stringValues += "&" + educationNamePlaceCountry + "=" + educationNamePlaceCountryVal + "&" + educationAttendedFrom
						+ "=" + educationAttendedFromVal + "&" + educationAttendedTo + "=" + educationAttendedToVal +
						"&" + degreesAcademicDistinctionsObtained + "=" + degreesAcademicDistinctionsObtainedVal + 
						"&" + educationMainCourseOfStudy + "=" + educationMainCourseOfStudyVal;			
			}//end for...loop
			
			//alert(stringValues);
			
			var schoolGridRowVal = $('#schoolsGrid tr').length - 1;
			var schoolNamePlaceCountry = "";
			var schoolType = "";
			var schoolAttendedFrom = "";
			var schoolAttendedTo = "";
			var schoolCertificatesOrDiplomasObtained = "";
			var schoolNamePlaceCountryVal = "";
			var schoolTypeVal = "";
			var schoolAttendedFromVal = "";
			var schoolAttendedToVal = "";
			var schoolCertificatesOrDiplomasObtainedVal = "";
			
			for (var i = 1; i <= schoolGridRowVal; i++) {
				schoolNamePlaceCountry = 'txtschoolnameplacecountry' + i;
				schoolType = 'txtschooltype' + i;
				schoolAttendedFrom = 'txtschoolattendedfrom' + i;
				schoolAttendedTo = 'txtschoolattendedto' + i;
				schoolCertificatesOrDiplomasObtained = 'txtschoolcertificatesordiplomasobtained' + i;
				// now get the values of the text fields			
				schoolNamePlaceCountryVal = $('#'+schoolNamePlaceCountry).val();
				schoolTypeVal = $('#'+schoolType).val();
				schoolAttendedFromVal = $('#'+schoolAttendedFrom).val();
				schoolAttendedToVal = $('#'+schoolAttendedTo).val();
				schoolCertificatesOrDiplomasObtainedVal = $('#'+schoolCertificatesOrDiplomasObtained).val();

				stringValues += "&" + schoolNamePlaceCountry + "=" + schoolNamePlaceCountryVal + "&" + schoolType
						+ "=" + schoolTypeVal + "&" + schoolAttendedFrom + "=" + schoolAttendedFromVal +
						"&" + schoolAttendedTo + "=" + schoolAttendedToVal + 
						"&" + schoolCertificatesOrDiplomasObtained + "=" + schoolCertificatesOrDiplomasObtainedVal;			
			}//end for...loop
			
			//alert(stringValues);
			
			var professionalSocietiesActivities = $('#textareaprofessionalsocietiesactivities').val();
			var significantPublications = $('#textareapublications').val();
			var employmentRecord = $('#textareaemploymentrecord').val();
			var presentPostFrom = $('#txtpresentpostfrom').val();
			var presentPostTo = $('#txtpresentpostto').val();
			var presentPostStartingSalary = $('#txtpresentpoststartingsalary').val();
			var presentPostFinalSalary = $('#txtpresentpostfinalsalary').val();
			var presentPostExactTitleOfYourPost = $('#textareapresentpostexacttitleofpost').val();
			var presentPostNameOfEmployer = $('#txtpresentpostnameofemployer').val();
			var presentPostTypeOfBusiness = $('#txtpresentposttypeofbusiness').val();
			var presentPostAddressOfEmployer = $('#textareapresentpostaddressofemployer').val();
			var presentPostNameOfSupervisor = $('#textareapresentpostnameofsupervisor').val();
			var presentPostReasonForLeaving = $('#textareapresentpostreasonforleaving').val();
			var pastPostFrom = $('#txtpreviouspostfrom1').val();
			var pastPostTo = $('#txtpreviouspostto1').val();
			var pastPostStartingSalary = $('#txtpreviouspoststartingsalary1').val();
			var pastPostFinalSalary = $('#txtpreviouspostfinalsalary1').val();
			var pastPostExactTitleOfYourPost = $('#textareapreviouspostexacttitleofpost1').val();
			var pastPostNameOfEmployer = $('#textareapreviouspostnameofemployer1').val();
			var pastPostTypeOfBusiness = $('#txtpreviousposttypeofbusiness1').val();
			var pastPostAddressOfEmployer = $('#textareapreviouspostaddressofemployer1').val();
			var pastPostNameOfSupervisor = $('#textareapreviouspostnameofsupervisor1').val();
			var pastPostReasonForLeaving = $('#textareapreviouspostreasonforleaving1').val();
			var howManyPastPostForms = 0;
			if($('#txthowmany').val() != null){
				howManyPastPostForms = $('#txthowmany').val();
			}
			
			for(var i=1;i<=howManyPastPostForms;i++){				
				var additionalPastPostFrom = "txtfrommonthyear" + (i+1);
				var additionalPastPostTo = "txttomonthyear" + (i+1);
				var additionalPastPostStartingSalary = "txtstartingsalary" + (i+1);
				var additionalPastPostFinalSalary = "txtfinalsalary" + (i+1);
				var additionalPastPostExactTitleOfYourPost = "textareaexacttitleofpost" + (i+1);
				var additionalPastPostNameOfEmployer = "txtnameofemployer" + (i+1);
				var additionalPastPostTypeOfBusiness = "txttypeofbusiness" + (i+1);
				var additionalPastPostAddressOfEmployer = "textareaaddressofemployer" + (i+1);
				var additionalPastPostNameOfSupervisor = "txtnameofsupervisor" + (i+1);
				var additionalPastPostReasonForLeaving = "textareareasonforleaving" + (i+1);
				//now get the values
				var additionalPastPostFromVal = $('#'+additionalPastPostFrom).val();
				var additionalPastPostToVal = $('#'+additionalPastPostTo).val();
				var additionalPastPostStartingSalaryVal = $('#'+additionalPastPostStartingSalary).val();
				var additionalPastPostFinalSalaryVal = $('#'+additionalPastPostFinalSalary).val();
				var additionalPastPostExactTitleOfYourPostVal = $('#'+additionalPastPostExactTitleOfYourPost).val();
				var additionalPastPostNameOfEmployerVal = $('#'+additionalPastPostNameOfEmployer).val();
				var additionalPastPostTypeOfBusinessVal = $('#'+additionalPastPostTypeOfBusiness).val();
				var additionalPastPostAddressOfEmployerVal = $('#'+additionalPastPostAddressOfEmployer).val();
				var additionalPastPostNameOfSupervisorVal = $('#'+additionalPastPostNameOfSupervisor).val();
				var additionalPastPostReasonForLeavingVal = $('#'+additionalPastPostReasonForLeaving).val();
				//now build the string var
				stringValues += "&" + additionalPastPostFrom + "=" + additionalPastPostFromVal + "&" +
				additionalPastPostTo + "=" + additionalPastPostToVal + "&" + additionalPastPostStartingSalary + "=" +
				additionalPastPostStartingSalaryVal + "&" + additionalPastPostFinalSalary + "=" + 
				additionalPastPostFinalSalaryVal + "&" + additionalPastPostExactTitleOfYourPost + "=" +
				additionalPastPostExactTitleOfYourPostVal + "&" + additionalPastPostNameOfEmployer + "=" +
				additionalPastPostNameOfEmployerVal + "&" + additionalPastPostTypeOfBusiness + "=" +
				additionalPastPostTypeOfBusinessVal + "&" + additionalPastPostAddressOfEmployer + "=" +
				additionalPastPostAddressOfEmployerVal + "&" + additionalPastPostNameOfSupervisor + "=" +
				additionalPastPostNameOfSupervisorVal + "&" + additionalPastPostReasonForLeaving + "=" +
				additionalPastPostReasonForLeavingVal;
			}//end for loop
			
			var objectionContactingPresentEmployer = $("input[name=radobjection]:checked", '#personalDataForm').val();
			var reference1FullName = $('#txtreferencefullname1').val();
			var reference1FullAddress = $('#txtreferencefulladdress1').val();
			var reference1BusinessOrOccupation = $('#txtreferencebusinessoroccupation1').val();
			var reference2FullName = $('#txtreferencefullname2').val();
			var reference2FullAddress = $('#txtreferencefulladdress2').val();
			var reference2BusinessOrOccupation = $('#txtreferencebusinessoroccupation2').val();
			var reference3FullName = $('#txtreferencefullname3').val();
			var reference3FullAddress = $('#txtreferencefulladdress3').val();
			var reference3BusinessOrOccupation = $('#txtreferencebusinessoroccupation3').val();
			var beenArrested = $("input[name=radcriminalinformation]:checked", '#personalDataForm').val();
			
			var employeeType = $('#slctemployeetype').val();
			var employeeTypeByWorkPosition = $('#slctemployeetypebyworkposition').val();
			var policyNumber = $('#txtpolicynumber').val();
			
			
			stringValues += "&familyName="+familyName+"&firstName="+firstName+"&middleName="+middleName+"&maidenName="+maidenName+
			"&dateOfBirth="+dateOfBirth+"&placeOfBirth="+placeOfBirth+"&nationalityAtBirth="+nationalityAtBirth+
			"&presentNationality="+presentNationality+"&sex="+sex+"&maritalStatus="+maritalStatus+
			"&permanentAddress="+permanentAddress+"&presentAddress="+presentAddress+"&telephoneNumber="+
			telephoneNumber+"&telephoneFaxNumber="+telephoneFaxNumber+"&preferredFieldOfWork="+preferredFieldOfWork+
			"&objectionContactingPresentEmployer="+objectionContactingPresentEmployer+"&reference1FullName="+
			reference1FullName+"&reference1FullAddress="+reference1FullAddress+"&reference1BusinessOrOccupation="+
			reference1BusinessOrOccupation+"&reference2FullName="+reference2FullName+"&reference2FullAddress="+
			reference2FullAddress+"&reference2BusinessOrOccupation="+reference2BusinessOrOccupation+
			"&reference3FullName="+reference3FullName+"&reference3FullAddress="+reference3FullAddress+
			"&reference3BusinessOrOccupation="+reference3BusinessOrOccupation+"&beenArrested="+beenArrested+
			"&professionalSocietiesActivities="+professionalSocietiesActivities+"&significantPublications="+
			significantPublications+"&employmentRecord="+employmentRecord+"&presentPostFrom="+presentPostFrom+
			"&presentPostTo="+presentPostTo+"&presentPostStartingSalary="+presentPostStartingSalary+
			"&presentPostFinalSalary="+presentPostFinalSalary+"&presentPostExactTitleOfYourPost="+
			presentPostExactTitleOfYourPost+"&presentPostNameOfEmployer="+presentPostNameOfEmployer+
			"&presentPostTypeOfBusiness="+presentPostTypeOfBusiness+"&presentPostAddressOfEmployer="+
			presentPostAddressOfEmployer+"&presentPostNameOfSupervisor="+presentPostNameOfSupervisor+
			"&presentPostReasonForLeaving="+presentPostReasonForLeaving+"&pastPostFrom="+pastPostFrom+
			"&pastPostTo="+pastPostTo+"&pastPostStartingSalary="+pastPostStartingSalary+"&pastPostFinalSalary="+
			pastPostFinalSalary+"&pastPostExactTitleOfYourPost="+pastPostExactTitleOfYourPost+"&pastPostNameOfEmployer="+
			pastPostNameOfEmployer+"&pastPostTypeOfBusiness="+pastPostTypeOfBusiness+"&pastPostAddressOfEmployer="+
			pastPostAddressOfEmployer+"&pastPostNameOfSupervisor="+pastPostNameOfSupervisor+"&pastPostReasonForLeaving="+
			pastPostReasonForLeaving+"&employeeType="+employeeType+"&employeeTypeByWorkPosition="+employeeTypeByWorkPosition+
			"&educationGridRowVal="+educationGridRowVal+"&schoolGridRowVal="+schoolGridRowVal+
			"&howManyPastPostForms="+howManyPastPostForms+"&dependentGridRowVal="+rowVal+"&employeeId="+employeeId+
			"&workUnitId="+workUnitId+"&jobId="+jobId+"&policyNumber="+policyNumber;
			
			$.ajax({
			    url: 'updatenationalemployeeregistrationform.jsp',		
			    data: stringValues,
			    type:'POST',
			    success:function(response){
				    	var divId = "nationalEmployeeDetailDiv" + employeeId;
			    		$('#'+divId).html(response);					
			    },
			    error:function(error){
					alert(error);
			    }
			});
		});//end form.update function
	});//end document.ready function
</script>