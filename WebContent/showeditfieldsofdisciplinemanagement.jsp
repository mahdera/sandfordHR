<%@page import="com.empadmin.server.classes.*"%>
<%
	long disciplineManagementId = Long.parseLong(request.getParameter("disciplineManagementId"));
	//out.print(benefitManagementId);
	DisciplineManagement disciplineManagement = DisciplineManagement.getDisciplineManagement(disciplineManagementId);
%>
<form>
<table border="1" width="100%">
	<tr>
		<td align="right">Discipline Name:</td>
		<td><input type="text" name="txteditdisciplinename" id="txteditdisciplinename" value="<%=disciplineManagement.getDisciplineName() %>"/></td>
	</tr>
	<tr>
		<td align="right">Discipline Date:</td>
		<td>
			<input type="text" name="txteditdisciplinedate" id="txteditdisciplinedate" value="<%=disciplineManagement.getDisciplineDate() %>"/>
			<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txteditdisciplinedate')" />
		</td>
	</tr>
	<tr>
		<td align="right">Description:</td>
		<td>
			<textarea name="textareaeditdescription" id="textareaeditdescription" cols="50" rows="4"><%=disciplineManagement.getDescription() %></textarea>
		</td>
	</tr>
	<tr>
		<td></td>
		<td align="right">
			<input type="button" value="Update" class="input-submit" onclick="updateDisciplineManagement(<%=disciplineManagementId %>,
			document.getElementById('txteditdisciplinename').value,document.getElementById('txteditdisciplinedate').value,
			document.getElementById('textareaeditdescription').value);"/>
			<input type="reset" value="Reset to default values" class="input-submit"/>
		</td>
	</tr>
</table>
</form>