<%@page import="com.empadmin.server.classes.*"%>
<%@page import="java.util.*"%>
<%
	List<RecruitmentRequest> recruitmentRequestList = RecruitmentRequest.getAllRecruitmentRequests();
	Iterator<RecruitmentRequest> recruitmentRequestItr = recruitmentRequestList.iterator();
%>
<div>
	<table border="1" width="100%">
		<tr style="background:#eee;font-weight:bold">
			<td colspan="6" align="center">
				Recruitment Request List
			</td>
		</tr>
		<tr style="background:#eee;font-weight:bold">
			<td>Department/Unit</td>
			<td>Requester and Title</td>
			<td>Date of Request</td>
			<td>Desired Hire Date</td>
			<td>View Detail</td>
			<td>Delete</td>			
		</tr>
		<%
			while(recruitmentRequestItr.hasNext()){
				RecruitmentRequest recruitmentRequest = recruitmentRequestItr.next();
				%>
				<tr>
					<td><%=Department.getDepartment(recruitmentRequest.getDepartmentId()).getDepartmentName() %></td>
					<td><%=recruitmentRequest.getRequesterTitle() %></td>
					<td><%=recruitmentRequest.getRequestDate() %></td>
					<td><%=recruitmentRequest.getDesiredHireDate() %></td>
					<td>
						<a href="#.jsp" onclick="showRecruitmentRequestFormDetailForDelete(<%=recruitmentRequest.getId() %>);">View Detail</a> |
						<a href="#.jsp" onclick="hideRecruitmentRequestFormDetail(<%=recruitmentRequest.getId() %>);">Hide Detail</a>
					</td>
					<td>
						<a href="#.jsp" onclick="deleteThisRecruitmentRequestForm(<%=recruitmentRequest.getId() %>);">Delete</a>
					</td>
				</tr>
				<%
					String divId = "recruitmentRequestDetailDiv"+recruitmentRequest.getId();
				%>
				<tr>
					<td colspan="6">
						<div id="<%=divId %>"></div>
					</td>
				</tr>
				<%
			}//end while loop
		%>
	</table>
</div>
<script type="text/javascript">
	function showRecruitmentRequestFormDetailForDelete(recruitmentRequestId){
		var divId = "recruitmentRequestDetailDiv" + recruitmentRequestId;
		$('#'+divId).load('showrecruitmentrequestformdetail.jsp?recruitmentRequestId='+recruitmentRequestId);
	}
	
	function hideRecruitmentRequestFormDetail(recruitmentRequestId){
		var divId = "recruitmentRequestDetailDiv" + recruitmentRequestId;
		$('#'+divId).html('');
	}
	
	function deleteThisRecruitmentRequestForm(recruitmentRequestId){
		if(window.confirm('Are you sure you want to delete this recruitment request record?')){
			var dataString = "recruitmentRequestId=" + recruitmentRequestId;
			$.ajax({
			    url: 'deleterecruitmentrequestform.jsp',		
			    data: dataString,
			    type:'POST',
			    success:function(response){
			    		$('#tabDetailDiv').load('showlistofrecruitmentrequestesfordelete.jsp');			
			    },
			    error:function(error){
					alert(error);
			    }
			});
			
		}
	}
</script>