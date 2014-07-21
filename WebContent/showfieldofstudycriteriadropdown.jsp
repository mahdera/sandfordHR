<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	int rowId = Integer.parseInt(request.getParameter("newRowId"));
	String selectName = "slctfieldofstudy"+rowId;
	
	List<FieldOfStudy> fieldList = FieldOfStudy.getAllFieldOfStudies();
	Iterator<FieldOfStudy> fieldItr = fieldList.iterator();
	
	out.print("<select name='"+selectName+"' id='"+selectName+"' style='width:100%'>");
		out.print("<option value='' selected='selected'>--Select--</option>");
		while(fieldItr.hasNext()){
			FieldOfStudy fStudy = fieldItr.next();
			%>
			<option value="<%=fStudy.getId() %>"><%=fStudy.getFieldOfStudy() %></option>
			<%
		}//end while loop
	out.print("</select>");
		//out.print(selectName);
%>