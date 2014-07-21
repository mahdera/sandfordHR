<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	List<PayFrequency> payFrequencyList = PayFrequency.getAFrequencies();
	List<PayGrade> payGradeList = PayGrade.getAllPayGrades();
	//now get the existing data...
	EmployeeSalary employeeSalary = EmployeeSalary.getEmployeeSalaryForThisEmployee(employeeId);
	Salary salary = Salary.getSalary(employeeSalary.getSalaryId());
	long salaryId = salary.getId();
	long employeeSalaryId = employeeSalary.getId();
	//now define the control names in here...
	String payGradeControlName = "slctpaygrade" + employeeId;
	String payFrequencyControlName = "slctpayfrequency" + employeeId;
	String grossAmountControlName = "txtamount" + employeeId;
	String commentsControlName = "textareacomments" + employeeId;
%>
<form style="background:#eee">
	<table border="0" width="100%">
		<tr>
			<td><font color="red">*</font> Pay Grade:</td>
			<td>
				<%
					if(!payGradeList.isEmpty()){
						%>
							<select name="<%=payGradeControlName %>" id="<%=payGradeControlName %>" style="width:100%">								
								<%
									Iterator<PayGrade> payGradeItr = payGradeList.iterator();
									while(payGradeItr.hasNext()){
										PayGrade payGrade = payGradeItr.next();
										if(payGrade.getId() == salary.getPayGradeId()){
										%>
											<option value="<%=payGrade.getId() %>" selected="selected"><%=payGrade.getName() %></option>
										<%
										}else{
										%>
											<option value="<%=payGrade.getId() %>"><%=payGrade.getName() %></option>
										<%
										}
									}//end while loop
								%>
							</select>
						<%
					}else{
						%>
							<p class="msg error">Administrator should enter pay grade information first!</p>
						<%
					}
				%>
			</td>
		</tr>
		<tr>
			<td><font color="red">*</font> Pay Frequency:</td>
			<td>
				<%
					if(!payFrequencyList.isEmpty()){
						%>
							<select name="<%=payFrequencyControlName %>" id="<%=payFrequencyControlName %>" style="width:100%">								
								<%
									Iterator<PayFrequency> payFrequencyItr = payFrequencyList.iterator();
									while(payFrequencyItr.hasNext()){
										PayFrequency payFrequency = payFrequencyItr.next();
										if(payFrequency.getId() == salary.getPayFrequencyId()){
										%>
											<option value="<%=payFrequency.getId() %>" selected="selected"><%=payFrequency.getFrequencyName() %></option>
										<%
										}else{
										%>
											<option value="<%=payFrequency.getId() %>"><%=payFrequency.getFrequencyName() %></option>
										<%
										}
									}//end while loop
								%>
							</select>
						<%
					}else{
						%>
							<p class="msg error">Administrator should enter the pay frequency information first!</p>
						<%
					}
				%>
			</td>
		</tr>
		<tr>
			<td><font color="red">*</font>Gross Amount:</td>
			<td>
				<input type="text" name="<%=grossAmountControlName %>" id="<%=grossAmountControlName %>" size="30" value="<%=salary.getAmount() %>"/>
			</td>
		</tr>
		<tr>
			<td>Comments:</td>
			<td>
				<textarea class="jqte-test" name="<%=commentsControlName %>" id="<%=commentsControlName %>" rows="3" style="width:100%"><%=salary.getComments() %></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<%
					String buttonId = "btnupdate" + employeeId;
				%>
				<input type="button" value="Update" class="input-submit" id="<%=buttonId %>"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
	</table>
</form>
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
		
		var employeeId = "<%=employeeId%>";
		var buttonId = "btnupdate" + employeeId;
		
		$('#'+buttonId).click(function(){
			//define the control names in here...
			var payGradeControlName = "slctpaygrade" + employeeId;
			var payFrequencyControlName = "slctpayfrequency" + employeeId;
			var grossAmountControlName = "txtamount" + employeeId;
			var commentsControlName = "textareacomments" + employeeId;
			///now get the values using the control names you have just define above...
			var payGradeId = $('#'+payGradeControlName).val();
			var payFrequencyId = $('#'+payFrequencyControlName).val();
			var amount = $('#'+grossAmountControlName).val();
			var comments = $('#'+commentsControlName).val();
			var salaryId = "<%=salaryId%>";
			var employeeSalaryId = "<%=employeeSalaryId%>";
			
			if(employeeId != "" && payGradeId != "" && payFrequencyId != "" && amount != ""){
				var dataString = "employeeId="+employeeId+"&payGradeId="+payGradeId+
				"&payFrequencyId="+payFrequencyId+"&amount="+amount+"&comments="+comments+
				"&salaryId="+salaryId+"&employeeSalaryId="+employeeSalaryId;
				
				$.ajax({
				    url: 'updateemployeesalary.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){
				    		var divId = "internationalEmployeeDetailDiv"+employeeId;
				    		$('#'+divId).html(response);
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}
		});
	});//end document.ready function
</script>