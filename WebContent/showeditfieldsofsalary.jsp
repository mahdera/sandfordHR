<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	long salaryId = Long.parseLong(request.getParameter("salaryId"));	 
	Salary salary = Salary.getSalary(salaryId);
%>
<form>
<table border="1" width="100%">
	<tr>
		<td align="right">Pay Grade:</td>
		<td>
			<input type="text" name="txteditpaygrade" id="txteditpaygrade" value="<%=PayGrade.getPayGrade(salary.getPayGradeId()).getName() %>" size="70px"/>
			<input type="hidden" name="hiddenpaygradeid" id="hiddenpaygradeid" value="<%=salary.getPayGradeId() %>"/>			
		</td>
		<td>
			<select name="slcteditpaygrade" id="slcteditpaygrade" onchange="changePayGradeForThisSalary(this.value);" style="width:100%">
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
			<input type="text" name="txteditpayfrequency" id="txteditpayfrequency" value="<%=PayFrequency.getPayFrequency(salary.getPayFrequencyId()).getFrequencyName() %>" size="70px"/>
			<input type="hidden" name="hiddenpayfrequencyid" id="hiddenpayfrequencyid" value="<%=salary.getPayFrequencyId() %>"/>			
		</td>
		<td>
			<select name="slcteditpayfrequency" id="slcteditpayfrequency" onchange="changePayFrequencyForThisSalary(this.value);" style="width:100%">
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
		<td>
			<input type="text" name="txteditamount" id="txteditamount" value="<%=salary.getAmount() %>" size="70px"/>			
		</td>
		<td></td>
	</tr>
	<tr>
		<td align="right">Comments:</td>
		<td>
			<textarea name="textareaeditcomments" id="textareaeditcomments" cols="100" rows="4"><%=salary.getComments() %></textarea>			
		</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<input type="button" value="Update" class="input-submit" onclick="updateSalary(<%=salary.getId() %>,document.getElementById('hiddenpaygradeid').value, document.getElementById('hiddenpayfrequencyid').value,
			document.getElementById('txteditamount').value,document.getElementById('textareaeditcomments').value);"/>
			<input type="reset" value="Reset to default value" class="input-submit"/>
		</td>
	</tr>
</table>
</form>