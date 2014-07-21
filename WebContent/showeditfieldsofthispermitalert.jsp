<%@page import="com.empadmin.server.classes.*"%>
<%
	int permitAlertId = Integer.parseInt(request.getParameter("permitAlertId"));
	PermitAlertLookup permitAlertLookup = PermitAlertLookup.getPermitAlertLookup(permitAlertId);
	//define the control names in here...
	String workPermitControlName = "slctworkpermitalert" + permitAlertId;
	String residencePermitControlName = "slctresidencepermitalert" + permitAlertId;
	String passportPermitControlName = "slctpassportexpiryalert" + permitAlertId;
%>
<form>
	<table border="1" width="100%" style="background:#eee">
		<tr>
			<td width="40%">Alert Before (X-months): Work Permit:</td>
			<td>
				<select name="<%=workPermitControlName %>" id="<%=workPermitControlName %>" style="width:100%">
					<%
						if(permitAlertLookup.getWorkPermitPeriod() == 1){
							%>
								<option value="1" selected="selected">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getWorkPermitPeriod() == 2){
							%>
								<option value="1">One Month</option>
								<option value="2" selected="selected">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getWorkPermitPeriod() == 3){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3" selected="selected">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getWorkPermitPeriod() == 4){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4" selected="selected">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getWorkPermitPeriod() == 5){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5" selected="selected">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getWorkPermitPeriod() == 6){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6" selected="selected">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getWorkPermitPeriod() == 7){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7" selected="selected">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getWorkPermitPeriod() == 8){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8" selected="selected">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getWorkPermitPeriod() == 9){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9" selected="selected">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getWorkPermitPeriod() == 10){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10" selected="selected">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getWorkPermitPeriod() == 11){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11" selected="selected">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getWorkPermitPeriod() == 12){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12" selected="selected">Twelve Months</option>			
							<%
						}
					%>					
				</select>
			</td>
		</tr>
		<tr>
			<td>Alert Before (X-months): Residence Permit:</td>
			<td>
				<select name="<%=residencePermitControlName %>" id="<%=residencePermitControlName %>" style="width:100%">
					<%
						if(permitAlertLookup.getResidencePermitPeriod() == 1){
							%>
								<option value="1" selected="selected">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getResidencePermitPeriod() == 2){
							%>
								<option value="1">One Month</option>
								<option value="2" selected="selected">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getResidencePermitPeriod() == 3){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3" selected="selected">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getResidencePermitPeriod() == 4){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4" selected="selected">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getResidencePermitPeriod() == 5){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5" selected="selected">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getResidencePermitPeriod() == 6){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6" selected="selected">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getResidencePermitPeriod() == 7){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7" selected="selected">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getResidencePermitPeriod() == 8){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8" selected="selected">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getResidencePermitPeriod() == 9){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9" selected="selected">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getResidencePermitPeriod() == 10){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10" selected="selected">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getResidencePermitPeriod() == 11){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11" selected="selected">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getResidencePermitPeriod() == 12){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12" selected="selected">Twelve Months</option>			
							<%
						}
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td>Alert Before (X-months): Passport Expire:</td>
			<td>
				<select name="<%=passportPermitControlName %>" id="<%=passportPermitControlName %>" style="width:100%">
					<%
						if(permitAlertLookup.getPassportExpiryPeriod() == 1){
							%>
								<option value="1" selected="selected">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getPassportExpiryPeriod() == 2){
							%>
								<option value="1">One Month</option>
								<option value="2" selected="selected">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getPassportExpiryPeriod() == 3){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3" selected="selected">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getPassportExpiryPeriod() == 4){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4" selected="selected">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getPassportExpiryPeriod() == 5){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5" selected="selected">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getPassportExpiryPeriod() == 6){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6" selected="selected">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getPassportExpiryPeriod() == 7){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7" selected="selected">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getPassportExpiryPeriod() == 8){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8" selected="selected">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getPassportExpiryPeriod() == 9){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9" selected="selected">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getPassportExpiryPeriod() == 10){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10" selected="selected">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getPassportExpiryPeriod() == 11){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11" selected="selected">Eleven Months</option>
								<option value="12">Twelve Months</option>			
							<%
						}else if(permitAlertLookup.getPassportExpiryPeriod() == 12){
							%>
								<option value="1">One Month</option>
								<option value="2">Two Months</option>
								<option value="3">Three Months</option>
								<option value="4">Four Months</option>
								<option value="5">Five Months</option>
								<option value="6">Six Months</option>
								<option value="7">Seven Months</option>
								<option value="8">Eight Months</option>
								<option value="9">Nine Months</option>
								<option value="10">Ten Months</option>
								<option value="11">Eleven Months</option>
								<option value="12" selected="selected">Twelve Months</option>			
							<%
						}
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="Update" class="input-submit"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
	</table>
</form>
<script type="text/javascript">
	$(document).ready(function(){
		$('.input-submit').click(function(){			
			var buttonVal = $(this).val();
			if(buttonVal == "Update"){				
				//now define the control names in here...
				var permitAlertId = "<%=permitAlertId %>";
				var workPermitControlName = "slctworkpermitalert" + permitAlertId;
				var residencePermitControlName = "slctresidencepermitalert" + permitAlertId;
				var passportPermitControlName = "slctpassportexpiryalert" + permitAlertId;				
				
				var workPermitPeriod = $('#'+workPermitControlName).val();
				var residencePermitPeriod = $('#'+residencePermitControlName).val();
				var passportExpiryPeriod = $('#'+passportPermitControlName).val();
				
				if(workPermitPeriod != "" && residencePermitPeriod != "" && passportExpiryPeriod != ""){
					var dataString = "workPermitPeriod="+workPermitPeriod+"&residencePermitPeriod="+
					residencePermitPeriod+"&passportExpiryPeriod="+passportExpiryPeriod+
					"&permitAlertId="+permitAlertId;
					
					$.ajax({
					    url: 'updatepermitalertlookup.jsp',		
					    data: dataString,
					    type:'POST',
					    success:function(response){					    		
					    		alert(response);
					    		$('#lookupDetailDiv').load('showlistoflookupvalues.jsp');					
					    },
					    error:function(error){
							alert(error);
					    }
					});
				}//end validation if condition
			}//end if(buttonVal == "Update") if condition... 
		});//end button.update function
	});//end document.ready function
</script>