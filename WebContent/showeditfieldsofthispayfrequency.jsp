<%@page import="com.empadmin.server.classes.*"%>
<%
	int payFrequencyId = Integer.parseInt(request.getParameter("payFrequencyId"));
	PayFrequency payFrequency = PayFrequency.getPayFrequency(payFrequencyId);
	//now define the control name in here..
	String payFrequencyNameControlName = "txtfrequencyname" + payFrequencyId;
%>
<form style="background:#eeeeee">
	<table border="0" width="100%">
		<tr>
			<td align="right">Frequency Name:</td>
			<td>
				<input type="text" name="<%=payFrequencyNameControlName %>" id="<%=payFrequencyNameControlName %>" size="30" value="<%=payFrequency.getFrequencyName() %>"/>
			</td>
		</tr>		
		<tr>
			<td colspan="2" align="right">
				<%
					String buttonId = "btnupdate" + payFrequencyId;
				%>
				<input type="button" value="Update" class="input-submit" id="<%=buttonId%>"/>
				<input type="reset" value="Undo" class="input-submit"/>
			</td>
		</tr>		
	</table>
</form>
<script type="text/javascript">
	$(document).ready(function(){
		var payFrequencyId = "<%=payFrequencyId%>";
		var buttonId = "btnupdate" + payFrequencyId;
		
		$('#'+buttonId).click(function(){
			var payFrequencyNameControlName = "txtfrequencyname" + payFrequencyId;
			var frequencyName = $('#'+payFrequencyNameControlName).val();
			if(frequencyName != ""){
				var dataString = "frequencyName="+frequencyName+"&payFrequencyId="+payFrequencyId;
				$.ajax({
				    url: 'updatepayfrequency.jsp',		
				    data: dataString,
				    type:'POST',
				    success:function(response){			    		
				    		$('#subTabDetailDiv').load('showlistofpayfrequencyforedit.jsp');			
				    },
				    error:function(error){
						alert(error);
				    }
				});
			}//end if condition...
		});
	});//end document.ready function
</script>