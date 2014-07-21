<div>
	<table border="0" width="100%">
		<tr style="background:#CCCCCC">
			<td align="center"><a href="#.jsp" id="addJobLink"><img src="design/add-icon.gif" border="0" /> <strong>Add Job</strong></a></td>
			<td align="center"><a href="#.jsp" id="showListOfJobsLink"><img src="design/viewdetail.jpeg" border="0" align="absmiddle"/> <strong>View Jobs</strong></a></td>
			<td align="center"><a href="#.jsp" id="showListOfJobsForEditLink"><img src="design/edit-icon.gif" border="0" align="absmiddle"/> <strong>Edit Job</strong></a></td>
			<td align="center"><a href="#.jsp" id="showListOfJobsForDeleteLink"><img src="design/delete.png" border="0" align="absmiddle"/> <strong>Delete Job</strong></a></td>			
		</tr>
	</table>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addJobLink').click(function(){
			$('#subTabDetailDiv').load('showaddjobform.jsp');
		});
		
		$('#showListOfJobsLink').click(function(){
			$('#subTabDetailDiv').load('showlistofjobs.jsp');
		});
		
		$('#showListOfJobsForEditLink').click(function(){
			$('#subTabDetailDiv').load('showlistofjobsforedit.jsp');
		});
		
		$('#showListOfJobsForDeleteLink').click(function(){
			$('#subTabDetailDiv').load('showlistofjobsfordelete.jsp');
		});
	});//end document.ready function
</script>