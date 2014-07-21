<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	List<PayFrequency> payFrequencyList = PayFrequency.getAFrequencies();
	List<PayGrade> payGradeList = PayGrade.getAllPayGrades();
%>
<form style="background:#eee">
	<table border="0" width="100%">
		<tr>
			<td><font color="red">*</font> Pay Grade:</td>
			<td>
				<%
					if(!payGradeList.isEmpty()){
						%>
							<select name="slctpaygrade" id="slctpaygrade" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									Iterator<PayGrade> payGradeItr = payGradeList.iterator();
									while(payGradeItr.hasNext()){
										PayGrade payGrade = payGradeItr.next();
										%>
											<option value="<%=payGrade.getId() %>"><%=payGrade.getName() %></option>
										<%
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
							<select name="slctpayfrequency" id="slctpayfrequency" style="width:100%">
								<option value="" selected="selected">--Select--</option>
								<%
									Iterator<PayFrequency> payFrequencyItr = payFrequencyList.iterator();
									while(payFrequencyItr.hasNext()){
										PayFrequency payFrequency = payFrequencyItr.next();
										%>
											<option value="<%=payFrequency.getId() %>"><%=payFrequency.getFrequencyName() %></option>
										<%
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
			<td><font color="red">*</font>Basic Salary (ETB):</td>
			<td>
				<input type="text" name="txtetbamount" id="txtetbamount" size="30"/>
			</td>
		</tr>
		<tr>
			<td><font color="red">*</font>Basic Salary (USD):</td>
			<td>
				<input type="text" name="txtusdamount" id="txtusdamount" size="30"/>
			</td>
		</tr>
		<tr>
			<td>Comments:</td>
			<td>
				<textarea class="jqte-test" name="textareacomments" id="textareacomments" rows="3" style="width:100%"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="Save" class="input-submit" id="btnsave"/>
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
		
		$('#btnsave').click(function(){
			var employeeId = "<%=employeeId%>";
			var payGradeId = $('#slctpaygrade').val();
			var payFrequencyId = $('#slctpayfrequency').val();
			var etbAmount = $('#txtetbamount').val();
			var usdAmount = $('#txtusdamount').val();
			var comments = $('#textareacomments').val();
			
			if(employeeId != "" && payGradeId != "" && payFrequencyId != "" && etbAmount != "" && usdAmount != ""){
				var dataString = "employeeId="+employeeId+"&payGradeId="+payGradeId+
				"&payFrequencyId="+payFrequencyId+"&etbAmount="+etbAmount+"&comments="+comments+
				"&usdAmount="+usdAmount;
				
				$.ajax({
				    url: 'saveemployeesalaryinternational.jsp',		
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