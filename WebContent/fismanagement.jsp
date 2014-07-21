<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<div id="divisionRegistrationFormDiv">	
</div>
<!-- Now comes the tabs section mahder -->
<div>	
	<!-- Tabs --> 
			<h3 class="tit">Division Details Tab</h3> 
 
			<div class="tabs box"> 
				<ul> 
					<li><a href="#.jsp" onclick="showDivisionRegistrationForm();"><span>Add Division</span></a></li>
					<li><a href="#.jsp" onclick="showListOfFIS();"><span>View Division</span></a></li> 
					<li><a href="#.jsp" onclick="showListOfFISForEdit();"><span>Edit Division</span></a></li> 
					<li><a href="#.jsp" onclick="showListOfFISForDelete();"><span>Delete Division</span></a></li> 
				</ul> 
			</div> <!-- /tabs -->
			
			 
			<div id="tabDetailDiv"> 			
				<p class="msg info">Click on the Division tab for manipulating divisions</p>			
			</div>			
			
			<div class="fix"></div> 
</div>
