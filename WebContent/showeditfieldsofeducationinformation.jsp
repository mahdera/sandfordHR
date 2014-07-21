<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long eduId = Long.parseLong(request.getParameter("eduId"));
	//ExperienceCriteriaValueList expCriteria = ExperienceCriteriaValueList.getExperienceCriteriaValueList(expId);
	EducationInformation eduInfo = EducationInformation.getEducationInformation(eduId);
%>
<form>
<table border="1" width="100%" id="educationGrid" style="background:#eeeeee">
	<thead>
		<tr>
			<th style="background: #cccccc; color: black;">Name of Institution</th>
			<th style="background: #cccccc; color: black;">Field of Study</th>
			<th style="background: #cccccc; color: black;">Education Level</th>
			<th style="background: #cccccc; color: black;">Date of Award</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td width="50%"><input type="text" name="txteditnameofinstitution"
				id="txteditnameofinstitution" size="40" value="<%=eduInfo.getNameOfInistitution() %>"/></td>
			<td>
				<input type="text" name="txteditfieldofstudy" id="txteditfieldofstudy" value="<%=FieldOfStudy.getFieldOfStudy(eduInfo.getFieldOfStudyId()).getFieldOfStudy() %>" size="40"/>
				<input type="hidden" name="hiddeneditfieldofstudy" id="hiddeneditfieldofstudy" value="<%=eduInfo.getFieldOfStudyId() %>"/>
				<%
					List<FieldOfStudy> fList = FieldOfStudy.getAllFieldOfStudies();
					Iterator<FieldOfStudy> fItr = fList.iterator();
					out.print("<select name='slcteditfieldofstudy' id='slcteditfieldofstudy' style='width:100%' onchange='changeExistingFieldOfStudy(this.value);'>");
					out.print("<option value='' selected='selected'>--Select--</option>");
					while (fItr.hasNext()) {
						FieldOfStudy f = fItr.next();
				%>
				<option value="<%=f.getId()%>"><%=f.getFieldOfStudy()%></option> <%
 	}//end while loop
 	out.print("</select>");
 %>
			</td>
			<td><input type="text" name="txtediteducationlevel" id="txtediteducationlevel" value="<%=eduInfo.getEducationLevel() %>"/></td>
			<td><input type="text" name="txteditdateofaward" id="txteditdateofaward" value="<%=eduInfo.getDateOfAward() %>"/></td>
		</tr>
		<tr>
			<td colspan="5" align="right">
				<input type="button" value="Update" class="input-submit"
				onclick="updateEducationInformation(<%=eduId%>,document.getElementById('txteditnameofinstitution').value,
				document.getElementById('hiddeneditfieldofstudy').value,document.getElementById('txtediteducationlevel').value,
				document.getElementById('txteditdateofaward').value);"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>
	</tbody>
</table>
</form>