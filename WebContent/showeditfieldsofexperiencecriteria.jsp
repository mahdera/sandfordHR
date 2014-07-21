<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long experienceCriteriaId = Long.parseLong(request.getParameter("experienceCriteriaId"));
	ExperienceCriteriaValueList expCriteria = ExperienceCriteriaValueList.getExperienceCriteriaValueList(experienceCriteriaId);	
%>
<form>
<table border="0" width="100%">
	<tr>
		<td>Vacancy:</td>
		<td>
			<input type="text" name="txteditvacancyname" id="txteditvacancyname" value="<%=Vacancy.getVacancy(expCriteria.getVacancyId()).getVacancyName() %>"/>
			<input type="hidden" name="hiddeneditvacancyid" id="hiddeneditvacancyid" value="<%=expCriteria.getVacancyId() %>"/>
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
		<td>Minimum Number of Experience Year:</td>
		<td>
			<input type="text" name="txteditminimumexperienceyear" id="txteditminimumexperienceyear" value="<%=expCriteria.getMinimumExperienceYear() %>"/>			
		</td>
		<td>			
		</td>
	</tr>
	<tr>
		<td>Point:</td>
		<td>
			<input type="text" name="txteditpoint" id="txteditpoint" value="<%=expCriteria.getPoint() %>"/>
		</td>
		<td></td>
	</tr>
	<tr>
		<td colspan="3" align="right">
			<input type="button" value="Update" class="input-submit" onclick="updateExperienceCriteria(<%=experienceCriteriaId%>,
			document.getElementById('hiddeneditvacancyid').value,
			document.getElementById('txteditminimumexperienceyear').value,			
			document.getElementById('txteditpoint').value);"/>
			<input type="reset" value="Reset to default values" class="input-submit"/>
		</td>
	</tr>
</table>
</form>