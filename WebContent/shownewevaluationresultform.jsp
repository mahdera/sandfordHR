<%
	long empRecId = Long.parseLong(request.getParameter("empRecId"));
%>
<form style="background:#eeeeee">
	<fieldset>
		<legend>6. New Evaluation Result</legend>
		<table border="1" width="100%">
			<tr>
				<td>The last three complete work evaluation result:</td>
				<td><font color="red">* </font> <input type="text"
					name="txtnewevaluationresult" id="txtnewevaluationresult" size="40" /></td>
			</tr>
			<tr>
				<td colspan="2" align="right">
					<input type="button" value="Save" class="input-submit"
					onclick="saveNewEvaluationResult(<%=empRecId%>,document.getElementById('txtnewevaluationresult').value);"/>
					<input type="reset" value="Clear" class="input-submit"/>
				</td>
			</tr>
		</table>
	</fieldset>
</form>