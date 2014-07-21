<%@page import="com.empadmin.server.classes.*" %>
<%
	long evalId = Long.parseLong(request.getParameter("evalId"));
	EvaluationResult evalResult = EvaluationResult.getEvaluationResult(evalId);
%>
<form>
	<fieldset>
		<legend>6. Edit Evaluation Result</legend>
		<table border="1" width="100%">
			<tr>
				<td>The last three complete work evaluation result:</td>
				<td>
					<font color="red">* </font> <input type="text"
					name="txteditevaluationresult" id="txteditevaluationresult" size="40" 
					value="<%=evalResult.getResult() %>"/>
				</td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="button" value="Update" class="input-submit"
					onclick="updateEvaluationResult(<%=evalId%>,document.getElementById('txteditevaluationresult').value);"/>
					<input type="reset" value="Clear" class="input-submit"/>
				</td>
			</tr>
		</table>
	</fieldset>
</form>