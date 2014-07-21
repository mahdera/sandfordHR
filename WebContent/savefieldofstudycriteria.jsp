<%@page import="com.empadmin.server.classes.*"%>
<%
	int fieldOfStudyRowVal = Integer.parseInt(request.getParameter("fieldOfStudyRowVal"));
	long vacancyId = Long.parseLong(request.getParameter("vacancyId"));
	
	int[] fieldOfStudy = new int[fieldOfStudyRowVal];
	float[] point = new float[fieldOfStudyRowVal];
	
	FieldOfStudyCriteriaValueList fCriteria = null;
	
	
	for(int i=0;i<fieldOfStudyRowVal;i++){
		String fieldOfStudyStr = "slctfieldofstudy"+(i+1);
		String pointStr = "txtpoint"+ (i+1);		
		 
		//now get the values
		fieldOfStudy[i] = Integer.parseInt(request.getParameter(fieldOfStudyStr));
		point[i] = Float.parseFloat(request.getParameter(pointStr));		
		
		fCriteria = new FieldOfStudyCriteriaValueList(vacancyId,fieldOfStudy[i],point[i]);
		fCriteria.addFieldOfStudyCriteriaValueList();
	}	
%>
<p class="msg done">Field of study criteria saved successfully!</p>