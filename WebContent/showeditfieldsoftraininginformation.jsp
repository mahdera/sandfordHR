<%@page import="com.empadmin.server.classes.*" %>
<%
	long tId = Long.parseLong(request.getParameter("tId"));
	TrainingInformation tInformation = TrainingInformation.getTrainingInformation(tId);
%>
<form>
<fieldset>
	<legend>5. Edit Training Information</legend>	
	<table border="1" width="100%" >
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
				<td><input type="text" name="txtedittrainingtaken" id="txtedittrainingtaken" value="<%=tInformation.getTrainingTaken() %>"/></td>
				<td><input type="text" name="txteditplaceoftraining" id="txteditplaceoftraining" value="<%=tInformation.getPlaceOfTraining() %>"/></td>
				<td><input type="text" name="txteditduration" id="txteditduration" value="<%=tInformation.getDuration() %>"/></td>
				<td><input type="text" name="txtedityearoftraining" id="txtedityearoftraining" value="<%=tInformation.getYearOfTraining() %>"/></td>
			</tr>
			<tr>
				<td align="right" colspan="4">
					<input type="button" value="Update" class="input-submit"
					onclick="updateTrainingInformation(<%=tId%>,document.getElementById('txtedittrainingtaken').value,
					document.getElementById('txteditplaceoftraining').value,document.getElementById('txteditduration').value,
					document.getElementById('txtedityearoftraining').value);"/>
					<input type="reset" value="Clear" class="input-submit"/>
				</td>
			</tr>
		</tbody>
	</table>
</fieldset>
</form>