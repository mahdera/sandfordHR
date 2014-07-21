<%
	long empRecId = Long.parseLong(request.getParameter("empRecId"));	
%>
<form style="background:#eeeeee">
	<fieldset>
		<legend>5. New Training Information</legend>		
		<table border="1" width="100%" id="trainingGrid">
			<thead>
				<tr>
					<th style="background: #cccccc; color: black;">Training Taken</th>
					<th style="background: #cccccc; color: black;">Place of Training</th>
					<th style="background: #cccccc; color: black;">Duration</th>
					<th style="background: #cccccc; color: black;">Year of Training</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td><input type="text" name="txtnewtrainingtaken" id="txtnewtrainingtaken"/></td>
					<td><input type="text" name="txtnewplaceoftraining" id="txtnewplaceoftraining"/></td>
					<td><input type="text" name="txtnewduration" id="txtnewduration"/></td>
					<td><input type="text" name="txtnewyearoftraining" id="txtnewyearoftraining"/></td>
				</tr>
				<tr>	
					<td align="right" colspan="4">
						<input type="button" value="Save" class="input-submit"
						onclick="saveNewTrainingInformation(<%=empRecId%>,document.getElementById('txtnewtrainingtaken').value,
						document.getElementById('txtnewplaceoftraining').value,document.getElementById('txtnewduration').value,
						document.getElementById('txtnewyearoftraining').value);"/>
						<input type="reset" value="Clear" class="input-submit"/>
					</td>
				</tr>
			</tbody>
		</table>
	</fieldset>
</form>