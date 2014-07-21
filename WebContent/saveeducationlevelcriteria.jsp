<%@page import="com.empadmin.server.classes.*"%>
<%
	int educationLevelRowVal = Integer.parseInt(request.getParameter("educationLevelRowVal"));
	long vacancyId = Long.parseLong(request.getParameter("vacancyId"));
	
	int[] educationLevel = new int[educationLevelRowVal];
	float[] point = new float[educationLevelRowVal];
	
	EducationLevelCriteriaValueList eduCriteria = null;
	
	for(int i=0;i<educationLevelRowVal;i++){
		String educationLevelStr = "slcteducationlevel"+(i+1);
		String pointStr = "txtpoint"+ (i+1);		
		 
		//now get the values
		educationLevel[i] = Integer.parseInt(request.getParameter(educationLevelStr));
		point[i] = Float.parseFloat(request.getParameter(pointStr));		
		//display for check up
		//out.print(nameOfInstitution[i]+":"+institutionFieldOfStudyId[i]+"<br/>");
		//now try to save this information to the database
		eduCriteria = new EducationLevelCriteriaValueList(vacancyId,educationLevel[i],point[i]);
		eduCriteria.addEducationLevelCriteriaValueList();
	}	
%>
<p class="msg done">Education level criteria saved successfully!</p>