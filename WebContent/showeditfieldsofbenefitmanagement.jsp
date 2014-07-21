<%@page import="com.empadmin.server.classes.*"%>
<%
	long benefitManagementId = Long.parseLong(request.getParameter("benefitManagementId"));
	long employeeId = Long.parseLong(request.getParameter("employeeId"));
	//out.print(benefitManagementId);
	BenefitManagement benefitManagement = BenefitManagement.getBenefitManagement(benefitManagementId);
%>
<form>
<table border="1" width="100%">
	<tr>
		<td align="right">Benefit Name:</td>
		<td><input type="text" name="txteditbenefitname" id="txteditbenefitname" value="<%=benefitManagement.getBenefitName() %>"/></td>
	</tr>
	<tr>
		<td align="right">Benefit Date:</td>
		<td>
			<input type="text" name="txteditbenefitdate" id="txteditbenefitdate" value="<%=benefitManagement.getBenefitDate() %>"/>
			<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txteditbenefitdate')" />
		</td>
	</tr>
	<tr>
		<td align="right">Description:</td>
		<td>
			<textarea name="textareaeditdescription" id="textareaeditdescription" cols="50" rows="4"><%=benefitManagement.getDescription() %></textarea>
		</td>
	</tr>
	<tr>
		<td></td>
		<td align="right">
			<input type="button" value="Update" class="input-submit" onclick="updateBenefitManagement(<%=benefitManagementId %>,
			document.getElementById('txteditbenefitname').value,document.getElementById('txteditbenefitdate').value,
			document.getElementById('textareaeditdescription').value,<%=employeeId %>);"/>
			<input type="reset" value="Reset to default values" class="input-submit"/>
		</td>
	</tr>
</table>
</form>