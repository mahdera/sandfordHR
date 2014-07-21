<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	int departmentId = Integer.parseInt(request.getParameter("departmentId"));
%>
<table border="1" width="100%">
	<tr style="background:#eee;font-weight:bolder;">
		<td>Ser.No.</td>
		<td>Absent</td>
		<td>Employee</td>
		<td>Punch In</td>
		<td>Punch In Note</td>
		<td>Punch Out</td>
		<td>Punch Out Note</td>
		<td>Total</td>
	</tr>
	<%
		List<Employee> employeeList = Employee.getAllEmployeesOfThisDepartment(departmentId);
		Iterator<Employee> employeeItr = employeeList.iterator();
		int ctr=1;
		while(employeeItr.hasNext()){
			Employee employee = employeeItr.next();
			String fullName = employee.getFirstName()+" "+employee.getMiddleName()+" "+employee.getLastName();
			//define the control names in here...
			String absentControlName = "chkabsent" + ctr;
			String employeeIdControlName = "hiddenemployeeid" + ctr;
			String punchInControlName = "txtpunchin" + ctr;
			String punchInNoteControlName = "textareapunchinnote" + ctr;
			String punchOutControlName = "txtpunchout" + ctr;
			String punchOutNoteControlName = "textareapunchoutnote" + ctr;
			String totalTimeControlName = "txttotal" + ctr;
			%>
			<tr>
				<td width="1%"><%=ctr %></td>
				<td>
					<input type="checkbox" name="<%=absentControlName %>" id="<%=absentControlName%>" value="Absent"/>
				</td>
				<td>
					<%=fullName %>
					<input type="hidden" name="<%=employeeIdControlName %>" id="<%=employeeIdControlName %>" value="<%=employee.getId() %>"/>
				</td>
				<td>
					<font color="red">*</font>
					<input type="text" style="width:80%" name="<%=punchInControlName %>" id="<%=punchInControlName %>"/>									
					<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=punchInControlName %>','yyyyMMdd','dropdown',true,'12',true);" />
				</td>
				<td>
					<textarea rows="3" style="width:100%" name="<%=punchInNoteControlName %>" id="<%=punchInNoteControlName %>"></textarea>
				</td>
				<td>
					<font color="red">*</font>
					<input type="text" style="width:80%" name="<%=punchOutControlName %>" id="<%=punchOutControlName %>"/>									
					<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=punchOutControlName %>','yyyyMMdd','dropdown',true,'12',true);" />
				</td>
				<td>
					<textarea rows="3" style="width:100%" name="<%=punchOutNoteControlName %>" id="<%=punchOutNoteControlName %>" class="punchout"></textarea>
				</td>
				<td>
					<input type="text" name="<%=totalTimeControlName %>" id="<%=totalTimeControlName %>" disabled="disabled" size="8" value="0.0"/>
				</td>
			</tr>
			<%
			ctr++;
		}//end while loop
	%>	
	<tr>
		<td colspan="8" align="right">
			<input type="button" value="Save" class="input-submit" id="btnsave"/>
			<input type="reset" value="Clear" class="input-submit"/>
		</td>
	</tr>
	<tr>
		<td colspan="8">
			<p class="msg info">N.B. Fields indicated with <font color="red">*</font> are required!</p>
		</td>
	</tr>
</table>
<div id="errorDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btnsave').click(function(){
			var ctr = "<%=ctr-1%>";
			var dataString = "";
			var fieldValuesEmpty = false;
			for(var i=1;i<=ctr;i++){
				//now define the control names in here...
				var hiddenEmployeeIdControlName = "hiddenemployeeid" + i;
				var absentControlName = "chkabsent" + i;
				var punchInControlName = "txtpunchin" + i;
				var punchInNoteControlName = "textareapunchinnote" + i;
				var punchOutControlName = "txtpunchout" + i;
				var punchOutNoteControlName = "textareapunchoutnote" + i;
				var totalHourControlName = "txttotal" + i;
				//now get the values and store them in a string...
				var employeeIdVal = $('#'+hiddenEmployeeIdControlName).val();
				var punchInVal = $('#'+punchInControlName).val();
				var punchInNoteVal = $('#'+punchInNoteControlName).val();
				var punchOutVal = $('#'+punchOutControlName).val();
				var punchOutNoteVal = $('#'+punchOutNoteControlName).val();
				var totalHourVal = $('#'+totalHourControlName).val();
				var employeeStatus = "";
				if ($('#' + absentControlName).is(':checked')) {
					employeeStatus = "Absent";
				}else{
					employeeStatus = "Present";
				}
				
				/*if(punchInVal == "" || punchOutVal == "" && employeeStatus == "Present"){
					fieldValuesEmpty = true;
				}*/
								
				dataString += "&"+hiddenEmployeeIdControlName+"="+employeeIdVal+"&"+punchInControlName+
				"="+punchInVal+"&"+punchInNoteControlName+"="+punchInNoteVal+"&"+punchOutControlName+
				"="+punchOutVal+"&"+punchOutNoteControlName+"="+punchOutNoteVal+"&"+totalHourControlName+"="+
				totalHourVal+"&"+absentControlName+"="+employeeStatus;
			}//end for loop
			//now append the ctr value to the dataString variable...
			dataString += "&ctr="+ctr;
			
			if(fieldValuesEmpty != true){
				$.ajax({
				    url: 'saveattendancedataentry.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){			    		
				    		$('#departmentEmployeeDetailDiv').html(response);					
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}else{
				$('#errorDiv').html("<p class='msg error'>Missing Data! Please enter all the required data fields!</p>");
			}
		});//end document.ready function
		
		$('.punchout').blur(function(){
			var controlId = $(this).attr('id');
			var ctr = controlId.slice(-1);
						
			var punchInDateTimeControlName = "txtpunchin" + ctr;
			var punchOutDateTimeControlName = "txtpunchout" + ctr;
			var totalTimeControlName = "txttotal" + ctr;
			//now get the values from the controls...
			var punchInDateTimeVal = $('#'+punchInDateTimeControlName).val();
			var punchOutDateTimeVal = $('#'+punchOutDateTimeControlName).val();			
			var punchOutAmPm = punchOutDateTimeVal.slice(-2);
			var punchInAmPm = punchInDateTimeVal.slice(-2);
						
			var bits = punchInDateTimeVal.split(/\D/);	
			var punchInYear = bits[0];
			var punchInMonth = bits[1];
			var punchInDate = bits[2];
			var punchInHour = bits[3];
			var punchInMinute = bits[4];			
			//var punchInDate = new Date(bits[0], --bits[1], bits[2], bits[3], bits[4]);
			var bits2 = punchOutDateTimeVal.split(/\D/);
			var punchOutYear = bits2[0];
			var punchOutMonth = bits2[1];
			var punchOutDate = bits2[2];
			var punchOutHour = bits2[3];
			var punchOutMinute = bits2[4];
			//var punchOutDate = new Date(bits2[0], --bits2[1], bits2[2], bits2[3], bits2[4]);
			if(punchInYear == punchOutYear && punchInMonth == punchOutMonth && punchInDate == punchOutDate){
				if(punchOutAmPm == punchInAmPm){
					totalHourDiff = punchOutHour - punchInHour;
					totalMinuteDiff = punchOutMinute - punchInMinute;
					totalHourDiff = (totalMinuteDiff > 60 ? totalHourDiff + 1 : totalHourDiff);
					totalDiff = totalHourDiff+":"+Math.abs(totalMinuteDiff);
					$('#'+totalTimeControlName).val(totalDiff);		
				}else{
					//now convert the AM/PM approach to 24hr format for ease of calculation
					var punchIn24Hr = 0;
					var punchOut24Hr = 0;
					if(punchInAmPm == "AM"){						
						if(punchInHour == 12){
							punchIn24Hr = 0;
						}else if(punchInHour == 1){
							punchIn24Hr = 1;
						}else if(punchInHour == 2){
							punchIn24Hr = 2;
						}else if(punchInHour == 3){
							punchIn24Hr = 3;
						}else if(punchInHour == 4){
							punchIn24Hr = 4;
						}else if(punchInHour == 5){
							punchIn24Hr = 5;
						}else if(punchInHour == 6){
							punchIn24Hr = 6;
						}else if(punchInHour == 7){
							punchIn24Hr = 7;
						}else if(punchInHour == 8){
							punchIn24Hr = 8;
						}else if(punchInHour == 9){
							punchIn24Hr = 9;
						}else if(punchInHour == 10){
							punchIn24Hr = 10;
						}else if(punchInHour == 11){
							punchIn24Hr = 11;
						}
					}else if(punchInAmPm == "PM"){
						if(punchInHour == 12){
							punchIn24Hr = 12;
						}else if(punchInHour == 1){
							punchIn24Hr = 13;
						}else if(punchInHour == 2){
							punchIn24Hr = 14;
						}else if(punchInHour == 3){
							punchIn24Hr = 15;
						}else if(punchInHour == 4){
							punchIn24Hr = 16;
						}else if(punchInHour == 5){
							punchIn24Hr = 17;
						}else if(punchInHour == 6){
							punchIn24Hr = 18;
						}else if(punchInHour == 7){
							punchIn24Hr = 19;
						}else if(punchInHour == 8){
							punchIn24Hr = 20;
						}else if(punchInHour == 9){
							punchIn24Hr = 21;
						}else if(punchInHour == 10){
							punchIn24Hr = 22;
						}else if(punchInHour == 11){
							punchIn24Hr = 23;
						}
					}
					///now do the same for punchOut
					if(punchOutAmPm == "AM"){						
						if(punchOutHour == 12){
							punchOut24Hr = 0;
						}else if(punchOutHour == 1){
							punchOut24Hr = 1;
						}else if(punchOutHour == 2){
							punchOut24Hr = 2;
						}else if(punchOutHour == 3){
							punchOut24Hr = 3;
						}else if(punchOutHour == 4){
							punchOut24Hr = 4;
						}else if(punchOutHour == 5){
							punchOut24Hr = 5;
						}else if(punchOutHour == 6){
							punchOut24Hr = 6;
						}else if(punchOutHour == 7){
							punchOut24Hr = 7;
						}else if(punchOutHour == 8){
							punchOut24Hr = 8;
						}else if(punchOutHour == 9){
							punchOut24Hr = 9;
						}else if(punchOutHour == 10){
							punchOut24Hr = 10;
						}else if(punchOutHour == 11){
							punchOut24Hr = 11;
						}
					}else if(punchOutAmPm == "PM"){
						if(punchOutHour == 12){
							punchOut24Hr = 12;
						}else if(punchOutHour == 1){
							punchOut24Hr = 13;
						}else if(punchOutHour == 2){
							punchOut24Hr = 14;
						}else if(punchOutHour == 3){
							punchOut24Hr = 15;
						}else if(punchOutHour == 4){
							punchOut24Hr = 16;
						}else if(punchOutHour == 5){
							punchOut24Hr = 17;
						}else if(punchOutHour == 6){
							punchOut24Hr = 18;
						}else if(punchOutHour == 7){
							punchOut24Hr = 19;
						}else if(punchOutHour == 8){
							punchOut24Hr = 20;
						}else if(punchOutHour == 9){
							punchOut24Hr = 21;
						}else if(punchOutHour == 10){
							punchOut24Hr = 22;
						}else if(punchOutHour == 11){
							punchOut24Hr = 23;
						}
					}
					totalHourDiff = punchOut24Hr - punchIn24Hr;
					totalMinuteDiff = punchOutMinute - punchInMinute;
					totalHourDiff = (totalMinuteDiff > 60 ? totalHourDiff + 1 : totalHourDiff);
					totalDiff = totalHourDiff+":"+Math.abs(totalMinuteDiff);
					$('#'+totalTimeControlName).val(totalDiff);
				}
			}else{
				alert("Incorrect Punch in and Punch out values!");
			}		
		});
	});//end document.ready function
</script>