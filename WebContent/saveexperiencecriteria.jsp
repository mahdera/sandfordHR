<%@page import="com.empadmin.server.classes.*"%>
<%
	int experienceRowVal = Integer.parseInt(request.getParameter("experienceRowVal"));
	long vacancyId = Long.parseLong(request.getParameter("vacancyId"));
	
	int[] expYear = new int[experienceRowVal];
	float[] point = new float[experienceRowVal];
	
	ExperienceCriteriaValueList expCriteria = null;
	
	for(int i=0;i<experienceRowVal;i++){
		String experienceYearStr = "txtminimumnumberofyear"+(i+1);
		String pointStr = "txtpoint"+ (i+1);		
		 
		//now get the values
		expYear[i] = Integer.parseInt(request.getParameter(experienceYearStr));
		point[i] = Float.parseFloat(request.getParameter(pointStr));		
		//display for check up
		//out.print(nameOfInstitution[i]+":"+institutionFieldOfStudyId[i]+"<br/>");
		//now try to save this information to the database
		expCriteria = new ExperienceCriteriaValueList(vacancyId,expYear[i],point[i]);
		expCriteria.addExperienceCriteriaValueList();
	}	
%>
<p class="msg done">Experience criteria saved successfully!</p>