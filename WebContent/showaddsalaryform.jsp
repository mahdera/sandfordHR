<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	Account account = (Account) session.getAttribute("account");
	String functionalityName = "manageAdminFields";
	Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
	Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
	if(role.isWritable()){
%>
<form style="background:#eeeeee">
	<table border="0" width="100%">
		<tr>
			<td align="right">Pay Grade:</td>
			<td>
				<select name="slctpaygrade" id="slctpaygrade" style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<PayGrade> payGradeList = PayGrade.getAllPayGrades();
						Iterator<PayGrade> payGradeItr = payGradeList.iterator();
						while(payGradeItr.hasNext()){
							PayGrade payGrade = payGradeItr.next();
							%>
							<option value="<%=payGrade.getId() %>"><%=payGrade.getName() %></option>
							<%
						}
					%>
				</select>
			</td>
		</tr>		
		<tr>
			<td align="right">Pay Frequency:</td>
			<td>
				<select name="slctpayfrequency" id="slctpayfrequency"  style="width:100%">
					<option value="" selected="selected">--Select--</option>
					<%
						List<PayFrequency> payFrequencyList = PayFrequency.getAllPayFrequencies();
						Iterator<PayFrequency> payFrequencyItr = payFrequencyList.iterator();
						while(payFrequencyItr.hasNext()){
							PayFrequency payFrequency = payFrequencyItr.next();
							%>
							<option value="<%=payFrequency.getId() %>"><%=payFrequency.getFrequencyName() %></option>
							<%
						}
					%>
				</select>
			</td>
		</tr>
		<tr>
			<td align="right">Amount:</td>
			<td><input type="text" name="txtamount" id="txtamount"/></td>
		</tr>
		<tr>
			<td align="right">Comments:</td>
			<td>
				<textarea name="textareacomments" id="textareacomments" cols="100" rows="4"></textarea>
			</td>
		</tr>
		
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="Add" class="input-submit" onclick="saveSalary(document.getElementById('slctpaygrade').value,document.getElementById('slctpayfrequency').value,document.getElementById('txtamount').value,
					document.getElementById('textareacomments').value);"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<div id="jobErrorDiv"></div>
			</td>
		</tr>
	</table>
</form>
<%
	}
	else{	
%>
	<p class="msg error">You do not have sufficient privileged to perform this operation!</p>
<%
	}
%>