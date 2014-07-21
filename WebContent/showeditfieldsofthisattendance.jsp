<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	long attendanceId = Long.parseLong(request.getParameter("attendanceId"));
	Attendance attendance = Attendance.getAttendance(attendanceId);
	//now define the control names in here...
	String punchInControlName = "txtpunchin" + attendanceId;
	String punchInNoteControlName = "textareapunchinnote" + attendanceId;
	String punchOutControlName = "txtpunchout" + attendanceId;
	String punchOutNoteControlName = "textareapunchoutnote" + attendanceId;
	String totalHourControlName = "txttotal" + attendanceId;
%>
<form>
	<table border="1" width="100%">
		<tr>
			<td>
				<input type="text" style="width:80%" name="<%=punchInControlName %>" id="<%=punchInControlName %>" value="<%=String.valueOf(attendance.getPunchIn()) %>"/>									
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=punchInControlName %>','yyyyMMdd','dropdown',true,'12',true);" />
			</td>
			<td>
				<textarea rows="2" style="width:100%" name="<%=punchInNoteControlName %>" id="<%=punchInNoteControlName %>"><%=attendance.getPunchInNote() %></textarea>
			</td>
			<td>
				<input type="text" style="width:80%" name="<%=punchOutControlName %>" id="<%=punchOutControlName %>" value="<%=String.valueOf(attendance.getPunchOut()) %>"/>									
				<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('<%=punchOutControlName %>','yyyyMMdd','dropdown',true,'12',true);" />
			</td>
			<td>
				<textarea rows="2" style="width:100%" name="<%=punchOutNoteControlName %>" id="<%=punchOutNoteControlName %>" class="punchout"><%=attendance.getPunchOutNote() %></textarea>
			</td>	
			<td>
				<input type="text" size="8" name="<%=totalHourControlName %>" id="<%=totalHourControlName %>" value="<%=attendance.getTotalHour() %>" disabled="disabled"/>
			</td>		
		</tr>
		<tr>
			<td colspan="5" align="right">
				<input type="button" value="Update" class="input-submit"/>
				<input type="reset" value="Undo" class="input-submit"/>
			</td>
		</tr>
	</table>
</form>
<script type="text/javascript">
	$(document).ready(function(){
		$('.input-submit').click(function(){
			var buttonVal = $(this).val();
			if(buttonVal == "Update"){
				var attendanceId = "<%=attendanceId%>";
				//now define the control names in here...
				var punchInControlName = "txtpunchin" + attendanceId;
				var punchInNoteControlName = "textareapunchinnote" + attendanceId;
				var punchOutControlName = "txtpunchout" + attendanceId;
				var punchOutNoteControlName = "textareapunchoutnote" + attendanceId;
				var totalHourControlName = "txttotal" + attendanceId;
				//now get the values using the control names defined just above...
				var punchInVal = $('#'+punchInControlName).val();
				var punchInNoteVal = $('#'+punchInNoteControlName).val();
				var punchOutVal = $('#'+punchOutControlName).val();
				var punchOutNoteVal = $('#'+punchOutNoteControlName).val();
				var totalHourVal = $('#'+totalHourControlName).val();
				
				var dataString = "punchIn="+punchInVal+"&punchInNote="+punchInNoteVal+"&punchOut="+
				punchOutVal+"&punchOutNote="+punchOutNoteVal+"&attendanceId="+attendanceId+
				"&totalHour="+totalHourVal;
				
				//now do the action in here...
				$.ajax({
				    url: 'updateattendance.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){
				    		var divId = "attendanceEditDetailDiv" + attendanceId;
				    		$('#'+divId).html(response);					
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}
		});//end button.click function
		
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
	});//end document.ready
</script>