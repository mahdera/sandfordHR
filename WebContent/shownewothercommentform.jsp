<%
	long empRecId = Long.parseLong(request.getParameter("empRecId"));
%>
<form>
	<fieldset>
		<legend>8. New Other Comments</legend>
		<table border="1" width="100%">
			<tr>
				<td><textarea name="textareanewothercomment"
						id="textareanewothercomment" cols="100%" rows="3" style="width: 99%"></textarea>
				</td>
			</tr>
			<tr>
				<td align="right">
					<input type="button" value="Save" class="input-submit"
					onclick="saveNewOtherComment(<%=empRecId%>,document.getElementById('textareanewothercomment').value);"/>
					<input type="reset" value="Clear" class="input-submit"/>
				</td>
			</tr>
		</table>
	</fieldset>
</form>