<%@page import="com.empadmin.server.classes.*" %>
<%
	int jobId = Integer.parseInt(request.getParameter("jobId"));	 
	Job jobObj = Job.getJob(jobId);			
%>
<form>
<table border="1" width="100%" style="background:#eeeeee">
	<tr>
		<td align="right">Job Title:</td>
		<td>
			<input type="text" name="txteditjobtitle" id="txteditjobtitle" value="<%=jobObj.getJobTitle() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td align="right">Job Classification:</td>
		<td>
			<input type="text" name="txteditjobclassification" id="txteditjobclassification" value="<%=jobObj.getJobClassification() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td align="right">Job Classification Number:</td>
		<td>
			<input type="text" name="txteditjobclassificationnumber" id="txteditjobclassificationnumber" value="<%=jobObj.getJobClassificationNumber() %>" size="70px"/>			
		</td>
	</tr>
	<tr>
		<td align="right" style="vertical-align:middle">Job Description:</td>
		<td>
			<textarea class="jqte-test" name="textareaeditjobdescription" id="textareaeditjobdescription" cols="100" rows="4"><%=jobObj.getJobDescription() %></textarea>			
		</td>
	</tr>
	<tr>
		<td colspan="2" align="right">
			<input type="button" value="Update" class="input-submit" id="btnupdate"/>
			<input type="reset" value="Reset to default value" class="input-submit"/>
		</td>
	</tr>
</table>
</form>
<script type="text/javascript">
	$(document).ready(function(){
		$('.jqte-test').jqte();			
		// settings of status
		var jqteStatus = true;
		$(".status").click(function()
		{
			jqteStatus = jqteStatus ? false : true;
			$('.jqte-test').jqte({"status" : jqteStatus})
		});
		
		$('#btnupdate').click(function(){
			var jobId = "<%=jobId %>";
			var jobTitle = $('#txteditjobtitle').val();
			var jobClassification = $('#txteditjobclassification').val();
			var jobClassificationNumber = $('#txteditjobclassificationnumber').val();
			var jobDescription = $('#textareaeditjobdescription').val();
			
			var dataString = "jobTitle="+jobTitle+"&jobClassification="+jobClassification+
			"&jobClassificationNumber="+jobClassificationNumber+"&jobDescription="+jobDescription+
			"&jobId="+jobId;		
			
			$.ajax({
			    url: 'updatejob.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){			    		
			    		alert("Job updated successfully!");
			    		$('#subTabDetailDiv').load('showlistofjobsforedit.jsp');					
			    },
			    error:function(error){
					alert(error);
			    }
			});
		});//end button.update function
	});//end document.ready function
</script>