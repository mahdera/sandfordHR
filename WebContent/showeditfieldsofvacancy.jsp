<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*" %>
<%
	long vacancyId = Long.parseLong(request.getParameter("vacancyId"));
	Vacancy vacancy = Vacancy.getVacancy(vacancyId);
	//now define the control names in here...
	String jobTitleControlName = "txtjobtitle" + vacancyId;
	String vacancyNameControlName = "txtvacancyname" + vacancyId;
	String locationControlName = "txtlocation" + vacancyId;
	String subUnitControlName = "txtsubunit" + vacancyId;
	String hiringManagerControlName = "txthiringmanager" + vacancyId;
	String numberOfPositionsControlName = "txtnumberofpositions" + vacancyId;
	String descriptionControlName = "textareadescription" + vacancyId;
%>
<form style="background:#eeeeee">
	<table border="0" width="100%">
		<tr>
			<td align="right" width="30%">Job Title:</td>
			<td>
				<input type="text" name="<%=jobTitleControlName %>" id="<%=jobTitleControlName %>" value="<%=vacancy.getJobTitle() %>"/>
			</td>
		</tr>
		<tr>
			<td align="right">Vacancy Name:</td>
			<td>
				<input type="text" name="<%=vacancyNameControlName %>" id="<%=vacancyNameControlName %>" value="<%=vacancy.getName() %>"/>
			</td>
		</tr>
		<tr>
			<td align="right">Location:</td>
			<td>
				<input type="text" name="<%=locationControlName %>" id="<%=locationControlName %>" value="<%=vacancy.getLocation() %>"/>				
			</td>
		</tr>
		<tr>
			<td align="right">Sub Unit:</td>
			<td>
				<input type="text" name="<%=subUnitControlName %>" id="<%=subUnitControlName %>" value="<%=vacancy.getSubUnit() %>"/>
			</td>
		</tr>
		<tr>
			<td align="right">Hiring Manager:</td>
			<td>
				<input type="text" name="<%=hiringManagerControlName %>" id="<%=hiringManagerControlName %>" value="<%=vacancy.getHiringManager() %>"/>
			</td>
		</tr>
		<tr>
			<td align="right">Number of Positions:</td>
			<td>
				<input type="text" name="<%=numberOfPositionsControlName %>" id="<%=numberOfPositionsControlName %>" value="<%=vacancy.getNumberOfPositions() %>"/>
			</td>
		</tr>
		<tr>
			<td align="right" style="vertical-align:middle">Description:</td>
			<td>
				<textarea class="jqte-test" name="<%=descriptionControlName %>" id="<%=descriptionControlName %>" rows="10" style="width:100%"><%=vacancy.getDescription() %></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="right">
				<input type="button" value="Update" class="input-submit"/>
				<input type="reset" value="Clear" class="input-submit"/>
			</td>
		</tr>		
	</table>
</form>
<script type="text/javascript">
	$(document).ready(function(){
		$('.jqte-test').jqte();			
		// settings of status
		var jqteStatus = true;
		$(".status").click(function()
		{
			jqteStatus = jqteStatus ? false : true;
			$('.jqte-test').jqte({"status" : jqteStatus})
		});
		
		$('.input-submit').click(function(){
			var buttonVal = $(this).val();
			if(buttonVal == "Update"){
				var vacancyId = "<%=vacancyId%>";
				//now define the control names in here...
				var jobTitleControlName = "txtjobtitle" + vacancyId;
				var vacancyNameControlName = "txtvacancyname" + vacancyId;
				var locationControlName = "txtlocation" + vacancyId;
				var subUnitControlName = "txtsubunit" + vacancyId;
				var hiringManagerControlName = "txthiringmanager" + vacancyId;
				var numberOfPositionsControlName = "txtnumberofpositions" + vacancyId;
				var descriptionControlName = "textareadescription" + vacancyId;
				//now get the values from the input fields...
				var jobTitle = $('#'+jobTitleControlName).val();
				var vacancyName = $('#'+vacancyNameControlName).val();
				var location = $('#'+locationControlName).val();
				var subUnit = $('#'+subUnitControlName).val();
				var hiringManager = $('#'+hiringManagerControlName).val();
				var numberOfPositions = $('#'+numberOfPositionsControlName).val();
				var description = $('#'+descriptionControlName).val();
				
				var dataString = "vacancyId="+vacancyId+"&jobTitle="+jobTitle+"&vacancyName="+vacancyName+
				"&location="+location+"&subUnit="+subUnit+"&hiringManager="+hiringManager+"&numberOfPositions="+
				numberOfPositions+"&description="+description;
				
				$.ajax({
				    url: 'updatevacancy.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){
				    		var divId = "vacancyDetailDiv" + vacancyId;				    		
				    		$('#'+divId).html(response);					
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}//end if condition
		});//end button.update function	
	});//end document.ready function
</script>