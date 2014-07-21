<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<form>
	<table border="0" width="100%">
		<tr>
			<td>Select Vacancy:</td>
			<td>
				<select name="slctvacancy" id="slctvacancy" style="width:100%" onchange="showVacancyCriteria(this.value);">
					<option value="" selected="selected">--Select--</option>
					<%
						List<Vacancy> vacancyList = Vacancy.getAllVacanciesWithStatus("unset");
						Iterator<Vacancy> vacancyItr = vacancyList.iterator();
						while(vacancyItr.hasNext()){
							Vacancy v = vacancyItr.next();
							%>
							<option value="<%=v.getId() %>"><%=v.getVacancyName() %></option>
							<%
						}//end while loop
					%>
				</select>
			</td>			
		</tr>
		<tr>
			<td colspan="2" id="vacancyCriteriaListDiv"></td>
		</tr>
	</table>
</form>