<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long medicalExaminationFormId = Long.parseLong(request.getParameter("medicalExaminationFormId"));
	MedicalExaminationForm medicalExaminationForm = MedicalExaminationForm.getMedicalExaminationForm(medicalExaminationFormId);
	//now define the control names in here...
	String employeeIdControlName = "slctemployee" + medicalExaminationFormId;
	String medicalExamDateControlName = "txtdate" + medicalExaminationFormId;
	String weightControlName = "txtweight" + medicalExaminationFormId;
	String heightControlName = "txtheight" + medicalExaminationFormId;
	String bloodPressureControlName = "txtbloodpressure" + medicalExaminationFormId;
	String pulseControlName = "txtpulse" + medicalExaminationFormId;
	String temperatureControlName = "txttemperature" + medicalExaminationFormId;
	String skinControlName = "txtskin" + medicalExaminationFormId;
	String visionControlName = "txtvision" + medicalExaminationFormId;
	String hearingControlName = "txthearing" + medicalExaminationFormId;
	String teethControlName = "txtteeth" + medicalExaminationFormId;
	String chestControlName = "txtchest" + medicalExaminationFormId;
	String abdomenControlName = "txtabdomen" + medicalExaminationFormId;
	String generalControlName = "txtgeneral" + medicalExaminationFormId;
	String abilityAdjustWorkEnvironmentControlName = "textareaabilitytoadjust" + medicalExaminationFormId;
	String seaLevelControlName = "textareaabilityaboveseelevel" + medicalExaminationFormId;
	String doctorNameControlName = "txtdoctorname" + medicalExaminationFormId;
	String healthFacilityControlName = "textareahealthfacilityaddress" + medicalExaminationFormId;
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
								<select name="<%=employeeIdControlName %>" id="<%=employeeIdControlName %>" style="width:100%">
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
								<input type="text" name="<%=medicalExamDateControlName %>" id="<%=medicalExamDateControlName %>" size="8" value="<%=medicalExaminationForm.getMedicalExamDate() %>"/>
								<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=medicalExamDateControlName %>')"/>.
							</td>
						</tr>
						<tr>
							<td>Weight:</td>
							<td>
								<input type="text" name="<%=weightControlName %>" id="<%=weightControlName %>" value="<%=medicalExaminationForm.getWeight() %>"/>
							</td>
							<td>Height:</td>
							<td>
								<input type="text" name="<%=heightControlName %>" id="<%=heightControlName %>" size="8" value="<%=medicalExaminationForm.getHeight() %>"/>							
							</td>
						</tr>
						<tr>
							<td>Blood Pressure:</td>
							<td>
								<input type="text" name="<%=bloodPressureControlName %>" id="<%=bloodPressureControlName %>" value="<%=medicalExaminationForm.getBloodPressure() %>"/>
							</td>
							<td>Pulse:</td>
							<td>
								<input type="text" name="<%=pulseControlName %>" id="<%=pulseControlName %>" size="8" value="<%=medicalExaminationForm.getPulse() %>"/>							
							</td>
						</tr>
						<tr>
							<td>Temperature:</td>
							<td>
								<input type="text" name="<%=temperatureControlName %>" id="<%=temperatureControlName %>" value="<%=medicalExaminationForm.getTemperature() %>"/>
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
							<td><input type="text" name="<%=skinControlName %>" id="<%=skinControlName %>" value="<%=medicalExaminationForm.getSkin() %>"/></td>
						</tr>
						<tr>
							<td>Vision:</td>
							<td><input type="text" name="<%=visionControlName %>" id="<%=visionControlName %>" value="<%=medicalExaminationForm.getVision() %>"/></td>
						</tr>
						<tr>
							<td>Hearing:</td>
							<td><input type="text" name="<%=hearingControlName %>" id="<%=hearingControlName %>" value="<%=medicalExaminationForm.getHearing() %>"/></td>
						</tr>
						<tr>
							<td>Teeth:</td>
							<td><input type="text" name="<%=teethControlName %>" id="<%=teethControlName %>" value="<%=medicalExaminationForm.getTeeth() %>"/></td>
						</tr>
						<tr>
							<td>Chest:</td>
							<td><input type="text" name="<%=chestControlName %>" id="<%=chestControlName %>" value="<%=medicalExaminationForm.getChest() %>"/></td>
						</tr>
						<tr>
							<td>Abdomen:</td>
							<td><input type="text" name="<%=abdomenControlName %>" id="<%=abdomenControlName %>" value="<%=medicalExaminationForm.getAbdomen() %>"/></td>
						</tr>
						<tr>
							<td>General:</td>
							<td><input type="text" name="<%=generalControlName %>" id="<%=generalControlName %>" value="<%=medicalExaminationForm.getGeneral() %>"/></td>
						</tr>					
					</table>
				</td>
			</tr>
			<tr>
				<td>
					ABILITY TO ADJUST TO WORK ENVIRONMENT (If you are able to comment):
					<br/>
					<textarea name="<%=abilityAdjustWorkEnvironmentControlName %>" id="<%=abilityAdjustWorkEnvironmentControlName %>" rows="3" style="width:100%"><%=medicalExaminationForm.getAbilityAdjustWorkEnvironment() %></textarea>	
				</td>
			</tr>
			<tr>
				<td>
					ANTICIPATED ABILITY TO WORK AT 2500 METERS ABOVE SEE LEVEL:
					<br/>
					<textarea name="<%=seaLevelControlName %>" id="<%=seaLevelControlName %>" rows="3" style="width:100%"><%=medicalExaminationForm.getAbilitySeaLevel() %></textarea>	
				</td>
			</tr>	
			<tr>			
				<td>
					Doctor's Name:<br/>
					<input type="text" name="<%=doctorNameControlName %>" id="<%=doctorNameControlName %>" value="<%=medicalExaminationForm.getDoctorName() %>"/>
				</td>
			</tr>	
			<tr>
				<td>
					Health Facility Address:<br/>
					<textarea name="<%=healthFacilityControlName %>" id="<%=healthFacilityControlName %>" rows="3" style="width:100%"><%=medicalExaminationForm.getHealthFacilityAddress() %></textarea>
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
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btnupdate').click(function(){			
			var medicalExaminationFormId = "<%=medicalExaminationFormId%>";
			var employeeId = $('#slctemployee'+medicalExaminationFormId).val();
			var medicationDate = $('#txtdate'+medicalExaminationFormId).val();
			var weight = $('#txtweight'+medicalExaminationFormId).val();
			var height = $('#txtheight'+medicalExaminationFormId).val();
			var bp = $('#txtbloodpressure'+medicalExaminationFormId).val();
			var pulse = $('#txtpulse'+medicalExaminationFormId).val();
			var temperature = $('#txttemperature'+medicalExaminationFormId).val();
			var skin = $('#txtskin'+medicalExaminationFormId).val();
			var vision = $('#txtvision'+medicalExaminationFormId).val();
			var hearing = $('#txthearing'+medicalExaminationFormId).val();
			var teeth = $('#txtteeth'+medicalExaminationFormId).val();
			var chest = $('#txtchest'+medicalExaminationFormId).val();
			var abdomen = $('#txtabdomen'+medicalExaminationFormId).val();
			var general = $('#txtgeneral'+medicalExaminationFormId).val();
			var abilityToAdjust = $('#textareaabilitytoadjust'+medicalExaminationFormId).val();
			var aboveSeaLevel = $('#textareaabilityaboveseelevel'+medicalExaminationFormId).val();
			var doctorName = $('#txtdoctorname'+medicalExaminationFormId).val();
			var healthFacilityAddress = $('#textareahealthfacilityaddress'+medicalExaminationFormId).val();
			
			var dataString = "employeeId="+employeeId+"&medicationDate="+medicationDate+
			"&weight="+weight+"&height="+height+"&bp="+bp+"&pulse="+pulse+
			"&temperature="+temperature+"&skin="+skin+"&vision="+vision+"&hearing="+
			hearing+"&teeth="+teeth+"&chest="+chest+"&abdomen="+abdomen+"&general="+
			general+"&abilityToAdjust="+abilityToAdjust+"&aboveSeaLevel="+aboveSeaLevel+
			"&doctorName="+doctorName+"&healthFacilityAddress="+healthFacilityAddress+
			"&medicalExaminationFormId="+medicalExaminationFormId;
			
			$.ajax({
			    url: 'updatemedicalexaminationform.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){
			    		var divId = "medicalExaminationFormDetailDiv" + medicalExaminationFormId;
			    		$('#'+divId).html(response);					
			    },
			    error:function(error){
					alert(error);
			    }
			});
		});//end button.save function
	});//end document.ready function
</script>