<%@page import="com.empadmin.server.classes.*"%>
<table border="1" width="100%" style="background:#eee">
	<tr style="font-weight:bolder">
		<td><a href="#.jsp" id="enterFiledsLink">Enter Fields</a></td>
		<td><a href="#.jsp" id="listLookupValuesLink">List Lookup Values</a></td>
	</tr>
</table>
<div id="lookupDetailDiv"></div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#enterFiledsLink').click(function(){
			$('#lookupDetailDiv').load('showenterlookupfieldsform.jsp');
		});
		
		$('#listLookupValuesLink').click(function(){
			$('#lookupDetailDiv').load('showlistoflookupvalues.jsp');
		});
	});//end document.ready function
</script>