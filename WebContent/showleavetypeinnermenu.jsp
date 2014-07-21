<div>
	<table border="0" width="100%">
		<tr style="background:#CCCCCC">
			<td align="center"><a href="#.jsp" id="addLeaveTypeLink"><img src="design/add-icon.gif" border="0" /> <strong>Add Leave Type</strong></a></td>
			<td align="center"><a href="#.jsp" id="showListOfLeaveTypesLink"><img src="design/viewdetail.jpeg" border="0" align="absmiddle"/> <strong>View Leave Types</strong></a></td>
			<td align="center"><a href="#.jsp" id="showListOfLeaveTypesForEditLink"><img src="design/edit-icon.gif" border="0" align="absmiddle"/> <strong>Edit Leave Type</strong></a></td>
			<td align="center"><a href="#.jsp" id="showListOfLeaveTypesForDeleteLink"><img src="design/delete.png" border="0" align="absmiddle"/> <strong>Delete Leave Type</strong></a></td>
		</tr>
	</table>
</div>
<div id="leaveTypeDetailDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addLeaveTypeLink').click(function(){
			$('#leaveTypeDetailDiv').load('showaddleavetype.jsp');
		});
		
		$('#showListOfLeaveTypesLink').click(function(){
			$('#leaveTypeDetailDiv').load('showlistofleavetypes.jsp');
		});
		
		$('#showListOfLeaveTypesForEditLink').click(function(){
			$('#leaveTypeDetailDiv').load('showlistofleavetypesforedit.jsp');
		});
		
		$('#showListOfLeaveTypesForDeleteLink').click(function(){
			$('#leaveTypeDetailDiv').load('showlistofleavetypesfordelete.jsp');
		});
	});//end document.ready function
</script>