<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long educationLevelCriteriaId = Long.parseLong(request.getParameter("educationLevelCriteriaId"));
	EducationLevelCriteriaValueList ed = EducationLevelCriteriaValueList.getEducationLevelCriteriaValueList(educationLevelCriteriaId);	
%>
<form>
<table border="0" width="100%">
	<tr>
		<td>Vacancy:</td>
		<td>
			<input type="text" name="txteditvacancyname" id="txteditvacancyname" value="<%=Vacancy.getVacancy(ed.getVacancyId()).getVacancyName() %>"/>
			<input type="hidden" name="hiddeneditvacancyid" id="hiddeneditvacancyid" value="<%=ed.getVacancyId() %>"/>
		</td>
		<td>
			<select name="slcteditvacancy" id="slcteditvacancy" style="width: 100%" onchange="changeEditThisVacancy(this.value);">
				<option value="" selected="selected">--Select--</option>
				<%
					List<Vacancy> vacancyList = Vacancy.getAllVacanciesWithStatus("unset");
					Iterator<Vacancy> vacancyItr = vacancyList.iterator();
					while(vacancyItr.hasNext()){
						Vacancy v = vacancyItr.next();
						%>
						<option value="<%=v.getId()%>"><%=v.getVacancyName() %></option>
						<%
					}//end while loop
				%>
			</select>
		</td>
	</tr>
	<tr>
		<td>Education Level:</td>
		<td>
			<input type="text" name="txtediteducationlevelname" id="txtediteducationlevelname" value="<%=EducationLevel.getEducationLevel(ed.getEducationLevelId()).getEducationLevel() %>"/>
			<input type="hidden" name="hiddenediteducationlevelid" id="hiddenediteducationlevelid" value="<%=ed.getEducationLevelId() %>"/>
		</td>
		<td>
			<select name="slctediteducationlevel" id="slctediteducationlevel" style="width: 100%" onchange="changeEditThisEducationLevelForEducationLevelCriteria(this.value);">
				<option value="" selected="selected">--Select--</option>
				<%
					List<EducationLevel> educationLevelList = EducationLevel.getAllEducationLevels();
					Iterator<EducationLevel> educationLevelItr = educationLevelList.iterator();
					while(educationLevelItr.hasNext()){
						EducationLevel edu = educationLevelItr.next();
						%>
						<option value="<%=edu.getId() %>"><%=edu.getEducationLevel() %></option>
						<%
					}//end while loop
				%>
			</select>
		</td>
	</tr>
	<tr>
		<td>Point:</td>
		<td>
			<input type="text" name="txteditpoint" id="txteditpoint" value="<%=ed.getPoint() %>"/>
		</td>
		<td></td>
	</tr>
	<tr>
		<td colspan="3" align="right">
			<input type="button" value="Update" class="input-submit" onclick="updateEducationLevelCriteria(<%=educationLevelCriteriaId%>,
			document.getElementById('hiddeneditvacancyid').value,
			document.getElementById('hiddenediteducationlevelid').value,
			document.getElementById('txteditpoint').value);"/>
			<input type="reset" value="Reset to default values" class="input-submit"/>
		</td>
	</tr>
</table>
</form>