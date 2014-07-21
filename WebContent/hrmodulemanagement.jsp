<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div>
	<fieldset>
		<legend>Human Resource Modules</legend>
		<%
			Account account = (Account) session.getAttribute("account");
			String functionalityName = "departmentManagement";
			Functionality functionalityO = Functionality.getFunctionalityByFunctionalityName(functionalityName);
			Role role = Role.getRole(account.getAccountId(), functionalityO.getId());
			if(role.isWritable()){
		%>
		<form style="background:#eee">
		<table  border='1' width='100%'>
			<tr>
				<td align="right">Please Select A Module:</td>
				<td>
					<select name="slctmodule" id="slctmodule" style="width:100%"> 
						<option value="" selected="selected">--Select--</option>
						<%
							List<HRModule> hrModuleList = HRModule.getAllHRModules();
							Iterator<HRModule> hrModuleItr = hrModuleList.iterator();
							while(hrModuleItr.hasNext()){
								HRModule hrModule = hrModuleItr.next();
								%>
									<option value="<%=hrModule.getModuleName() %>" title="<%=hrModule.getDescription() %>"><%=hrModule.getModuleName() %></option>
								<%
							}//end while loop
						%>
					</select>
				</td>
			</tr>
		</table>
		</form>
		<%
			}else{
				out.print("<p class='msg error'>You do not have sufficient privileged to perform this operation!</p>");
			}
		%>		
	</fieldset>
</div>
<div id="hrModuleDetailDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#slctmodule').change(function(){
			var moduleName = $(this).val();			
			if (moduleName == "Benefits Management") {				
				$('#hrModuleDetailDiv').load('benefitsmanagement.jsp');
			} else if (moduleName == "Promotion Management") {		
				$('#hrModuleDetailDiv').load('promotionmanagement.jsp');
			} else if (moduleName == "Transfer Management") {		
				$('#hrModuleDetailDiv').load('transfermanagement.jsp');
			} else if (moduleName == "Discipline Management") {		
				$('#hrModuleDetailDiv').load('disciplinemanagement.jsp');
			} else if (moduleName == "Grievance Management") {		
				$('#hrModuleDetailDiv').load('griveancemanagement.jsp');
			} else if (moduleName == "Termination Management") {
				$('#hrModuleDetailDiv').load('terminationmanagement.jsp');
			} else if(moduleName == "Leave Management"){				
				$('#hrModuleDetailDiv').load('leavemanagementmenubar.jsp');
			} else if(moduleName == "Performance Appraisal"){	
				$('#hrModuleDetailDiv').load('performanceappraisalmanagementmenubar.jsp');
			} else if(moduleName == "Demotion Management"){
				$('#hrModuleDetailDiv').load('demotionmanagement.jsp');
			} else if(moduleName == "Absent Day Information for Payroll"){
				$('#hrModuleDetailDiv').load('absentdayinformationmenubar.jsp');
			}
		});
	});//end document.ready function
</script>