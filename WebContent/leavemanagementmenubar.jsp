<div>
	<table border="1" width="100%">
		<tr style="background:#eee;font-weight:bold">
			<td colspan="4" align="center">
				Leave Management Module
			</td>
		</tr>
		<tr style="background:#eee;font-weight:bold">
			<td align="center"><a href="#.jsp" id="addLeaveRequestLink">Add</a></td>
			<td align="center"><a href="#.jsp" id="viewLeaveRequestLink">View</a></td>
			<td align="center"><a href="#.jsp" id="editLeaveRequestLink">Edit</a></td>
			<td align="center"><a href="#.jsp" id="deleteLeaveRequestLink">Delete</a></td>
		</tr>
	</table>
</div>
<div id="leaveRequestDetailDiv"></div>
<div id="successDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addLeaveRequestLink').click(function(){
			$('#leaveRequestDetailDiv').load('leavemanagement.jsp');
		});
		
		$('#viewLeaveRequestLink').click(function(){
			$('#leaveRequestDetailDiv').load('showlistofleaverequests.jsp');
		});
		
		$('#editLeaveRequestLink').click(function(){
			$('#leaveRequestDetailDiv').load('showlistofleaverequestsforedit.jsp');
		});
		
		$('#deleteLeaveRequestLink').click(function(){
			$('#leaveRequestDetailDiv').load('showlistofleaverequestsfordelete.jsp');
		});
	});//end document ready function
</script>
