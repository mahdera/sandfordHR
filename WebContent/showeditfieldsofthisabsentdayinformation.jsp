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

	long absentDayInformationId = Long.parseLong(request.getParameter("absentDayInformationId"));
	AbsentDayInformation absentDayInformation = AbsentDayInformation.getAbsentDayInformation(absentDayInformationId);
	Employee employee = Employee.getEmployee(absentDayInformation.getEmployeeId());
	String fullName = employee.getFirstName()+" "+employee.getMiddleName()+" "+employee.getLastName();
	//now define the control names in here ...
	String yearControlName = "slctyear" + absentDayInformationId;
	String monthControlName = "slctmonth" + absentDayInformationId;
	String numberOfAbsentDaysControlName = "txtnumberofdaysabsent" + absentDayInformationId;
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
				<select name="<%=yearControlName %>" id="<%=yearControlName %>" style="width:100%">
				<option value="" selected="selected">--Select--</option>
					<%						
						int stopYear = year - 5;
						for(int i=year;i>=stopYear;i--){
							if(absentDayInformation.getYear() == i){
							%>
								<option value="<%=i%>" selected="selected"><%=i %></option>
							<%
							}else{
							%>
								<option value="<%=i%>"><%=i %></option>
							<%
							}
						}//end for...loop
					%>
				</select>				
			</td>
		</tr>
		<tr>
			<td><font color="red">*</font> Month:</td>
			<td>
				<select name="<%=monthControlName %>" id="<%=monthControlName %>" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						if(absentDayInformation.getMonth() == 1){
							%>
								<option value="1" selected="selected">January</option>
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
							<%
						}else if(absentDayInformation.getMonth() == 2){
							%>
							<option value="1">January</option>
							<option value="2" selected="selected">February</option>
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
						<%
						}else if(absentDayInformation.getMonth() == 3){
							%>
							<option value="1">January</option>
							<option value="2">February</option>
							<option value="3" selected="selected">March</option>
							<option value="4">April</option>
							<option value="5">May</option>
							<option value="6">June</option>
							<option value="7">July</option>
							<option value="8">August</option>
							<option value="9">September</option>
							<option value="10">October</option>
							<option value="11">November</option>
							<option value="12">December</option>
						<%
						}else if(absentDayInformation.getMonth() == 4){
							%>
							<option value="1">January</option>
							<option value="2">February</option>
							<option value="3">March</option>
							<option value="4" selected="selected">April</option>
							<option value="5">May</option>
							<option value="6">June</option>
							<option value="7">July</option>
							<option value="8">August</option>
							<option value="9">September</option>
							<option value="10">October</option>
							<option value="11">November</option>
							<option value="12">December</option>
						<%
						}else if(absentDayInformation.getMonth() == 5){
							%>
							<option value="1">January</option>
							<option value="2">February</option>
							<option value="3">March</option>
							<option value="4">April</option>
							<option value="5" selected="selected">May</option>
							<option value="6">June</option>
							<option value="7">July</option>
							<option value="8">August</option>
							<option value="9">September</option>
							<option value="10">October</option>
							<option value="11">November</option>
							<option value="12">December</option>
						<%
						}else if(absentDayInformation.getMonth() == 6){
							%>
							<option value="1">January</option>
							<option value="2">February</option>
							<option value="3">March</option>
							<option value="4">April</option>
							<option value="5">May</option>
							<option value="6" selected="selected">June</option>
							<option value="7">July</option>
							<option value="8">August</option>
							<option value="9">September</option>
							<option value="10">October</option>
							<option value="11">November</option>
							<option value="12">December</option>
						<%
						}else if(absentDayInformation.getMonth() == 7){
							%>
							<option value="1">January</option>
							<option value="2">February</option>
							<option value="3">March</option>
							<option value="4">April</option>
							<option value="5">May</option>
							<option value="6">June</option>
							<option value="7" selected="selected">July</option>
							<option value="8">August</option>
							<option value="9">September</option>
							<option value="10">October</option>
							<option value="11">November</option>
							<option value="12">December</option>
						<%
						}else if(absentDayInformation.getMonth() == 8){
							%>
							<option value="1">January</option>
							<option value="2">February</option>
							<option value="3">March</option>
							<option value="4">April</option>
							<option value="5">May</option>
							<option value="6">June</option>
							<option value="7">July</option>
							<option value="8" selected="selected">August</option>
							<option value="9">September</option>
							<option value="10">October</option>
							<option value="11">November</option>
							<option value="12">December</option>
						<%
						}else if(absentDayInformation.getMonth() == 9){
							%>
							<option value="1">January</option>
							<option value="2">February</option>
							<option value="3">March</option>
							<option value="4">April</option>
							<option value="5">May</option>
							<option value="6">June</option>
							<option value="7">July</option>
							<option value="8">August</option>
							<option value="9" selected="selected">September</option>
							<option value="10">October</option>
							<option value="11">November</option>
							<option value="12">December</option>
						<%
						}else if(absentDayInformation.getMonth() == 10){
							%>
							<option value="1">January</option>
							<option value="2">February</option>
							<option value="3">March</option>
							<option value="4">April</option>
							<option value="5">May</option>
							<option value="6">June</option>
							<option value="7">July</option>
							<option value="8">August</option>
							<option value="9">September</option>
							<option value="10" selected="selected">October</option>
							<option value="11">November</option>
							<option value="12">December</option>
						<%
						}else if(absentDayInformation.getMonth() == 11){
							%>
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
							<option value="11" selected="selected">November</option>
							<option value="12">December</option>
						<%
						}else if(absentDayInformation.getMonth() == 12){
							%>
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
							<option value="12" selected="selected">December</option>
						<%
						}else{
							%>
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
						<%
						}
					%>					
				</select>
			</td>
		</tr>
		<tr>
			<td><font color="red">*</font> Number of Days Absent:</td>
			<td>
				<input type="text" name="<%=numberOfAbsentDaysControlName %>" id="<%=numberOfAbsentDaysControlName %>" size="30" value="<%=absentDayInformation.getNumberOfDaysToBeDeducted() %>"/>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<%
					String buttonId = "btnupdate" + absentDayInformationId;
				%>
				<input type="button" value="Update" id="<%=buttonId %>" class="input-submit"/>
				<input type="reset" value="Undo" class="input-submit"/>
			</td>						
		</tr>					
	</table>
</form>
<script type="text/javascript">
	$(document).ready(function(){
		var absentDayInformationId = "<%=absentDayInformationId%>";
		var buttonId = "btnupdate" + absentDayInformationId;
		
		$('#'+buttonId).click(function(){
			//now define the control names in here ...
			var yearControlName = "slctyear" + absentDayInformationId;
			var monthControlName = "slctmonth" + absentDayInformationId;
			var numberOfAbsentDaysControlName = "txtnumberofdaysabsent" + absentDayInformationId;
			//now get the values of the controls using the above names you just defined....
			var year = $('#'+yearControlName).val();
			var month = $('#'+monthControlName).val();
			var numberOfAbsentDays = $('#'+numberOfAbsentDaysControlName).val();
			
			if(year != "" && month != "" && numberOfAbsentDays != ""){
				var dataString = "absentDayInformationId="+absentDayInformationId+
				"&year="+year+"&month="+month+"&numberOfAbsentDays="+numberOfAbsentDays;
				$.ajax({
				    url: 'updateabsentdayinformation.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){				    		
				    		$('#absentDayInformationDetailDiv').load('showlistofabsentdayinformationparameterselectorbarforedit.jsp');					
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}
		});
	});//end document.ready function
</script>