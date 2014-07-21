<div>
	<table border="0" width="100%">
		<tr style="background:#CCCCCC">
			<td align="center"><a href="#.jsp" id="addPayFrequencyLink"><img src="design/add-icon.gif" border="0" /> <strong>Add Pay Frequency</strong></a></td>
			<td align="center"><a href="#.jsp" id="showListOfPayFrequenciesLink"><img src="design/viewdetail.jpeg" border="0" align="absmiddle"/> <strong>View Pay Frequencies</strong></a></td>
			<td align="center"><a href="#.jsp" id="showListOfPayFrequencyForEditLink"><img src="design/edit-icon.gif" border="0" align="absmiddle"/> <strong>Edit Pay Frequency</strong></a></td>
			<td align="center"><a href="#.jsp" id="showListOfPayFrequencyForDeleteLink"><img src="design/delete.png" border="0" align="absmiddle"/> <strong>Delete Pay Frequency</strong></a></td>			
		</tr>
	</table>
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addPayFrequencyLink').click(function(){
			$('#subTabDetailDiv').load('showaddpayfrequencyform.jsp');
		});
		
		$('#showListOfPayFrequenciesLink').click(function(){
			$('#subTabDetailDiv').load('showlistofpayfrequencies.jsp');
		});
		
		$('#showListOfPayFrequencyForEditLink').click(function(){
			$('#subTabDetailDiv').load('showlistofpayfrequencyforedit.jsp');
		});
		
		$('#showListOfPayFrequencyForDeleteLink').click(function(){
			$('#subTabDetailDiv').load('showlistofpayfrequencyfordelete.jsp');
		});
	});//end document.ready function
</script>