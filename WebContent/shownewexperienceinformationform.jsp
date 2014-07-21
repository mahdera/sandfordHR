<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	long empRecId = Long.parseLong(request.getParameter("empRecId"));
%>
<form style="background:#eeeeee">
<fieldset>
	<legend>4. New experience/service information</legend>
	
	<table border="1" width="100%" id="experienceGrid">
		<thead>
			<tr>
				<th style="background: #cccccc; color: black;">Job</th>
				<th style="background: #cccccc; color: black;">Starting From</th>
				<th style="background: #cccccc; color: black;">Upto</th>
				<th style="background: #cccccc; color: black;">Place of Work</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td>
					<input type="text" name="slctnewjob" id="slctnewjob"/>
				</td>
				<td><input type="text" name="txtnewstartingfrom"
					id="txtnewstartingfrom" /> <img src="sample/images/cal.gif"
					onclick="javascript:NewCssCal('txtnewstartingfrom')" /></td>
				<td><input type="text" name="txtnewupto" id="txtnewupto" /> <img
					src="sample/images/cal.gif"
					onclick="javascript:NewCssCal('txtnewupto')" /></td>
				<td><input type="text" name="txtnewplaceofwork"
					id="txtnewplaceofwork" /></td>
			</tr>
			<tr>
				<td colspan="4" align="right">
					<input type="button" value="Save new experience" class="input-submit"
					onclick="saveNewExperience(<%=empRecId%>,document.getElementById('slctnewjob').value,
					document.getElementById('txtnewstartingfrom').value,
					document.getElementById('txtnewupto').value,
					document.getElementById('txtnewplaceofwork').value);"/>
					<input type="reset" value="Clear" class="input-submit"/>
				</td>
			</tr>
		</tbody>
	</table>
</fieldset>
</form>