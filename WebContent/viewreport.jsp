<%@page import="com.empadmin.server.classes.*"%>
<!-- Now comes the tabs section mahder -->
<div>
	<!-- Tabs -->
	<h3 class="tit">Report Detail Tab</h3>

	<div class="tabs box">
		<table width="100%" style="background:#eee">
			<tr style="font-weight:bolder">
				<td>Select Report Type:</td>
				<td>
					<select name="slctreport" id="slctreport" style="width:100%">
						<option value="" selected="selected">--Select--</option>
						<!-- <option value="attendance_sheet">Attendance Sheet Report</option>-->
						<option value="employee_profile">Employee Profile Report</option>								
						<option value="employee_by_department_report">Employee By Department Report</option>
						<option value="attendance_report_by_month_year">Attendance Report (For Payroll)</option>
						<option value="leave_report_by_month_year">Leave Report (For Payroll)</option>
						<option value="performance_evaluation_report">Performance Evaluation Report</option>
						<option value="resignation_summary_report">Resignation Summary Report</option>
						<option value="to_whom_it_may_concern_report">To Whom It May Concern Report</option>
						<option value="to_whom_it_may_concern_report_pension_law">To Whom It May Concern Report (Pension Law)</option>																			
					</select>
				</td>				
			</tr>
		</table>
	</div>
	<!-- /tabs -->

	<div id="tabDetailDiv">
		<p class="msg info">Click on the report's tab for manipulating user details</p>
	</div>

	<div id="reportSection"></div>

	<div class="fix"></div>
</div>
<script type="text/javascript">
	$('document').ready(function(){
		$('#slctreport').change(function(){
			var selectedReport = $(this).val();
			if(selectedReport == "employee_profile"){
				$('#tabDetailDiv').load('showemployeetypeselectbar.jsp');
			}else if(selectedReport == "resignation_summary_report"){
				$('#tabDetailDiv').load('showresignationemployeeselectorbar.jsp');
			}else if(selectedReport == "performance_evaluation_report"){
				$('#tabDetailDiv').load('showperformanceevaluationreportemployeeselectorbar.jsp');
			}else if(selectedReport == "employee_by_department_report"){
				$('#tabDetailDiv').load('showemployeebydepartmentselectorbar.jsp');
			}else if(selectedReport == "leave_report_by_month_year"){
				$('#tabDetailDiv').load('showleavereportmonthandyearselectorbar.jsp');
			}else if(selectedReport == "attendance_report_by_month_year"){
				$('#tabDetailDiv').load('showattendancereportmonthandyearselectorbar.jsp');
			}else if(selectedReport == "to_whom_it_may_concern_report"){
				$('#tabDetailDiv').load('showtowhomitmayconcernemployeetypeselectorbar.jsp');
			}else if(selectedReport == "to_whom_it_may_concern_report_pension_law"){
				$('#tabDetailDiv').load('showtowhomitmayconcernemployeetypeselectorbarpensionlaw.jsp');
			}
		});
	});//end document.ready function
</script>
