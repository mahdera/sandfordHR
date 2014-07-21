<div>
	<table border="0" width="100%">
		<tr style="background:#CCCCCC">
			<td align="center"><a href="#.jsp" id="addPayGradeLink"><img src="design/add-icon.gif" border="0" /> <strong>Add Pay Grade</strong></a></td>
			<td align="center"><a href="#.jsp" id="showListOfPayGradesLink"><img src="design/viewdetail.jpeg" border="0" align="absmiddle"/> <strong>View Pay Grades</strong></a></td>
			<td align="center"><a href="#.jsp" id="showListOfPayGradeForEditLink"><img src="design/edit-icon.gif" border="0" align="absmiddle"/> <strong>Edit Pay Grade</strong></a></td>
			<td align="center"><a href="#.jsp" id="showListOfPayGradeForDeleteLink"><img src="design/delete.png" border="0" align="absmiddle"/> <strong>Delete Pay Grade</strong></a></td>			
		</tr>
	</table>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addPayGradeLink').click(function(){
			$('#subTabDetailDiv').load('showaddpaygradeform.jsp');
		});
		
		$('#showListOfPayGradesLink').click(function(){
			$('#subTabDetailDiv').load('showlistofpaygrades.jsp');
		});
		
		$('#showListOfPayGradeForEditLink').click(function(){
			$('#subTabDetailDiv').load('showlistofpaygradeforedit.jsp');
		});
		
		$('#showListOfPayGradeForDeleteLink').click(function(){
			$('#subTabDetailDiv').load('showlistofpaygradefordelete.jsp');
		});
	});//end document.ready function
</script>