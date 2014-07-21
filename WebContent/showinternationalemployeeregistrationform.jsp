<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<form id="internationalEmployeeRegistrationForm">
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
				<tr>
					<td colspan="2">
						<div id="errorDiv"></div>
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
							<tr style="background:#eee">
								<td align="right">Employee Identification Number (Auto Generated):</td>
								<td>
									<input type="text" name="txtemployeeidnumber" id="txtemployeeidnumber" style="width:98%;font-weight:bolder"/>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table border="1" width="100%">
							<tr style="background:#eee">
								<td>1. <font color="red">*</font> Family name (grand father's name)</td>
								<td> <font color="red">*</font> First name</td>
								<td>Middle name</td>
								<td>Maiden name, if any</td>
							</tr>
							<tr style="background:#eee">
								<td><input type="text" style="width:98%" name="txtfamilyname" id="txtfamilyname"/></td>
								<td><input type="text" style="width:98%" name="txtfirstname" id="txtfirstname"/></td>
								<td><input type="text" style="width:98%" name="txtmiddlename" id="txtmiddlename"/></td>
								<td><input type="text" style="width:98%" name="txtmaidenname" id="txtmaidenname"/></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table border="1" width="100%">
							<tr style="background:#eee">
								<td>2.  <font color="red">*</font> Date of birth</td>
								<td>3. Place of birth</td>
								<td>4. Nationality (ies) at birth</td>
								<td>5. Present nationality (ies)</td>
								<td>6.  <font color="red">*</font> Sex</td>
							</tr>
							<tr style="background:#eee">
								<td>
									<input type="text" style="width:80%" name="txtdateofbirth" id="txtdateofbirth"/>									
									<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdateofbirth')" />
								</td>
								<td><input type="text" style="width:98%" name="txtplaceofbirth" id="txtplaceofbirth"/></td>
								<td><input type="text" style="width:98%" name="txtnationalityatbirth" id="txtnationalityatbirth"/></td>
								<td><input type="text" style="width:98%" name="txtpresentnationality" id="txtpresentnationality"/></td>
								<td>
									<select name="slctsex" id="slctsex" style="width:100%">
										<option value="" selected="selected">--Select--</option>
										<option value="Female">Female</option>
										<option value="Male">Male</option>
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
								<td>Married <input type="radio" name="radmaritalstatus" id="radmarried" value="Married"/></td>
								<td>Separated <input type="radio" name="radmaritalstatus" id="radseparated" value="Separated"/></td>
								<td>Widow(er) <input type="radio" name="radmaritalstatus" id="radwidower" value="Widow(er)"/></td>
								<td>Divorced <input type="radio" name="radmaritalstatus" id="raddivorced" value="Divorced"/></td>
								<td>Single <input type="radio" name="radmaritalstatus" id="radsingle" value="Single" checked="checked"/></td>
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
								<td><textarea class="jqte-test" style="width:100%" cols="10" rows="3" name="textareapermanentaddress" id="textareapermanentaddress"></textarea></td>
								<td><textarea class="jqte-test" style="width:100%" cols="10" rows="3" name="textareapresentaddress" id="textareapresentaddress"></textarea></td>
							</tr>
							<tr style="background:#eee">
								<td>Telephone No.</td>
								<td>Telephone/Fax No.</td>
							</tr>
							<tr style="background:#eee">
								<td><input type="text" style="width:98%" name="txttelephonenumber" id="txttelephonenumber"/></td>
								<td><input type="text" style="width:98%" name="txttelephonefax" id="txttelephonefax"/></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table border="1" width="100%">
							<tr style="background:#eee">
								<td>
									10. Have you any dependents?
									YES <input type="radio" name="raddependents" id="raddependentsyes" value="yes"/>
									NO <input type="radio" name="raddependents" id="raddependentsno" value="no" checked="checked"/>
									If the answer is "yes", give the following information:
								</td>
							</tr>
							<tr style="background:#eeeeee;display:none" id="dependentsRow">
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
												<th style="background:#cccccc;color:black;"> <font color="red">*</font> Date of Birth (yyyy-mm-dd)</th>
												<th style="background:#cccccc;color:black;">Relationship</th>												
											</tr>
											</thead>
											<tbody>
												<tr>										
													<td>	<input type="text" name="txtdependentname1" id="txtdependentname1" style="width:98%"/></td>
													<td>	<input type="text" name="txtdependentdateofbirth1" id="txtdependentdateofbirth1" style="width:98%"/></td>
													<td>	<input type="text" name="txtdependentrelationship1" id="txtdependentrelationship1" style="width:98%"/></td>																							
												</tr>																
											</tbody>
										</table>						
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2" style="vertical-align:middle">
						11. What is your preferred field of work?<br/>
						<textarea class="jqte-test" cols="10" rows="3" style="width:100%" name="textareapreferredfieldofwork" id="textareapreferredfieldofwork"></textarea>
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
												<tr>										
													<td>	<input type="text" name="txteducationnameplacecountry1" id="txteducationnameplacecountry1" style="width:98%"/></td>
													<td>	<input type="text" name="txteducationattendedfrom1" id="txteducationattendedfrom1" style="width:98%"/></td>
													<td>	<input type="text" name="txteducationattendedto1" id="txteducationattendedto1" style="width:98%"/></td>
													<td>	<input type="text" name="txteducationdegreesacademic1" id="txteducationdegreesacademic1" style="width:98%"/></td>
													<td>	<input type="text" name="txteducationmaincourseofstudy1" id="txteducationmaincourseofstudy1" style="width:98%"/></td>																							
												</tr>																
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
												<tr>										
													<td>	<input type="text" name="txtschoolnameplacecountry1" id="txtschoolnameplacecountry1" style="width:98%"/></td>
													<td>	<input type="text" name="txtschooltype1" id="txtschooltype1" style="width:98%"/></td>
													<td>	<input type="text" name="txtschoolattendedfrom1" id="txtschoolattendedfrom1" style="width:98%"/></td>
													<td>	<input type="text" name="txtschoolattendedto1" id="txtschoolattendedto1" style="width:98%"/></td>													
													<td>	<input type="text" name="txtschoolcertificatesordiplomasobtained1" id="txtschoolcertificatesordiplomasobtained1" style="width:98%"/></td>																							
												</tr>																
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
						<textarea class="jqte-test" cols="10" rows="3" style="width:100%" name="textareaprofessionalsocietiesactivities" id="textareaprofessionalsocietiesactivities"></textarea>
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						14. LIST ANY SIGNIFICANT PUBLICATIONS YOU HAVE WRITTEN<br/>
						<textarea class="jqte-test" cols="10" rows="3" style="width:100%" name="textareapublications" id="textareapublications"></textarea>
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						15. EMPLOYMENT RECORD: Starting with your present post, list in reverse order
						every employment you have had. User a separate block for each case.
						Include also service in the armed forces and note any period during which you were not
						gainfully employed. Give both gross and net salaries per annum for your last or present post.<br/>
						<textarea class="jqte-test" cols="10" rows="3" style="width:100%" name="textareaemploymentrecord" id="textareaemploymentrecord"></textarea>
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						A. PRESENT POST (LAST POST, IF NOT PRESENTLY IN EMPLOYMENT)
					</td>
				</tr>
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
								<td>Month/Year<br/><input type="text" style="width:98%" name="txtpresentpostfrom" id="txtpresentpostfrom"/></td>
								<td>Month/Year<br/><input type="text" style="width:98%" name="txtpresentpostto" id="txtpresentpostto"/></td>
								<td>
									Starting<br/>
									<input type="text" style="width:98%" name="txtpresentpoststartingsalary" id="txtpresentpoststartingsalary"/>
								</td>
								<td>
									Final<br/>
									<input type="text" style="width:98%" name="txtpresentpostfinalsalary" id="txtpresentpostfinalsalary"/>
								</td>
								<td>
									<br/>
									<textarea cols="10" rows="3" style="width:100%" name="textareapresentpostexacttitleofpost" id="textareapresentpostexacttitleofpost"></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									NAME OF EMPLOYER:<br/>
									<input type="text" style="width:98%" name="txtpresentpostnameofemployer" id="txtpresentpostnameofemployer"/>
								</td>
								<td colspan="3">
									TYPE OF BUSINESS:<br/>
									<input type="text" style="width:98%" name="txtpresentposttypeofbusiness" id="txtpresentposttypeofbusiness"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									ADDRESS OF EMPLOYER:<br/>
									<textarea cols="10" rows="3" style="width:100%" name="textareapresentpostaddressofemployer" id="textareapresentpostaddressofemployer"></textarea>
								</td>
								<td colspan="2">
									NAME OF SUPERVISOR:<br/>
									<input type="text" style="width:98%" name="textareapresentpostnameofsupervisor" id="textareapresentpostnameofsupervisor"/>
								</td>
							</tr>
							<tr>
								<td colspan="5">
									REASON FOR LEAVING:<br/>
									<textarea  class="jqte-test" cols="10" rows="3" style="width:100%" name="textareapresentpostreasonforleaving" id="textareapresentpostreasonforleaving"></textarea>
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
								<td>Month/Year<br/><input type="text" style="width:98%" name="txtpreviouspostfrom1" id="txtpreviouspostfrom1"/></td>
								<td>Month/Year<br/><input type="text" style="width:98%" name="txtpreviouspostto1" id="txtpreviouspostto1"/></td>
								<td>
									Starting<br/>
									<input type="text" style="width:98%" name="txtpreviouspoststartingsalary1" id="txtpreviouspoststartingsalary1"/>
								</td>
								<td>
									Final<br/>
									<input type="text" style="width:98%" name="txtpreviouspostfinalsalary1" id="txtpreviouspostfinalsalary1"/>
								</td>
								<td>
									<br/>
									<textarea cols="10" rows="3" style="width:100%" name="textareapreviouspostexacttitleofpost1" id="textareapreviouspostexacttitleofpost1"></textarea>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									NAME OF EMPLOYER:<br/>
									<input type="text" style="width:98%" name="textareapreviouspostnameofemployer1" id="textareapreviouspostnameofemployer1"/>
								</td>
								<td colspan="3">
									TYPE OF BUSINESS:<br/>
									<input type="text" style="width:98%" name="txtpreviousposttypeofbusiness1" id="txtpreviousposttypeofbusiness1"/>
								</td>
							</tr>
							<tr>
								<td colspan="3">
									ADDRESS OF EMPLOYER:<br/>
									<textarea cols="10" rows="3" style="width:100%" name="textareapreviouspostaddressofemployer1" id="textareapreviouspostaddressofemployer1"></textarea>
								</td>
								<td colspan="2">
									NAME OF SUPERVISOR:<br/>
									<input type="text" style="width:98%" name="textareapreviouspostnameofsupervisor1" id="textareapreviouspostnameofsupervisor1"/>
								</td>
							</tr>
							<tr>
								<td colspan="5">
									REASON FOR LEAVING:<br/>
									<textarea class="jqte-test" cols="10" rows="3" style="width:100%" name="textareapreviouspostreasonforleaving1" id="textareapreviouspostreasonforleaving1"></textarea>
								</td>
							</tr>
						</table>						
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						<div id="addedPreviousPostDiv"></div>
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2" style="text-align:right">
						<a href="#.jsp" id="addPreviousPostLink">Add More Previous Post</a>
						<div id="howManyPreviousPostDiv"></div>
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						16. HAVE YOU ANY OBJECTIONS TO OUR MAKING INQUIRIES OF YOUR PRESENT EMPLOYER?
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						YES <input type="radio" name="radobjection" id="radobjectionyes" value="yes"/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						NO <input type="radio" name="radobjection" id="radobjectionno" value="no" checked="checked"/>
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						17. REFERENCES: List three persons, not related to you, who are familiar with
						your character and qualifications. Do not repeat names of supervisors listed
						under item 15.
						<table border="1" width="100%">
							<tr>
								<th style="background:#cccccc;color:black;">FULL NAME</th>
								<th style="background:#cccccc;color:black;">FULL ADDRESS</th>
								<th style="background:#cccccc;color:black;">BUSINESS OR OCCUPATION</th>
							</tr>
							<tr>
								<td><input type="text" style="width:98%" name="txtreferencefullname1" id="txtreferencefullname1"/></td>
								<td><input type="text" style="width:98%" name="txtreferencefulladdress1" id="txtreferencefulladdress1"/></td>
								<td><input type="text" style="width:98%" name="txtreferencebusinessoroccupation1" id="txtreferencebusinessoroccupation1"/></td>
							</tr>
							<tr>
								<td><input type="text" style="width:98%" name="txtreferencefullname2" id="txtreferencefullname2"/></td>
								<td><input type="text" style="width:98%" name="txtreferencefulladdress2" id="txtreferencefulladdress2"/></td>
								<td><input type="text" style="width:98%" name="txtreferencebusinessoroccupation2" id="txtreferencebusinessoroccupation2"/></td>
							</tr>
							<tr>
								<td><input type="text" style="width:98%" name="txtreferencefullname3" id="txtreferencefullname3"/></td>
								<td><input type="text" style="width:98%" name="txtreferencefulladdress3" id="txtreferencefulladdress3"/></td>
								<td><input type="text" style="width:98%" name="txtreferencebusinessoroccupation3" id="txtreferencebusinessoroccupation3"/></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						18. HAVE YOU EVER BEEN ARRESTED, INDICTED, OR SUMMONED INTO COURT AS A DEFENDANT IN A CRIMINAL PROCEEDING, OR 
						CONVICTED, FINED OR IMPRISONED FOR THE VIOLATION OF ANY LAW (excluding minor traffic violations)?
						<input type="radio" name="radcriminalinformation" id="radcriminalinfoyes" value="yes"/> YES &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="radio" name="radcriminalinformation" id="radcriminalinfono" value="no" checked="checked"/> NO
					</td>
				</tr>
				<tr style="background:#eee">
					<td colspan="2">
						19. I certify that the statements made by me in answer to the foregoing questions
						are true, complete and correct to the best of my knowledge and belief.
						I understand that any misrepresentation or material omission made on this
						form or other document requested by the SIS renders a staff member of the SIS
						be able to terminate or dismiss the process.<br/>
						<select name="slctconfirmation" id="slctconfirmation" style="width:100%">
							<option value="" selected="selected">---Select--</option>
							<option value="agree">Agree</option>
							<option value="do not agree">Do not agree</option>
						</select>
					</td>
				</tr>
				<tr style="background:#000000;color:#ffffff">
					<td colspan="2">
						EMPLOYMENT TYPE DESCRIPTION<br/>
						In the following section, you are required to fill the employement details for the international staff.						
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table border="1" width="100%">
							<tr style="background:#eee">
								<td width="20%"> <font color="red">*</font> Employee Type:</td>
								<td>
									<select style="width:100%" id="slctemployeetype" name="slctemployeetype">
										<option value="" selected="selected">--Select--</option>
										<option value="Regular Contract Holder">Regular Contract Holder</option>
										<option value="ELD">ELD (Employment for Limited Duration)</option>
										<option value="Part-time Employee">Part-time Employee</option>
									</select>
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<div id="contractTypeDiv"></div>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<table border="1" width="100%">
							<tr style="background:#eee">
								<td width="20%"><font color="red">*</font> Employee Work Unit/Department:</td>
								<td>
									<select style="width:100%" id="slctemployeeworkunit" name="slctemployeeworkunit">
										<option value="" selected="selected">--Select--</option>
										<%
											List<Department> departmentList = Department.getAllDepartments();
											Iterator<Department> departmentItr = departmentList.iterator();
											while(departmentItr.hasNext()){
												Department department = departmentItr.next();
												%>
												<option value="<%=department.getId() %>"><%=department.getDepartmentName() %></option>		
												<%
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
								<td width="20%"><font color="red">*</font> Job Title:</td>
								<td>
									<select style="width:100%" id="slctjobtitle" name="slctjobtitle">
										<option value="" selected="selected">--Select--</option>
										<%
											List<Job> jobList = Job.getAllJobs();
											Iterator<Job> jobItr = jobList.iterator();
											while(jobItr.hasNext()){
												Job job = jobItr.next();
												%>
												<option value="<%=job.getId() %>"><%=job.getJobTitle() %></option>		
												<%
											}//end while loop
										%>																			
									</select>
								</td>
							</tr>
						</table>
					</td>
				</tr>		
				<tr style="background:#eeeeee">
					<td align="right" colspan="2">
						<div id="loadingDiv" style="display:none">
							<img src="images/loadingfb.gif" alt="Loading..."/>
						</div>
						<input type="button" value="Register" class="input-submit" id="saveButton"/>
						<input type="reset" value="Clear All" class="input-submit"/>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<p class="msg info">N.B. Fields identified with <font color="red">*</font> are required and hence can not be left blank!</p>
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
		
		$('#saveButton').attr("disabled", "disabled");
		
		$('#raddependentsyes').click(function(){
			$('#dependentsRow').show();
		});
		
		$('#raddependentsno').click(function(){
			$('#dependentsRow').hide();
		});
		
		//now generate the new employee id and add it to the input box....		
		$.ajax({
		    url: 'generateemployeeid.jsp',		
		    data: null,
		    type:'POST',
		    success:function(response){		    		
		    		$('#txtemployeeidnumber').val(response);					
		    },
		    error:function(error){
				alert(error);
		    }
		});
		
		//now get the cursor to the first field in the form...
		$('#txtfamilyname').focus();
		  
		$('#addPreviousPostLink').click(function(){			
			$('#howManyPreviousPostDiv').load('howmanypreviouspostdivdoyoulike.jsp');
		});
		
		$('#slctemployeetype').change(function(){
			var contractType = $('#slctemployeetype').val();
			if(contractType == "Regular Contract Holder"){
				$('#contractTypeDiv').load('showcontracttypeoptions.jsp');
			}else{
				$('#contractTypeDiv').html('');
			}
		});
		
		$('#slctconfirmation').change(function(){
			var selectedValue = $(this).val();
			if(selectedValue == "agree"){
				$('#saveButton').removeAttr("disabled");
			}else{
				$('#saveButton').attr("disabled", "disabled");
			}
		});
		
		$('#saveButton').click(function(){
			var familyName = $('#txtfamilyname').val();
			var 	firstName = $('#txtfirstname').val();
			var middleName = $('#txtmiddlename').val();
			var maidenName = $('#txtmaidenname').val();
			var dateOfBirth = $('#txtdateofbirth').val();
			var placeOfBirth = $('#txtplaceofbirth').val();
			var nationalityAtBirth = $('#txtnationalityatbirth').val();
			var presentNationality = $('#txtpresentnationality').val();
			var sex = $('#slctsex').val();
			var maritalStatus = $("input[name=radmaritalstatus]:checked", "#internationalEmployeeRegistrationForm").val();
			var anyDependent = $("input[name=raddependents]:checked", "#internationalEmployeeRegistrationForm").val();
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
			
			if(anyDependent == "yes"){
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
			}else{
				rowVal = 0;
			}
			
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
			if($('#txthowmany').val() != ""){
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
			
			var objectionContactingPresentEmployer = $("input[name=radobjection]:checked", '#internationalEmployeeRegistrationForm').val();
			var reference1FullName = $('#txtreferencefullname1').val();
			var reference1FullAddress = $('#txtreferencefulladdress1').val();
			var reference1BusinessOrOccupation = $('#txtreferencebusinessoroccupation1').val();
			var reference2FullName = $('#txtreferencefullname2').val();
			var reference2FullAddress = $('#txtreferencefulladdress2').val();
			var reference2BusinessOrOccupation = $('#txtreferencebusinessoroccupation2').val();
			var reference3FullName = $('#txtreferencefullname3').val();
			var reference3FullAddress = $('#txtreferencefulladdress3').val();
			var reference3BusinessOrOccupation = $('#txtreferencebusinessoroccupation3').val();
			var beenArrested = $("input[name=radcriminalinformation]:checked", "#internationalEmployeeRegistrationForm").val();
			
			var employeeType = $('#slctemployeetype').val();
			var contractType = "";
			if(employeeType == "Regular Contract Holder"){
				contractType = $('#slctcontracttype').val();
			}
			
			var workUnitId = $('#slctemployeeworkunit').val();
			var jobId = $('#slctjobtitle').val();
			var employeeIdNumber = $('#txtemployeeidnumber').val();
			
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
			pastPostReasonForLeaving+"&employeeType="+employeeType+"&contractType="+contractType+
			"&educationGridRowVal="+educationGridRowVal+"&schoolGridRowVal="+schoolGridRowVal+
			"&howManyPastPostForms="+howManyPastPostForms+"&dependentGridRowVal="+rowVal+"&workUnitId="+
			workUnitId+"&jobId="+jobId+"&employeeIdNumber="+employeeIdNumber;
			
			if(familyName != "" && firstName != "" && dateOfBirth != "" && sex != "" && employeeType != "" &&
					workUnitId != "" && jobId != ""){
				$('#loadingDiv').show();
				$.ajax({
				    url: 'saveinternationalemployeeregistrationform.jsp',		
				    data: stringValues,
				    type:'POST',
				    success:function(response){
				    		$('#loadingDiv').hide();
				    		alert(response);
				    		$('#employeeRegistrationFormDiv').load('showinternationalemployeeregistrationform.jsp');					
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}else{
				$('#errorDiv').html("<p class='msg error'>Missing data value! Please enter all the required data fileds and try again!</p>");
			}
		});//end form.save function
		
	});//end document.ready function
</script>