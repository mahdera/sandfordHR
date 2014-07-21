<div>
	<table border="1" width="100%">
		<tr style="background:#eee;font-weight:bold">
			<td colspan="4" align="center">
				Performance Appraisal Module
			</td>
		</tr>
		<tr style="background:#eee;font-weight:bold">
			<td align="center"><a href="#.jsp" id="addPerformanceAppraisalFormLink">Add</a></td>
			<td align="center"><a href="#.jsp" id="viewPerformanceAppraisalFormLink">View</a></td>
			<td align="center"><a href="#.jsp" id="editPerformanceAppraisalFormLink">Edit</a></td>
			<td align="center"><a href="#.jsp" id="deletePerformanceAppraisalFormLink">Delete</a></td>
		</tr>
	</table>
</div>
<div id="performanceAppraisalDetailDiv"></div>
<div id="successDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addPerformanceAppraisalFormLink').click(function(){
			$('#performanceAppraisalDetailDiv').load('performanceappraisalmanagement.jsp');
		});
		
		$('#viewPerformanceAppraisalFormLink').click(function(){
			$('#performanceAppraisalDetailDiv').load('showlistofperformanceappraisalforms.jsp');
		});
		
		$('#editPerformanceAppraisalFormLink').click(function(){
			$('#performanceAppraisalDetailDiv').load('showlistofperformanceappraisalformsforedit.jsp');
		});
		
		$('#deletePerformanceAppraisalFormLink').click(function(){
			$('#performanceAppraisalDetailDiv').load('showlistofperformanceappraisalformsfordelete.jsp');
		});
	});//end document ready function
</script>
