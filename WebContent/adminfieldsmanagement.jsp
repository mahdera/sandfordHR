<%@page import="com.empadmin.server.classes.*" %>
<%
	int langId = Integer.parseInt(session.getAttribute("langId").toString());
%>
<div>	
	<!-- Tabs --> 
			<h3 class="tit">Administrator Fields Tab </h3> 
 
			<div class="tabs box"> 
				<ul>					
					<li><a href="#.jsp" id="jobLink"><span>Job</span></a></li>
					<li><a href="#.jsp" id="leaveTypeLink"><span>Leave Type</span></a></li>
					<li><a href="#.jsp" id="payFrequencyLink"><span>Pay Frequency</span></a></li>
					<li><a href="#.jsp" id="payGradeLink"><span>Pay Grade</span></a></li>																				
				</ul> 
			</div> <!-- /tabs --> 
			 
			<div id="tabDetailDiv"> 			
				<p class="msg info">Click on the administrator fields tab for manipulating fields / <label id="lblclickonadminfields">
				<%
					String lblClickOnAdminFields = Translation.getLabelCaptionInTheSelectedLanguage(langId, "lblclickonadminfields");
					out.print(lblClickOnAdminFields);
				%></label>
				</p>			
			</div>			
			<div id="subTabDetailDiv"></div>
			<div class="fix"></div> 
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#jobLink').click(function(){
			$('#tabDetailDiv').load('showjobinnermenu.jsp');
		});
		
		$('#leaveTypeLink').click(function(){
			$('#tabDetailDiv').load('showleavetypeinnermenu.jsp');
		});
		
		$('#payFrequencyLink').click(function(){
			$('#tabDetailDiv').load('showpayfrequencyinnermenu.jsp');
		});
		
		$('#payGradeLink').click(function(){
			$('#tabDetailDiv').load('showpaygradeinnermenu.jsp');
		});
	});//end document.ready function
</script>