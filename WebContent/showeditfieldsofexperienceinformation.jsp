<%@page import="java.util.*" %>
<%@page import="com.empadmin.server.classes.*" %>
<%
	long exId = Long.parseLong(request.getParameter("exId"));
	Experience ex = Experience.getExperience(exId);
%>
<fieldset>
	<legend>4. Edit Experience/Service Information</legend>
	<form>
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
					<input type="text" name="txteditjob" id="txteditjob" value="<%=ex.getJobId() %>"/>
				</td>
				<td><input type="text" name="txteditstartingfrom"
					id="txteditstartingfrom" value="<%=ex.getStartingFrom() %>"/> <img src="sample/images/cal.gif"
					onclick="javascript:NewCssCal('txteditstartingfrom')" /></td>
				<td><input type="text" name="txteditupto" id="txteditupto" value="<%=ex.getUpto() %>"/> <img
					src="sample/images/cal.gif"
					onclick="javascript:NewCssCal('txteditupto')" /></td>
				<td><input type="text" name="txteditplaceofwork"
					id="txteditplaceofwork" value="<%=ex.getPlaceWorked() %>"/></td>
			</tr>
			<tr>
				<td colspan="4" align="right">
					<input type="button" value="Update" class="input-submit"
					onclick="updateExperience(<%=exId%>,document.getElementById('txteditjob').value,
					document.getElementById('txteditstartingfrom').value,
					document.getElementById('txteditupto').value,
					document.getElementById('txteditplaceofwork').value);"/>
					<input type="reset" value="Clear" class="input-submit"/>
				</td>
			</tr>
		</tbody>
	</table>
	</form>
</fieldset>