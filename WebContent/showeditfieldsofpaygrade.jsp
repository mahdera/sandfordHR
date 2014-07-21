<%@page import="com.empadmin.server.classes.*" %>
<%
	int payGradeId = Integer.parseInt(request.getParameter("payGradeId"));	 
	PayGrade payGrade = PayGrade.getPayGrade(payGradeId);			
%>
<form>
<table border="1" width="100%" style="background:#eeeeee">
	<tr>
		<td align="right">Code:</td>
		<td>
			<input type="text" name="txteditcode" id="txteditcode" value="<%=payGrade.getCode() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td align="right">Name:</td>
		<td>
			<input type="text" name="txteditname" id="txteditname" value="<%=payGrade.getName() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td align="right">Minimum Salary:</td>
		<td>
			<input type="text" name="txteditminimumsalary" id="txteditminimumsalary" value="<%=payGrade.getMinimumSalary() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td align="right">Maximum Salary:</td>
		<td>
			<input type="text" name="txteditmaximumsalary" id="txteditmaximumsalary" value="<%=payGrade.getMaximumSalary() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td align="right">Step Increase:</td>
		<td>
			<input type="text" name="txteditstepincrease" id="txteditstepincrease" value="<%=payGrade.getStepIncrease() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<input type="button" value="Update" class="input-submit" onclick="updatePayGrade(<%=payGradeId %>,document.getElementById('txteditcode').value, document.getElementById('txteditname').value,
			document.getElementById('txteditminimumsalary').value,document.getElementById('txteditmaximumsalary').value,
			document.getElementById('txteditstepincrease').value);"/>
			<input type="reset" value="Reset to default value" class="input-submit"/>
		</td>
	</tr>
</table>
</form>