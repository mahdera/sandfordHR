<%@page import="com.empadmin.server.classes.*"%>
<%
	long griveanceManagementId = Long.parseLong(request.getParameter("griveanceManagementId"));
	//out.print(benefitManagementId);
	GriveanceManagement grieanceManagement = GriveanceManagement.getGriveanceManagement(griveanceManagementId);
%>
<form>
<table border="1" width="100%">
	<tr>
		<td align="right">Subject:</td>
		<td><input type="text" name="txteditsubject" id="txteditsubject" value="<%=grieanceManagement.getSubject() %>"/></td>
	</tr>
	<tr>
		<td align="right">Description:</td>
		<td>
			<textarea name="textareaeditdescription" id="textareaeditdescription" cols="50" rows="4"><%=grieanceManagement.getDescription() %></textarea>
		</td>
	</tr>
	<tr>
		<td align="right">Griveance Date:</td>
		<td>
			<input type="text" name="txteditgriveancedate" id="txteditgriveancedate" value="<%=grieanceManagement.getGriveanceDate() %>"/>
			<img src="sample/images/cal.gif" onclick="javascript:NewCssCal('txteditgriveancedate')" />
		</td>
	</tr>
	
	<tr>
		<td></td>
		<td align="right">
			<input type="button" value="Update" class="input-submit" onclick="updateGriveanceManagement(<%=griveanceManagementId %>,
			document.getElementById('txteditsubject').value,document.getElementById('textareaeditdescription').value,
			document.getElementById('txteditgriveancedate').value);"/>
			<input type="reset" value="Reset to default values" class="input-submit"/>
		</td>
	</tr>
</table>
</form>