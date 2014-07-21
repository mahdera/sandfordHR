<div>
	<table border="1" width="100%">
		<tr style="background:#eee;font-weight:bold">
			<td colspan="4" align="center">
				Absent Day Information Management Module
			</td>
		</tr>
		<tr style="background:#eee;font-weight:bold">
			<td align="center"><a href="#.jsp" id="addAbsentDayInformationLink">Add</a></td>
			<td align="center"><a href="#.jsp" id="viewAbsentDayInformationLink">View</a></td>
			<td align="center"><a href="#.jsp" id="editAbsentDayInformationLink">Edit</a></td>
			<td align="center"><a href="#.jsp" id="deleteAbsentDayInformationLink">Delete</a></td>
		</tr>
	</table>
</div>
<div id="absentDayInformationDetailDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addAbsentDayInformationLink').click(function(){
			$('#absentDayInformationDetailDiv').load('showabsentdayinformationdataentryform.jsp');
		});
		
		$('#viewAbsentDayInformationLink').click(function(){
			$('#absentDayInformationDetailDiv').load('showlistofabsentdayinformationparameterselectorbar.jsp');
		});
		
		$('#editAbsentDayInformationLink').click(function(){
			$('#absentDayInformationDetailDiv').load('showlistofabsentdayinformationparameterselectorbarforedit.jsp');
		});
		
		$('#deleteAbsentDayInformationLink').click(function(){
			$('#absentDayInformationDetailDiv').load('showlistofabsentdayinformationparameterselectorbarfordelete.jsp');
		});
	});//end document ready function
</script>
