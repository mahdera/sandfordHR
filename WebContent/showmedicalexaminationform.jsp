<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<div>
	<form>
		<table border="1" width="100%" style="background:#eee">
			<tr>
				<td>
					<table border="1" width="100%">
						<tr>
							<td align="right"><font color="red">*</font>Employee:</td>
							<td>
								<select name="slctemployee" id="slctemployee" style="width:100%">
									<option value="" selected="selected">--Select--</option>
									<%
										List<Employee> employeeList = Employee.getAllEmployees();
										Iterator<Employee> employeeItr = employeeList.iterator();
										while(employeeItr.hasNext()){
											Employee employee = employeeItr.next();
											String fullName = employee.getFirstName()+" "+employee.getLastName();
											%>
											<option value="<%=employee.getId() %>"><%=fullName %></option>
											<%
										}//end while loop
									%>
								</select>
							</td>
							<td align="right"><font color="red">*</font>Date:</td>
							<td>
								<input type="text" name="txtdate" id="txtdate" size="8"/>
								<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txtdate')"/>.
							</td>
						</tr>
						<tr>
							<td align="right">Weight:</td>
							<td>
								<input type="text" name="txtweight" id="txtweight"/>
							</td>
							<td align="right">Height:</td>
							<td>
								<input type="text" name="txtheight" id="txtheight" size="8"/>							
							</td>
						</tr>
						<tr>
							<td align="right">Blood Pressure:</td>
							<td>
								<input type="text" name="txtbloodpressure" id="txtbloodpressure"/>
							</td>
							<td align="right">Pulse:</td>
							<td>
								<input type="text" name="txtpulse" id="txtpulse" size="8"/>							
							</td>
						</tr>
						<tr>
							<td align="right">Temperature:</td>
							<td>
								<input type="text" name="txttemperature" id="txttemperature"/>
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
							<td align="right">Skin:</td>
							<td><input type="text" name="txtskin" id="txtskin"/></td>
						</tr>
						<tr>
							<td align="right">Vision:</td>
							<td><input type="text" name="txtvision" id="txtvision"/></td>
						</tr>
						<tr>
							<td align="right">Hearing:</td>
							<td><input type="text" name="txthearing" id="txthearing"/></td>
						</tr>
						<tr>
							<td align="right">Teeth:</td>
							<td><input type="text" name="txtteeth" id="txtteeth"/></td>
						</tr>
						<tr>
							<td align="right">Chest:</td>
							<td><input type="text" name="txtchest" id="txtchest"/></td>
						</tr>
						<tr>
							<td align="right">Abdomen:</td>
							<td><input type="text" name="txtabdomen" id="txtabdomen"/></td>
						</tr>
						<tr>
							<td align="right">General:</td>
							<td><input type="text" name="txtgeneral" id="txtgeneral"/></td>
						</tr>					
					</table>
				</td>
			</tr>
			<tr>
				<td>
					ABILITY TO ADJUST TO WORK ENVIRONMENT (If you are able to comment):
					<br/>
					<textarea class="jqte-test" name="textareaabilitytoadjust" id="textareaabilitytoadjust" rows="3" style="width:100%"></textarea>	
				</td>
			</tr>
			<tr>
				<td>
					ANTICIPATED ABILITY TO WORK AT 2500 METERS ABOVE SEE LEVEL:
					<br/>
					<textarea class="jqte-test" name="textareaabilityaboveseelevel" id="textareaabilityaboveseelevel" rows="3" style="width:100%"></textarea>	
				</td>
			</tr>	
			<tr>			
				<td>
					Doctor's Name:<br/>
					<input type="text" name="txtdoctorname" id="txtdoctorname"/>
				</td>
			</tr>	
			<tr>
				<td>
					Health Facility Address:<br/>
					<textarea class="jqte-test" name="textareahealthfacilityaddress" id="textareahealthfacilityaddress" rows="3" style="width:100%"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="button" value="Save" class="input-submit" id="btnsave"/>
					<input type="reset" value="Clear" class="input-submit"/>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<p class="msg info">N.B. Fields indicated with <font color="red">*</font> are required!</p>
				</td>
			</tr>
		</table>
		<div id="errorDiv"></div>
	</form>	
</div>
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
		
		$('#btnsave').click(function(){
			var employeeId = $('#slctemployee').val();
			var medicationDate = $('#txtdate').val();
			var weight = $('#txtweight').val();
			var height = $('#txtheight').val();
			var bp = $('#txtbloodpressure').val();
			var pulse = $('#txtpulse').val();
			var temperature = $('#txttemperature').val();
			var skin = $('#txtskin').val();
			var vision = $('#txtvision').val();
			var hearing = $('#txthearing').val();
			var teeth = $('#txtteeth').val();
			var chest = $('#txtchest').val();
			var abdomen = $('#txtabdomen').val();
			var general = $('#txtgeneral').val();
			var abilityToAdjust = $('#textareaabilitytoadjust').val();
			var aboveSeaLevel = $('#textareaabilityaboveseelevel').val();
			var doctorName = $('#txtdoctorname').val();
			var healthFacilityAddress = $('#textareahealthfacilityaddress').val();
			
			var dataString = "employeeId="+employeeId+"&medicationDate="+medicationDate+
			"&weight="+weight+"&height="+height+"&bp="+bp+"&pulse="+pulse+
			"&temperature="+temperature+"&skin="+skin+"&vision="+vision+"&hearing="+
			hearing+"&teeth="+teeth+"&chest="+chest+"&abdomen="+abdomen+"&general="+
			general+"&abilityToAdjust="+abilityToAdjust+"&aboveSeaLevel="+aboveSeaLevel+
			"&doctorName="+doctorName+"&healthFacilityAddress="+healthFacilityAddress;
			
			if(employeeId != "" && medicationDate != ""){
				$.ajax({
				    url: 'savemedicalexaminationform.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){
				    		alert(response);
				    		$('#formDetailDiv').load('showmedicalexaminationform.jsp');					
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}else{
				$('#errorDiv').html("<p class='msg error'>Missing data! Enter all required data fields!</p>");
			}
		});//end button.save function
	});//end document.ready function
</script>