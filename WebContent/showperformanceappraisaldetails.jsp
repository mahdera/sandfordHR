<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	long performanceAppraisalId = Long.parseLong(request.getParameter("performanceAppraisalId"));
	PerformanceAppraisal performanceAppraisal = PerformanceAppraisal.getPerformanceAppraisal(performanceAppraisalId);
%>
<form name="frmperformanceappraisal" id="frmperformanceappraisal">
	<table border="1" width="100%">
		<tr>
			<td align="center">
				<h4>Sandford International School</h4>
				<h4>Administrative & General Employees</h4>
				<h4>Work Plan and Evaluation Form</h4>
				<h4>የሳንድፎርድ ትምህርት ቤት የአስተዳደርና የጠቅላላ</h4>
				<h4>አገልግሎት ሠራተኛዎች የሥራ እቅድና የውጤት</h4>
				<h4>ግምገማ ሪፖርት</h4>
			</td>
		</tr>
		<tr>
			<td style="background:#000000;color:#ffffff">EMPLOYEE BASIC INFORMATION / የሠራተኛው መሠረታዊ መረጃ</td>
		</tr>
		<tr style="background:#eeeeee">
			<td>
				<table border="1" width="100%">					
					<tr>
						<td width="50%">Position Title/የሥራ ምድብ:</td>
						<td><input type="text" name="txtpositiontitle" id="txtpositiontitle" value="<%=(performanceAppraisal.getPositionTitle() != null ? performanceAppraisal.getPositionTitle() : "")%>" disabled="disabled"/></td>
					</tr>
					<tr>
						<td>Employment Date/የቅጥር ዘመን:</td>
						<td>
							<input type="text" name="txtemploymentdate" id="txtemploymentdate" value="<%=(performanceAppraisal.getEmploymentDate() != null ? performanceAppraisal.getEmploymentDate() : "")%>" disabled="disabled"/>							
						</td>
					</tr>
					<tr>
						<td>Department/Unit/የሠራተኛው የሥራ ክፍል:</td>
						<td>
							<select name="slctdeparment" id="slctdeparment" style="width:100%" disabled="disabled">
								<option value="" selected="selected">--Select--</option>
								<%
									List<Department> departmentList = Department.getAllDepartments();
									Iterator<Department> departmentItr = departmentList.iterator();
									while(departmentItr.hasNext()){
										Department department = departmentItr.next();
										if(performanceAppraisal.getDepartmentId() == department.getId()){
										%>
											<option value="<%=department.getId() %>" selected="selected"><%=department.getDepartmentName() %></option>
										<%
										}else{
										%>
											<option value="<%=department.getId() %>"><%=department.getDepartmentName() %></option>
										<%
										}
									}//end while loop
								%>
							</select>
						</td>
					</tr>
					<tr>
						<td>Date of Appraisal/የዚህ ግምገማ ቀን:</td>
						<td>
							<input type="text" name="txtappraisaldate" id="txtappraisaldate" value="<%=(performanceAppraisal.getAppraisalDate() != null ? performanceAppraisal.getAppraisalDate() : "") %>" disabled="disabled"/>							
						</td>
					</tr>
					<tr>
						<td>Period Covered/የመገምገሚያው ዘመን ክ - እስከ:</td>
						<td>
							<input type="text" name="txtperiodcovered" id="txtperiodcovered" value="<%=(performanceAppraisal.getPeriodCovered() != null ? performanceAppraisal.getPeriodCovered() : "")%>" disabled="disabled"/>
						</td>
					</tr>
					<tr>
						<td>Date of Last Appraisal/ከዚህ በፊት ለመጨረሻ ጊዜ የተገመገመበት ቀን:</td>
						<td>
							<input type="text" name="txtlastappraisaldate" id="txtlastappraisaldate" value="<%=(performanceAppraisal.getLastAppraisalDate() != null ? performanceAppraisal.getLastAppraisalDate() : "")%>" disabled="disabled"/>							
						</td>
					</tr>
				</table>
			</td>
		</tr>		
		<tr style="background:#eeeeee">
			<td>
				Summary of duties (Work requirement statement)<br/>
				የሠራተኛው ዋና ዋና የተግባር ዝርዝር 
				<textarea name="textareasummaryofduties" id="textareasummaryofduties" cols="100" rows="3" style="width:100%" disabled="disabled"><%=(performanceAppraisal.getSummaryOfDuties() != null ? performanceAppraisal.getSummaryOfDuties() : "")%></textarea>
			</td>
		</tr>		
		<tr style="background:#eeeeee">
			<td>
				List specific goals and objectives (for the rating period)<br/>
				በዚህ ዓመት የሚጠበቁ ዋና ዋና ግቦችና የሥራ ውጤቶች 
				<textarea name="textareaspecificgoalsandobjectives" id="textareaspecificgoalsandobjectives" cols="100" rows="3" style="width:100%" disabled="disabled"><%=(performanceAppraisal.getSpecificGoalsObjectives() != null ? performanceAppraisal.getSpecificGoalsObjectives() : "") %></textarea>
			</td>
		</tr>
		<tr>
			<td style="background:#000000;color:#ffffff">
				EVALUATION OF PERFORMANCE/የአሰራር ግምገማ<br/> To be completed for all Administrative & General Service employees<br/>
				የመመዘኛ ነጥቦችና የግምገማ ውጤት። በተገቢው ሳጥን ውስጥ የ(.) ምልክት ያስቀምጡ <br/>
				Factors of Appraisal & Evaluation results. Click on the appropriate option.
			</td>
		</tr>
		<tr style="background:#eeeeee">
			<td>
				<table border="0" width="100%">
					<tr>
						<td>Ser No./ተራ.ቁ.</td>
						<td>Factors of appraisal/የመገምገሚያ ነጥቦች</td>
						<td>N/A/አይመለከትም</td>
						<td align="center">Much less than adequate (Unsatisfactory)/አጥጋቢ ያልሆነ<br/>1</td>
						<td align="center">Adequate with limitation needs improvement/መሻሻል ያለበት<br/>2</td>
						<td align="center">Fully successful-Satisfactory/በቂ<br/>3</td>
						<td align="center">Commendable Good/አጥጋቢ<br/>4</td>
						<td align="center">Outstanding-Very Good/ከፍተኛ<br/>5</td>
					</tr>					
					<tr>
						<td>1</td>
						<td><strong>Dependability / አስተማማኝነት</strong><br/><i>Dependable to be delegated or
						given additional responsibility, keeping secrets of the school.</i></td>
						<td align="center">
							<%
								if(performanceAppraisal.getDependability().equalsIgnoreCase("n/a")){
							%>
									<input type="radio" name="q1" id="q1na" value="N/A" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q1" id="q1na" value="N/A" disabled="disabled"/>
							<%		
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getDependability().equalsIgnoreCase("unsatisfactory")){
							%>
									<input type="radio" name="q1" id="q1unsatisfactory" value="Unsatisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q1" id="q1unsatisfactory" value="Unsatisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getDependability().equalsIgnoreCase("improvement")){
							%>
									<input type="radio" name="q1" id="q1improvement" value="Improvement" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q1" id="q1improvement" value="Improvement" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getDependability().equalsIgnoreCase("satisfactory")){
							%>
									<input type="radio" name="q1" id="q1satisfactory" value="Satisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q1" id="q1satisfactory" value="Satisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getDependability().equalsIgnoreCase("good")){
							%>
									<input type="radio" name="q1" id="q1good" value="Good" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q1" id="q1good" value="Good" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getDependability().equalsIgnoreCase("very good")){
							%>
									<input type="radio" name="q1" id="q1verygood" value="Very good" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q1" id="q1verygood" value="Very good" disabled="disabled"/>
							<%
								}
							%>
						</td>
					</tr>
					<tr>
						<td>2</td>
						<td><strong>Quality / የሥራ ጥራት
						</strong><br/><i>The quality of error free work performed
						by the individual involved.</i></td>
						<td align="center">
							<%
								if(performanceAppraisal.getQuality().equalsIgnoreCase("n/a")){
							%>
									<input type="radio" name="q2" id="q2na" value="N/A" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q2" id="q2na" value="N/A" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getQuality().equalsIgnoreCase("Unsatisfactory")){
							%>
									<input type="radio" name="q2" id="q2unsatisfactory" value="Unsatisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q2" id="q2unsatisfactory" value="Unsatisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getQuality().equalsIgnoreCase("Improvement")){
							%>
									<input type="radio" name="q2" id="q2improvement" value="Improvement" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q2" id="q2improvement" value="Improvement" disabled="disabled"/>
							<% 
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getQuality().equalsIgnoreCase("Satisfactory")){
							%>
									<input type="radio" name="q2" id="q2satisfactory" value="Satisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q2" id="q2satisfactory" value="Satisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getQuality().equalsIgnoreCase("good")){
							%>
									<input type="radio" name="q2" id="q2good" value="Good" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q2" id="q2good" value="Good" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getQuality().equalsIgnoreCase("very good")){
							%>
									<input type="radio" name="q2" id="q2verygood" value="Very good" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q2" id="q2verygood" value="Very good" disabled="disabled"/>
							<%
								}
							%>
						</td>
					</tr>
					<tr>
						<td>3</td>
						<td><strong>Job Knowledge & skills, judgment and decisiveness / የሥራ እውቀትና ክህሎት እንዲሁም ዳኝነትና ወሳኝነት ችሎታ</strong><br/><i>
						Extent individual displays or masters the skill required to do the job
						and effort applied to use the knowledge on judgment and decisiveness.</i></td>
						<td align="center">
							<%
								if(performanceAppraisal.getJobKnowledgeSkill().equalsIgnoreCase("n/a")){
							%>
									<input type="radio" name="q3" id="q3na" value="N/A" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q3" id="q3na" value="N/A" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getJobKnowledgeSkill().equalsIgnoreCase("Unsatisfactory")){
							%>
									<input type="radio" name="q3" id="q3unsatisfactory" value="Unsatisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q3" id="q3unsatisfactory" value="Unsatisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getJobKnowledgeSkill().equalsIgnoreCase("Improvement")){
							%>
									<input type="radio" name="q3" id="q3improvement" value="Improvement" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q3" id="q3improvement" value="Improvement" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getJobKnowledgeSkill().equalsIgnoreCase("Satisfactory")){
							%>
									<input type="radio" name="q3" id="q3satisfactory" value="Satisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q3" id="q3satisfactory" value="Satisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getJobKnowledgeSkill().equalsIgnoreCase("good")){
							%>
									<input type="radio" name="q3" id="q3good" value="Good" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q3" id="q3good" value="Good" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getJobKnowledgeSkill().equalsIgnoreCase("very good")){
							%>
									<input type="radio" name="q3" id="q3verygood" value="Very good" disabled="disabled" checked="checked"/>
							<%
								}else{
							%>
									<input type="radio" name="q3" id="q3verygood" value="Very good" disabled="disabled"/>
							<%
								}
							%>
						</td>
					</tr>
					<tr>
						<td>4</td>
						<td><strong>Attendance & use of time / የሥራ ሰዓትን የማክበርና የጊዜ አጠቃቀም</strong><br/><i>This refers to the physical
						presence on the job and the effective use of time</i></td>
						<td align="center">
							<%
								if(performanceAppraisal.getAttendanceUseOfTime().equalsIgnoreCase("n/a")){
							%>
									<input type="radio" name="q4" id="q4na" value="N/A" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q4" id="q4na" value="N/A" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getAttendanceUseOfTime().equalsIgnoreCase("Unsatisfactory")){
							%>
									<input type="radio" name="q4" id="q4unsatisfactory" value="Unsatisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q4" id="q4unsatisfactory" value="Unsatisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getAttendanceUseOfTime().equalsIgnoreCase("Improvement")){
							%>
									<input type="radio" name="q4" id="q4improvement" value="Improvement" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q4" id="q4improvement" value="Improvement" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getAttendanceUseOfTime().equalsIgnoreCase("Satisfactory")){
							%>
									<input type="radio" name="q4" id="q4satisfactory" value="Satisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q4" id="q4satisfactory" value="Satisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getJobKnowledgeSkill().equalsIgnoreCase("good")){
							%>
									<input type="radio" name="q4" id="q4good" value="Good" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q4" id="q4good" value="Good" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getJobKnowledgeSkill().equalsIgnoreCase("very good")){
							%>
									<input type="radio" name="q4" id="q4verygood" value="Very good" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q4" id="q4verygood" value="Very good" disabled="disabled"/>
							<%
								}
							%>
						</td>
					</tr>
					<tr>
						<td>5</td>
						<td><strong>Communication Ability / የቃልና የጽሑፍ የመግባባት ችሎታ</strong><br/><i>The degree of effectivness the
						individual freely comminicates ideas, interactions orally and in writing.</i></td>
						<td align="center">
							<%
								if(performanceAppraisal.getCommunicationAbility().equalsIgnoreCase("n/a")){
							%>
									<input type="radio" name="q5" id="q5na" value="N/A" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q5" id="q5na" value="N/A" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getCommunicationAbility().equalsIgnoreCase("Unsatisfactory")){
							%>
									<input type="radio" name="q5" id="q5unsatisfactory" value="Unsatisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q5" id="q5unsatisfactory" value="Unsatisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getCommunicationAbility().equalsIgnoreCase("Improvement")){
							%>
									<input type="radio" name="q5" id="q5improvement" value="Improvement" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q5" id="q5improvement" value="Improvement" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getCommunicationAbility().equalsIgnoreCase("Satisfactory")){
							%>
									<input type="radio" name="q5" id="q5satisfactory" value="Satisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q5" id="q5satisfactory" value="Satisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getCommunicationAbility().equalsIgnoreCase("good")){
							%>
									<input type="radio" name="q5" id="q5good" value="Good" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q5" id="q5good" value="Good" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getCommunicationAbility().equalsIgnoreCase("very good")){
							%>
									<input type="radio" name="q5" id="q5verygood" value="Very good" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q5" id="q5verygood" value="Very good" disabled="disabled"/>
							<%
								}
							%>
						</td>
					</tr>
					<tr>
						<td>6</td>
						<td><strong>Policies & Guidelines / የት/ቤቱን ደንብና መመሪያ የመተግበር ብቃት</strong><br/><i>The extent the individual complies with policies, rules and guidelines
						of the school.</i></td>
						<td align="center">
							<%
								if(performanceAppraisal.getPoliciesAndGuidelines().equalsIgnoreCase("n/a")){
							%>
									<input type="radio" name="q6" id="q6na" value="N/A" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q6" id="q6na" value="N/A" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getPoliciesAndGuidelines().equalsIgnoreCase("Unsatisfactory")){
							%>
									<input type="radio" name="q6" id="q6unsatisfactory" value="Unsatisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q6" id="q6unsatisfactory" value="Unsatisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getPoliciesAndGuidelines().equalsIgnoreCase("Improvement")){
							%>
									<input type="radio" name="q6" id="q6improvement" value="Improvement" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q6" id="q6improvement" value="Improvement" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getPoliciesAndGuidelines().equalsIgnoreCase("Satisfactory")){
							%>
									<input type="radio" name="q6" id="q6satisfactory" value="Satisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q6" id="q6satisfactory" value="Satisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getPoliciesAndGuidelines().equalsIgnoreCase("good")){
							%>
									<input type="radio" name="q6" id="q6good" value="Good" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q6" id="q6good" value="Good" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getPoliciesAndGuidelines().equalsIgnoreCase("very good")){
							%>
									<input type="radio" name="q6" id="q6verygood" value="Very good" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q6" id="q6verygood" value="Very good" disabled="disabled"/>
							<%
								}
							%>
						</td>
					</tr>
					<tr>
						<td>7</td>
						<td><strong>Cooperation/understanding / ከሌሎች ሠራተኛዎች ጋር ያለው ትብብርና መግባባት</strong><br/><i>This refers to the degree the individual
						gets along with others, i.e, work-mates, employees & supervisors in carrying out assignments.</i></td>
						<td align="center">
							<%
								if(performanceAppraisal.getCooperationUnderstanding().equalsIgnoreCase("n/a")){
							%>
									<input type="radio" name="q7" id="q7na" value="N/A" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q7" id="q7na" value="N/A" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getCooperationUnderstanding().equalsIgnoreCase("Unsatisfactory")){
							%>
									<input type="radio" name="q7" id="q7unsatisfactory" value="Unsatisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q7" id="q7unsatisfactory" value="Unsatisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getCooperationUnderstanding().equalsIgnoreCase("Improvement")){
							%>
									<input type="radio" name="q7" id="q7improvement" value="Improvement" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q7" id="q7improvement" value="Improvement" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getCooperationUnderstanding().equalsIgnoreCase("Satisfactory")){
							%>
									<input type="radio" name="q7" id="q7satisfactory" value="Satisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q7" id="q7satisfactory" value="Satisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getCooperationUnderstanding().equalsIgnoreCase("good")){
							%>
									<input type="radio" name="q7" id="q7good" value="Good" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q7" id="q7good" value="Good" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getCooperationUnderstanding().equalsIgnoreCase("very good")){
							%>
									<input type="radio" name="q7" id="q7verygood" value="Very good" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q7" id="q7verygood" value="Very good" disabled="disabled"/>
							<%
								}
							%>
						</td>
					</tr>
					<tr>
						<td>8</td>
						<td><strong>Responsibility / ኃላፊነትን የመውሰድና የየኔነት ስሜት በሥራም ሆነ በንብረት ላይ</strong><br/><i>The care excersiced in use of resources &
						the extent individual is cost conscious in carrying out decisions.</i></td>
						<td align="center">
							<%
								if(performanceAppraisal.getResponsibility().equalsIgnoreCase("n/a")){
							%>
									<input type="radio" name="q8" id="q8na" value="N/A" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q8" id="q8na" value="N/A" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getResponsibility().equalsIgnoreCase("Unsatisfactory")){
							%>
									<input type="radio" name="q8" id="q8unsatisfactory" value="Unsatisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q8" id="q8unsatisfactory" value="Unsatisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getResponsibility().equalsIgnoreCase("Improvement")){
							%>
									<input type="radio" name="q8" id="q8improvement" value="Improvement" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q8" id="q8improvement" value="Improvement" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getResponsibility().equalsIgnoreCase("Satisfactory")){
							%>
									<input type="radio" name="q8" id="q8satisfactory" value="Satisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q8" id="q8satisfactory" value="Satisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getResponsibility().equalsIgnoreCase("good")){
							%>
									<input type="radio" name="q8" id="q8good" value="Good" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q8" id="q8good" value="Good" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getResponsibility().equalsIgnoreCase("very good")){
							%>
									<input type="radio" name="q8" id="q8verygood" value="Very good" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q8" id="q8verygood" value="Very good" disabled="disabled"/>
							<%
								}
							%>
						</td>
					</tr>
					<tr>
						<td>9</td>
						<td><strong>Behavior & Personality / ባህሪውና የግል ማንነቱ</strong><br/><i>This refers to individual integrity,
						personality, respect commanded, getting align with others.</i></td>
						<td align="center">
							<%
								if(performanceAppraisal.getBehaviorAndPersonality().equalsIgnoreCase("n/a")){
							%>
									<input type="radio" name="q9" id="q9na" value="N/A" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q9" id="q9na" value="N/A" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getBehaviorAndPersonality().equalsIgnoreCase("Unsatisfactory")){
							%>
									<input type="radio" name="q9" id="q9unsatisfactory" value="Unsatisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q9" id="q9unsatisfactory" value="Unsatisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getBehaviorAndPersonality().equalsIgnoreCase("Improvement")){
							%>
									<input type="radio" name="q9" id="q9improvement" value="Improvement" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q9" id="q9improvement" value="Improvement" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getBehaviorAndPersonality().equalsIgnoreCase("Satisfactory")){
							%>
									<input type="radio" name="q9" id="q9satisfactory" value="Satisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q9" id="q9satisfactory" value="Satisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getBehaviorAndPersonality().equalsIgnoreCase("good")){
							%>
									<input type="radio" name="q9" id="q9good" value="Good" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q9" id="q9good" value="Good" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getBehaviorAndPersonality().equalsIgnoreCase("very good")){
							%>
									<input type="radio" name="q9" id="q9verygood" value="Very good" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q9" id="q9verygood" value="Very good" disabled="disabled"/>
							<%
								}
							%>
						</td>
					</tr>
					<tr>
						<td>10</td>
						<td><strong>Initiative & Resourcefulness / ተነሳሽነት እና የፈጠራ ችሎታ</strong><br/><i>This referes to creative capability
						and effects, i.e, the extent individual initiates, accepts and applies
						new ideas, and imposed methods of work</i></td>
						<td align="center">
							<%
								if(performanceAppraisal.getInitiativeAndResourcefulness().equalsIgnoreCase("n/a")){
							%>
									<input type="radio" name="q10" id="q10na" value="N/A" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q10" id="q10na" value="N/A" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getInitiativeAndResourcefulness().equalsIgnoreCase("Unsatisfactory")){
							%>
									<input type="radio" name="q10" id="q10unsatisfactory" value="Unsatisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q10" id="q10unsatisfactory" value="Unsatisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getInitiativeAndResourcefulness().equalsIgnoreCase("Improvement")){
							%>
									<input type="radio" name="q10" id="q10improvement" value="Improvement" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q10" id="q10improvement" value="Improvement" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getInitiativeAndResourcefulness().equalsIgnoreCase("Satisfactory")){
							%>
									<input type="radio" name="q10" id="q10satisfactory" value="Satisfactory" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q10" id="q10satisfactory" value="Satisfactory" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getInitiativeAndResourcefulness().equalsIgnoreCase("good")){
							%>
									<input type="radio" name="q10" id="q10good" value="Good" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q10" id="q10good" value="Good" disabled="disabled"/>
							<%
								}
							%>
						</td>
						<td align="center">
							<%
								if(performanceAppraisal.getInitiativeAndResourcefulness().equalsIgnoreCase("very good")){
							%>
									<input type="radio" name="q10" id="q10verygood" value="Very good" checked="checked" disabled="disabled"/>
							<%
								}else{
							%>
									<input type="radio" name="q10" id="q10verygood" value="Very good" disabled="disabled"/>
							<%
								}
							%>
						</td>
					</tr>
					<tr>
						<td>Total Result:</td>
						<td colspan="7">
							<input type="text" name="txttotalresult" id="txttotalresult" disabled="disabled"/>
						</td>
					</tr>
					<tr>
						<td>Average:</td>
						<td colspan="7">
							<input type="text" name="txtaverage" id="txtaverage" disabled="disabled"/>
						</td>
					</tr>					
				</table>
			</td>
		</tr>
	</table>
</form>
<script type="text/javascript">
	$(document).ready(function(){
		var dependability = $("input[name=q1]:checked", '#frmperformanceappraisal').val();
		var quality = $("input[name=q2]:checked", '#frmperformanceappraisal').val();
		var jobKnowledgeSkill = $("input[name=q3]:checked", '#frmperformanceappraisal').val();
		var attendanceUseOfTime = $("input[name=q4]:checked", '#frmperformanceappraisal').val();
		var communicationAbility = $("input[name=q5]:checked", '#frmperformanceappraisal').val();
		var policiesAndGuidelines = $("input[name=q6]:checked", '#frmperformanceappraisal').val();
		var cooperationUnderstanding = $("input[name=q7]:checked", '#frmperformanceappraisal').val();
		var responsibility = $("input[name=q8]:checked", '#frmperformanceappraisal').val();
		var behaviorAndPersonality = $("input[name=q9]:checked", '#frmperformanceappraisal').val();
		var initiativeAndResourcefulness = $("input[name=q10]:checked", '#frmperformanceappraisal').val();
		var dependabilityVal=0;
		var qualityVal=0;
		var jobKnowledgeSkillVal=0;
		var attendanceUseOfTimeVal=0;
		var communicationAbilityVal=0;
		var policiesAndGuidelinesVal=0;
		var cooperationUnderstandingVal=0;
		var responsibilityVal=0;
		var behaviorAndPersonalityVal=0;
		var initiativeAndResourcefulnessVal=0;
		var deno = 10;
		
		if(dependability == "N/A"){
			deno--;
		}
		
		if(dependability == "Unsatisfactory"){
			dependabilityVal = 1;
		}
		
		if(dependability == "Improvement"){
			dependabilityVal = 2;
		}
		
		if(dependability == "Satisfactory"){
			dependabilityVal = 3;
		}
		
		if(dependability == "Good"){
			dependabilityVal = 4;
		}
		
		if(dependability == "Very good"){
			dependabilityVal = 5;
		}
		
		if(quality == "N/A"){
			deno--;
		}
		
		if(quality == "Unsatisfactory"){
			qualityVal = 1;
		}
		
		if(quality == "Improvement"){
			qualityVal = 2;
		}
		
		if(quality == "Satisfactory"){
			qualityVal = 3;
		}
		
		if(quality == "Good"){
			qualityVal = 4;
		}
		
		if(quality == "Very good"){
			qualityVal = 5;
		}
		
		if(jobKnowledgeSkill == "N/A"){
			deno--;
		}
		
		if(jobKnowledgeSkill == "Unsatisfactory"){
			jobKnowledgeSkillVal = 1;
		}
		
		if(jobKnowledgeSkill == "Improvement"){
			jobKnowledgeSkillVal = 2;
		}
		
		if(jobKnowledgeSkill == "Satisfactory"){
			jobKnowledgeSkillVal = 3;
		}
		
		if(jobKnowledgeSkill == "Good"){
			jobKnowledgeSkillVal = 4;
		}
		
		if(jobKnowledgeSkill == "Very good"){
			jobKnowledgeSkillVal = 5;
		}
		
		if(attendanceUseOfTime == "N/A"){
			deno--;
		}
		
		if(attendanceUseOfTime == "Unsatisfactory"){
			attendanceUseOfTimeVal = 1;
		}
		
		if(attendanceUseOfTime == "Improvement"){
			attendanceUseOfTimeVal = 2;
		}
		
		if(attendanceUseOfTime == "Satisfactory"){
			attendanceUseOfTimeVal = 3;
		}
		
		if(attendanceUseOfTime == "Good"){
			attendanceUseOfTimeVal = 4;
		}
		
		if(attendanceUseOfTime == "Very good"){
			attendanceUseOfTimeVal = 5;
		}
		
		if(communicationAbility == "N/A"){
			deno--;
		}
		
		if(communicationAbility == "Unsatisfactory"){
			communicationAbilityVal = 1;
		}
		
		if(communicationAbility == "Improvement"){
			communicationAbilityVal = 2;
		}
		
		if(communicationAbility == "Satisfactory"){
			communicationAbilityVal = 3;
		}
		
		if(communicationAbility == "Good"){
			communicationAbilityVal = 4;
		}
		
		if(communicationAbility == "Very good"){
			communicationAbilityVal = 5;
		}
		
		if(policiesAndGuidelines == "N/A"){
			deno--;
		}
		
		if(policiesAndGuidelines == "Unsatisfactory"){
			policiesAndGuidelinesVal = 1;
		}
		
		if(policiesAndGuidelines == "Improvement"){
			policiesAndGuidelinesVal = 2;
		}
		
		if(policiesAndGuidelines == "Satisfactory"){
			policiesAndGuidelinesVal = 3;
		}
		
		if(policiesAndGuidelines == "Good"){
			policiesAndGuidelinesVal = 4;
		}
		
		if(policiesAndGuidelines == "Very good"){
			policiesAndGuidelinesVal = 5;
		}
		
		if(cooperationUnderstanding == "N/A"){
			deno--;
		}
		
		if(cooperationUnderstanding == "Unsatisfactory"){
			cooperationUnderstandingVal = 1;
		}
		
		if(cooperationUnderstanding == "Improvement"){
			cooperationUnderstandingVal = 2;
		}
		
		if(cooperationUnderstanding == "Satisfactory"){
			cooperationUnderstandingVal = 3;
		}
		
		if(cooperationUnderstanding == "Good"){
			cooperationUnderstandingVal = 4;
		}
		
		if(cooperationUnderstanding == "Very good"){
			cooperationUnderstandingVal = 5;
		}
		
		if(responsibility == "N/A"){
			deno--;
		}
		
		if(responsibility == "Unsatisfactory"){
			responsibilityVal = 1;
		}
		
		if(responsibility == "Improvement"){
			responsibilityVal = 2;
		}
		
		if(responsibility == "Satisfactory"){
			responsibilityVal = 3;
		}
		
		if(responsibility == "Good"){
			responsibilityVal = 4;
		}
		
		if(responsibility == "Very good"){
			responsibilityVal = 5;
		}
		
		if(behaviorAndPersonality == "N/A"){
			deno--;
		}
		
		if(behaviorAndPersonality == "Unsatisfactory"){
			behaviorAndPersonalityVal = 1;
		}
		
		if(behaviorAndPersonality == "Improvement"){
			behaviorAndPersonalityVal = 2;
		}
		
		if(behaviorAndPersonality == "Satisfactory"){
			behaviorAndPersonalityVal = 3;
		}
		
		if(behaviorAndPersonality == "Good"){
			behaviorAndPersonalityVal = 4;
		}
		
		if(behaviorAndPersonality = "Very good"){
			behaviorAndPersonalityVal = 5;
		}
		
		if(initiativeAndResourcefulness == "N/A"){
			deno--;
		}
		
		if(initiativeAndResourcefulness == "Unsatisfactory"){
			initiativeAndResourcefulnessVal = 1;
		}
		
		if(initiativeAndResourcefulness == "Improvement"){
			initiativeAndResourcefulnessVal = 2;
		}
		
		if(initiativeAndResourcefulness == "Satisfactory"){
			initiativeAndResourcefulnessVal = 3;
		}
		
		if(initiativeAndResourcefulness == "Good"){
			initiativeAndResourcefulnessVal = 4;
		}
		
		if(initiativeAndResourcefulness == "Very good"){
			initiativeAndResourcefulnessVal = 5;
		}
		
		var totalResult = 0;
		totalResult = dependabilityVal + qualityVal + jobKnowledgeSkillVal + attendanceUseOfTimeVal +
			communicationAbilityVal + policiesAndGuidelinesVal + cooperationUnderstandingVal +
			responsibilityVal + behaviorAndPersonalityVal + initiativeAndResourcefulnessVal;
		var averageResult = 0.0;
		averageResult = totalResult / deno;
		//now assign these values to the respective textboxes...
		$('#txttotalresult').val(totalResult);
		$('#txtaverage').val(averageResult);
	});//end document.ready function
	
	function populateSomeFieldsOnForm(employeeId){
		var dataString = "employeeId="+employeeId;
		$.ajax({
		    url: 'populatesomefieldsonform.jsp',		
		    data: dataString,
		    type:'POST',
		    success:function(response){
		    		$('#txtfullname').val(response);			
		    },
		    error:function(error){
				alert(error);
		    }
		});
	}
</script>