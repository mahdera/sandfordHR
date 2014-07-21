<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long medicalExaminationFormId = Long.parseLong(request.getParameter("medicalExaminationFormId"));
	MedicalExaminationForm medicalExaminationForm = MedicalExaminationForm.getMedicalExaminationForm(medicalExaminationFormId);
%>
<div>
	<form>
		<table border="1" width="100%" style="background:#eee">
			<tr>
				<td>
					<table border="1" width="100%">
						<tr>
							<td>Employee:</td>
							<td>
								<select name="slctemployee" id="slctemployee" style="width:100%" disabled="disabled">
									<option value="" selected="selected">--Select--</option>
									<%
										List<Employee> employeeList = Employee.getAllEmployees();
										Iterator<Employee> employeeItr = employeeList.iterator();
										while(employeeItr.hasNext()){
											Employee employee = employeeItr.next();
											String fullName = employee.getFirstName()+" "+employee.getLastName();
											if(employee.getId() == medicalExaminationForm.getEmployeeId()){
											%>
												<option value="<%=employee.getId() %>" selected="selected"><%=fullName %></option>
											<%
											}else{
											%>
												<option value="<%=employee.getId() %>"><%=fullName %></option>	
											<%
											}
										}//end while loop
									%>
								</select>
							</td>
							<td>Date:</td>
							<td>
								<input type="text" name="txtdate" id="txtdate" size="8" disabled="disabled" value="<%=medicalExaminationForm.getMedicalExamDate() %>"/>
								<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdate')"/>.
							</td>
						</tr>
						<tr>
							<td>Weight:</td>
							<td>
								<input type="text" name="txtweight" id="txtweight" disabled="disabled" value="<%=medicalExaminationForm.getWeight() %>"/>
							</td>
							<td>Height:</td>
							<td>
								<input type="text" name="txtheight" id="txtheight" disabled="disabled" size="8" value="<%=medicalExaminationForm.getHeight() %>"/>							
							</td>
						</tr>
						<tr>
							<td>Blood Pressure:</td>
							<td>
								<input type="text" name="txtbloodpressure" id="txtbloodpressure" disabled="disabled" value="<%=medicalExaminationForm.getBloodPressure() %>"/>
							</td>
							<td>Pulse:</td>
							<td>
								<input type="text" name="txtpulse" id="txtpulse" size="8" disabled="disabled" value="<%=medicalExaminationForm.getPulse() %>"/>							
							</td>
						</tr>
						<tr>
							<td>Temperature:</td>
							<td>
								<input type="text" name="txttemperature" id="txttemperature" disabled="disabled" value="<%=medicalExaminationForm.getTemperature() %>"/>
							</td>
							<td></td>
							<td>	</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr style="background:#ccc">
				<td>
					MEDICAL EXAMINATION
				</td>
			</tr>
			<tr>
				<td>
					<table border="1" width="100%">
						<tr>
							<td>Skin:</td>
							<td><input type="text" name="txtskin" disabled="disabled" id="txtskin" value="<%=medicalExaminationForm.getSkin() %>"/></td>
						</tr>
						<tr>
							<td>Vision:</td>
							<td><input type="text" name="txtvision" disabled="disabled" id="txtvision" value="<%=medicalExaminationForm.getVision() %>"/></td>
						</tr>
						<tr>
							<td>Hearing:</td>
							<td><input type="text" name="txthearing" disabled="disabled" id="txthearing" value="<%=medicalExaminationForm.getHearing() %>"/></td>
						</tr>
						<tr>
							<td>Teeth:</td>
							<td><input type="text" name="txtteeth" disabled="disabled" id="txtteeth" value="<%=medicalExaminationForm.getTeeth() %>"/></td>
						</tr>
						<tr>
							<td>Chest:</td>
							<td><input type="text" name="txtchest" disabled="disabled" id="txtchest" value="<%=medicalExaminationForm.getChest() %>"/></td>
						</tr>
						<tr>
							<td>Abdomen:</td>
							<td><input type="text" name="txtabdomen" disabled="disabled" id="txtabdomen" value="<%=medicalExaminationForm.getAbdomen() %>"/></td>
						</tr>
						<tr>
							<td>General:</td>
							<td><input type="text" name="txtgeneral" disabled="disabled" id="txtgeneral" value="<%=medicalExaminationForm.getGeneral() %>"/></td>
						</tr>					
					</table>
				</td>
			</tr>
			<tr>
				<td>
					ABILITY TO ADJUST TO WORK ENVIRONMENT (If you are able to comment):
					<br/>
					<textarea name="textareaabilitytoadjust" disabled="disabled" id="textareaabilitytoadjust" rows="3" style="width:100%"><%=medicalExaminationForm.getAbilityAdjustWorkEnvironment() %></textarea>	
				</td>
			</tr>
			<tr>
				<td>
					ANTICIPATED ABILITY TO WORK AT 2500 METERS ABOVE SEE LEVEL:
					<br/>
					<textarea name="textareaabilityaboveseelevel" disabled="disabled" id="textareaabilityaboveseelevel" rows="3" style="width:100%"><%=medicalExaminationForm.getAbilitySeaLevel() %></textarea>	
				</td>
			</tr>	
			<tr>			
				<td>
					Doctor's Name:<br/>
					<input type="text" name="txtdoctorname" disabled="disabled" id="txtdoctorname" value="<%=medicalExaminationForm.getDoctorName() %>"/>
				</td>
			</tr>	
			<tr>
				<td>
					Health Facility Address:<br/>
					<textarea name="textareahealthfacilityaddress" disabled="disabled" id="textareahealthfacilityaddress" rows="3" style="width:100%"><%=medicalExaminationForm.getHealthFacilityAddress() %></textarea>
				</td>
			</tr>			
		</table>
	</form>
</div>