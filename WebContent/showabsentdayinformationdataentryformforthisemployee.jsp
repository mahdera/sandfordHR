<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.StringTokenizer"%>
<%@page import="java.sql.Date"%>
<%@page import="java.text.SimpleDateFormat" %>
<%@page import="java.util.Calendar" %>
<%
	SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	Calendar cal = Calendar.getInstance();
	String currentDate = dateFormat.format(cal.getTime());
	Date modificationDate = Date.valueOf(currentDate);
	StringTokenizer token = new StringTokenizer(currentDate,"-");
	String strYear = token.nextToken();	
	int year = Integer.parseInt(strYear);

	String employeeIdNumber = request.getParameter("employeeIdNumber");
	//now find employee using the passed employee id number...
	Employee employee = Employee.findEmployeeUsingEmployeeIdNumber(employeeIdNumber);
	if(employee != null){
		String fullName = employee.getFirstName()+" "+employee.getMiddleName()+" "+employee.getLastName();
		%>
			<form style="background:#eee">
				<table border="0" width="100%">
					<tr>
						<td>Employee:</td>
						<td>
							<input type="text" disabled="disabled" size="30" value="<%=fullName %>"/>
						</td>
					</tr>
					<tr>
						<td><font color="red">*</font> Year:</td>
						<td>
							<select name="slctyear" id="slctyear" style="width:100%">
							<option value="" selected="selected">--Select--</option>
								<%						
									int stopYear = year - 5;
									for(int i=year;i>=stopYear;i--){
										%>
											<option value="<%=i%>"><%=i %></option>
										<%
									}//end for...loop
								%>
							</select>
							<input type="hidden" name="txtemployeeid" id="txtemployeeid" value="<%=employee.getId() %>"/>
						</td>
					</tr>
					<tr>
						<td><font color="red">*</font> Month:</td>
						<td>
							<select name="slctmonth" id="slctmonth" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<option value="1">January</option>
								<option value="2">February</option>
								<option value="3">March</option>
								<option value="4">April</option>
								<option value="5">May</option>
								<option value="6">June</option>
								<option value="7">July</option>
								<option value="8">August</option>
								<option value="9">September</option>
								<option value="10">October</option>
								<option value="11">November</option>
								<option value="12">December</option>
							</select>
						</td>
					</tr>
					<tr>
						<td><font color="red">*</font> Number of Days Absent:</td>
						<td>
							<input type="text" name="txtnumberofdaysabsent" id="txtnumberofdaysabsent" size="30"/>
						</td>
					</tr>
					<tr>
						<td colspan="2" align="right">
							<input type="button" value="Save" id="btnsave" class="input-submit"/>
							<input type="reset" value="Clear" class="input-submit"/>
						</td>						
					</tr>					
				</table>
			</form>
		<%
	}else{
		%>
			<p class="msg warning">There is no employee record with the given employee id number! Please try again!</p>
		<%
	}
%>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btnsave').click(function(){
			var employeeId = $('#txtemployeeid').val();
			var year = $('#slctyear').val();
			var month = $('#slctmonth').val();
			var numberOfDaysAbsent = $('#txtnumberofdaysabsent').val();
			
			if(year != "" && month != "" && numberOfDaysAbsent != ""){
				var dataString = "employeeId="+employeeId+"&year="+year+"&month="+month+"&numberOfDaysAbsent="+
				numberOfDaysAbsent;
				
				$.ajax({
				    url: 'saveabsentdayinformation.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){				    		
				    		$('#absentDayInformationDetailDiv').load('showabsentdayinformationdataentryform.jsp');					
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}
		});//end save.button click
	});//end document.ready function
</script>