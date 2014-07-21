<%@page import="com.empadmin.server.classes.*" %>
<div>	
	<!-- Tabs --> 
			<h3 class="tit">Attendance Management Tab</h3> 
 
			<div class="tabs box"> 
				<ul> 
					<li><a href="#.jsp" id="addAttendanceDataLink"><span>Add Attendance Data</span></a></li> 
					<li><a href="#.jsp" id="viewAttendanceDataLink"><span>View Attendance Data</span></a></li> 
					<li><a href="#.jsp" id="editAttendanceDataLink"><span>Edit Attendance Data</span></a></li>
					<li><a href="#.jsp" id="deleteAttendanceDataLink"><span>Delete Attendance Data</span></a></li>					
				</ul>				
			</div> <!-- /tabs -->
			 
			<div id="tabDetailDiv"> 			
				<p class="msg info">Click on the attendance management tabs for manipulating fields</p>			
			</div>			
			<div id="subTabDetailDiv"></div>
			<div class="fix"></div> 
</div>
<script type="text/javascript">
	$(document).ready(function(){
		$('#addAttendanceDataLink').click(function(){
			$('#tabDetailDiv').load('showdepartmentemployeelistdepartmentselectorbarforadd.jsp');
		});
	});//end document.ready function
	
	$(document).ready(function(){
		$('#viewAttendanceDataLink').click(function(){
			$('#tabDetailDiv').load('showdepartmentemployeelistdepartmentselectorbarforlist.jsp');
		});
	});//end document.ready function
	
	$(document).ready(function(){
		$('#editAttendanceDataLink').click(function(){
			$('#tabDetailDiv').load('showdepartmentemployeelistdepartmentselectorbarforedit.jsp');
		});
	});//end document.ready function
	
	$(document).ready(function(){
		$('#deleteAttendanceDataLink').click(function(){
			$('#tabDetailDiv').load('showdepartmentemployeelistdepartmentselectorbarfordelete.jsp');
		});
	});//end document.ready function
</script>