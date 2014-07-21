<%@page import="com.empadmin.server.classes.*"%>
<table border="0" width="100%" style="background:#eee">
	<tr>
		<td>Enter Employee Id Number:</td>
		<td>
			<input type="text" name="txtemployeeidnumber" id="txtemployeeidnumber" size="30"/>
			<input type="button" value="Search" id="btnsearch"/>
		</td>
	</tr>
</table>
<div id="absentDayInformationDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#btnsearch').click(function(){
			var employeeIdNumber = $('#txtemployeeidnumber').val();
			if(employeeIdNumber != ""){
				$('#absentDayInformationDiv').load('showabsentdayinformationdataentryformforthisemployee.jsp?employeeIdNumber='+employeeIdNumber);				
			}
		});
	});//end document.ready function
</script>