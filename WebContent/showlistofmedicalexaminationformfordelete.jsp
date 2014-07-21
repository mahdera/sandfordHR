<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<MedicalExaminationForm> medicalExaminationFormList = MedicalExaminationForm.getAllMedicalExaminationForms();
	Iterator<MedicalExaminationForm> medicalExaminationFormItr = medicalExaminationFormList.iterator();
%>
<div>
	<table border="1" width="100%">
		<tr style="background:#eee">
			<td>Ser.No</td>
			<td>Employee Name</td>
			<td>Medical Examination Date</td>
			<td>Weight</td>
			<td>Height</td>
			<td>Blood Pressure</td>
			<td>Pulse</td>							
			<td>Delete</td>
		</tr>
		<%
			int serialCtr = 1;
			while(medicalExaminationFormItr.hasNext()){
				MedicalExaminationForm medicalExaminationForm = medicalExaminationFormItr.next();
				Employee employee = Employee.getEmployee(medicalExaminationForm.getEmployeeId());
				String fullName = employee.getFirstName()+" "+employee.getLastName();
				%>
				<tr>
					<td><%=serialCtr %></td>
					<td><%=fullName %></td>
					<td><%=medicalExaminationForm.getMedicalExamDate() %></td>
					<td><%=medicalExaminationForm.getWeight() %></td>
					<td><%=medicalExaminationForm.getHeight() %></td>
					<td><%=medicalExaminationForm.getBloodPressure() %></td>
					<td><%=medicalExaminationForm.getPulse() %></td>					
					<td>
						<a href="#.jsp" onclick="deleteThisMedicalExaminationForm(<%=medicalExaminationForm.getId() %>);">Delete Record</a>						
					</td>
				</tr>
				<%
					String divId = "medicalExaminationFormDetailDiv" + medicalExaminationForm.getId();
				%>
				<tr>
					<td colspan="8">
						<div id="<%=divId %>"></div>
					</td>
				</tr>
				<%
				serialCtr++;
			}//end while loop
		%>
	</table>
</div>
<script type="text/javascript">
	function deleteThisMedicalExaminationForm(medicalExaminationFormId){
		if(window.confirm("Are you sure you want to delete this medical examination record?")){
			var dataString = "medicalExaminationFormId="+medicalExaminationFormId;
			$.ajax({
			    url: 'deletethismedicalexaminationform.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){
			    		var divId = "medicalExaminationFormDetailDiv" + medicalExaminationFormId;
			    		$('#'+divId).html(response);					
			    },
			    error:function(error){
					alert(error);
			    }
			});			
		}
	}
	
	function hideDetailsOfThisMedicalExaminationForm(medicalExaminationFormId){
		var divId = "medicalExaminationFormDetailDiv" + medicalExaminationFormId;
		$('#'+divId).html('');
	}
</script>