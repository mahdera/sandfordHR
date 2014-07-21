<%@page import="com.empadmin.server.classes.*"%>
<%
	int payGradeId = Integer.parseInt(request.getParameter("payGradeId"));
	PayGrade payGrade = PayGrade.getPayGrade(payGradeId);
	//now define the control names in here...
	String codeControlName = "txtcode" + payGradeId;
	String nameControlName = "txtname" + payGradeId;
	String minimumSalaryControlName = "txtminimumsalary" + payGradeId;
	String maximumSalaryControlName = "txtmaximumsalary" + payGradeId;
	String stepIncreaseControlName = "txtstepincrease" + payGradeId;
%>
<form style="background:#eeeeee">
	<table border="0" width="100%">
		<tr>
			<td align="right">Code:</td>
			<td><input type="text" name="<%=codeControlName %>" id="<%=codeControlName %>" value="<%=payGrade.getCode() %>"/></td>
		</tr>		
		<tr>
			<td align="right">Name:</td>
			<td><input type="text" name="<%=nameControlName %>" id="<%=nameControlName %>" value="<%=payGrade.getName() %>"/></td>
		</tr>
		<tr>
			<td align="right">Minimum Salary:</td>
			<td><input type="text" name="<%=minimumSalaryControlName %>" id="<%=minimumSalaryControlName %>" value="<%=payGrade.getMinimumSalary() %>"/></td>
		</tr>
		<tr>
			<td align="right">Maximum Salary:</td>
			<td>
				<input type="text" name="<%=maximumSalaryControlName %>" id="<%=maximumSalaryControlName %>" value="<%=payGrade.getMaximumSalary() %>"/>
			</td>
		</tr>
		<tr>
			<td align="right">Step Increase</td>
			<td>
				<input type="text" name="<%=stepIncreaseControlName %>" id="<%=stepIncreaseControlName %>" value="<%=payGrade.getStepIncrease() %>"/>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<%
					String buttonId = "btnupdate" + payGradeId;
				%>
				<input type="button" value="Update" class="input-submit" id="<%=buttonId%>"/>
				<input type="reset" value="Undo" class="input-submit"/>
			</td>
		</tr>		
	</table>
</form>
<script type="text/javascript">
	$(document).ready(function(){
		var payGradeId = "<%=payGradeId%>";
		var buttonId = "btnupdate" + payGradeId;
		
		$('#'+buttonId).click(function(){
			//define the control names in here...
			var codeControlName = "txtcode" + payGradeId;
			var nameControlName = "txtname" + payGradeId;
			var minimumSalaryControlName = "txtminimumsalary" + payGradeId;
			var maximumSalaryControlName = "txtmaximumsalary" + payGradeId;
			var stepIncreaseControlName = "txtstepincrease" + payGradeId;
			//////
			var code = $('#'+codeControlName).val();
			var name = $('#'+nameControlName).val();
			var minimumSalary = $('#'+minimumSalaryControlName).val();
			var maximumSalary = $('#'+maximumSalaryControlName).val();
			var stepIncrease = $('#'+stepIncreaseControlName).val();
			
			if(code != "" && name != "" && minimumSalary != "" && maximumSalary != "" && stepIncrease != ""){
				var dataString = "code="+code+"&name="+name+"&minimumSalary="+minimumSalary+
				"&maximumSalary="+maximumSalary+"&stepIncrease="+stepIncrease+"&payGradeId="+payGradeId;
				
				$.ajax({
				    url: 'updatepaygrade.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){			    		
				    		$('#subTabDetailDiv').load('showlistofpaygradeforedit.jsp');			
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}
		});
	});//end document.ready function
</script>