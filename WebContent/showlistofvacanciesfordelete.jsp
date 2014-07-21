<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<Vacancy> vacancyList = Vacancy.getAllVacancies();
	Iterator<Vacancy> vacancyItr = vacancyList.iterator();
%>
<table border="1" width="100%">
	<tr style="background:#eee;font-weight:bolder">
		<td>Ser.No.</td>
		<td>Job Title</td>
		<td>Name</td>
		<td>Location</td>
		<td>Sub Unit</td>
		<td>Hiring Manager</td>
		<td>Number of Positions</td>
		<td>Description</td>		
		<td>Delete</td>
	</tr>
	<%
		int ctr=1;
		while(vacancyItr.hasNext()){
			Vacancy vacancy = vacancyItr.next();
			%>
			<tr>
				<td><%=ctr %></td>
				<td><%=vacancy.getJobTitle() %></td>
				<td><%=vacancy.getName() %></td>
				<td><%=vacancy.getLocation() %></td>
				<td><%=vacancy.getSubUnit() %></td>
				<td><%=vacancy.getHiringManager() %></td>
				<td><%=vacancy.getNumberOfPositions() %></td>
				<td><%=vacancy.getDescription() %></td>
				<td>
					<a href="#.jsp" onclick="deleteThisVacancy(<%=vacancy.getId() %>);">Delete</a>					
				</td>
			</tr>			
			<%
			ctr++;
		}//end while loop
	%>
</table>
<script type="text/javascript">
	function deleteThisVacancy(vacancyId){
		if(window.confirm('Are you sure you want to delete this vacancy record?')){			
			var dataString = "vacancyId="+vacancyId;
			$.ajax({
			    url: 'deletevacancy.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){			    						    		
			    		$('#tabDetailDiv').load('showlistofvacanciesfordelete.jsp');					
			    },
			    error:function(error){
					alert(error);
			    }
			});
		}//end if confirm user...		
	}
</script>