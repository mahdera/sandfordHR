<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	List<PayFrequency> payFrequencyList = PayFrequency.getAFrequencies();
	List<PayGrade> payGradeList = PayGrade.getAllPayGrades();
	//now get the existing data...	
	EmployeeSalary employeeSalary = EmployeeSalary.getEmployeeSalaryForThisEmployee(employeeId);
	SalaryInternational salaryInternational = SalaryInternational.getSalary(employeeSalary.getSalaryId());	
	long salaryId = (salaryInternational != null ? salaryInternational.getId() : 0);
	long employeeSalaryId = employeeSalary.getId();
	//now define the control names in here...
	String payGradeControlName = "slctpaygrade" + employeeId;
	String payFrequencyControlName = "slctpayfrequency" + employeeId;
	String etbGrossAmountControlName = "txtetbamount" + employeeId;
	String usdGrossAmountControlName = "txtusdamount" + employeeId;
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
								<option value="" selected="selected">--Select--</option>
								<%
									Iterator<PayGrade> payGradeItr = payGradeList.iterator();
									while(payGradeItr.hasNext()){
										PayGrade payGrade = payGradeItr.next();
										if(salaryInternational != null){
											if(salaryInternational.getPayGradeId() == payGrade.getId()){
											%>
												<option value="<%=payGrade.getId() %>" selected="selected"><%=payGrade.getName() %></option>
											<%
											}else{
											%>
												<option value="<%=payGrade.getId() %>"><%=payGrade.getName() %></option>
											<%
											}
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
								<option value="" selected="selected">--Select--</option>
								<%
									Iterator<PayFrequency> payFrequencyItr = payFrequencyList.iterator();
									while(payFrequencyItr.hasNext()){
										PayFrequency payFrequency = payFrequencyItr.next();
										if(salaryInternational != null){
											if(salaryInternational.getPayFrequencyId() == payFrequency.getId()){
											%>
												<option value="<%=payFrequency.getId() %>" selected="selected"><%=payFrequency.getFrequencyName() %></option>
											<%
											}else{
											%>
												<option value="<%=payFrequency.getId() %>"><%=payFrequency.getFrequencyName() %></option>
											<%
											}
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
			<td><font color="red">*</font>Gross Amount (ETB):</td>
			<td>
				<input type="text" name="<%=etbGrossAmountControlName %>" id="<%=etbGrossAmountControlName %>" size="30" value="<%=(salaryInternational != null ? salaryInternational.getEtbAmount() : 0.0f) %>"/>
			</td>
		</tr>
		<tr>
			<td><font color="red">*</font>Gross Amount (USD):</td>
			<td>
				<input type="text" name="<%=usdGrossAmountControlName %>" id="<%=usdGrossAmountControlName %>" size="30" value="<%=(salaryInternational != null ? salaryInternational.getUsdAmount() : 0.0f) %>"/>
			</td>
		</tr>
		<tr>
			<td style="vertical-align:middle">Comments:</td>
			<td>
				<textarea class="jqte-test" name="<%=commentsControlName %>" id="<%=commentsControlName %>" rows="3" style="width:100%"><%=(salaryInternational != null ? salaryInternational.getComments() : "---")%></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<%
					String buttonId = "btnupdate" + employeeId;
				%>
				<input type="button" value="Update" class="input-submit" id="<%=buttonId%>"/>
				<input type="reset" value="Undo" class="input-submit"/>
			</td>
		</tr>
	</table>
</form>
<script type="text/javascript">
	$(document).ready(function(){
		var employeeId = "<%=employeeId%>";
		var buttonId = "btnupdate" + employeeId;
		
		$('.jqte-test').jqte();			
		// settings of status
		var jqteStatus = true;
		$(".status").click(function()
		{
			jqteStatus = jqteStatus ? false : true;
			$('.jqte-test').jqte({"status" : jqteStatus})
		});
		
		$('#'+buttonId).click(function(){
			//now define the control names in here...
			var payGradeControlName = "slctpaygrade" + employeeId;
			var payFrequencyControlName = "slctpayfrequency" + employeeId;
			var etbGrossAmountControlName = "txtetbamount" + employeeId;
			var usdGrossAmountControlName = "txtusdamount" + employeeId;
			var commentsControlName = "textareacomments" + employeeId;
			/////
			var payGradeId = $('#'+payGradeControlName).val();
			var payFrequencyId = $('#'+payFrequencyControlName).val();
			var etbAmount = $('#'+etbGrossAmountControlName).val();
			var usdAmount = $('#'+usdGrossAmountControlName).val();
			var comments = $('#'+commentsControlName).val();
			
			if(employeeId != "" && payGradeId != "" && payFrequencyId != "" && etbAmount != "" && usdAmount != ""){
				var dataString = "employeeId="+employeeId+"&payGradeId="+payGradeId+
				"&payFrequencyId="+payFrequencyId+"&etbAmount="+etbAmount+"&comments="+comments+
				"&usdAmount="+usdAmount;
				
				$.ajax({
				    url: 'updateemployeesalaryinternational.jsp',		
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