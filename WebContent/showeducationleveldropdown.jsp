<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	int rowId = Integer.parseInt(request.getParameter("newRowId"));
	String selectName = "slcteducationlevel"+rowId;
	
	List<EducationLevel> eList = EducationLevel.getAllEducationLevels();
	Iterator<EducationLevel> eItr = eList.iterator();
	
	out.print("<select name='"+selectName+"' id='"+selectName+"' style='width:100%'>");
		out.print("<option value='' selected='selected'>--Select--</option>");
		while(eItr.hasNext()){
			EducationLevel eL = eItr.next();
			%>
			<option value="<%=eL.getId() %>"><%=eL.getEducationLevel() %></option>
			<%
		}//end while loop
	out.print("</select>");
		//out.print(selectName);
%>