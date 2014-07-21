<%@page import="com.empadmin.server.classes.*" %>
<%@page import="java.util.*" %>
<%
	int rowId = Integer.parseInt(request.getParameter("newRowId"));
	String selectName = "slctfieldofstudy"+rowId;
	
	List<FieldOfStudy> fList = FieldOfStudy.getAllFieldOfStudies();
	Iterator<FieldOfStudy> fItr = fList.iterator();
	
	out.print("<select name='"+selectName+"' id='"+selectName+"' style='width:100%'>");
		out.print("<option value='' selected='selected'>--Select--</option>");
		while(fItr.hasNext()){
			FieldOfStudy f = fItr.next();
			%>
			<option value="<%=f.getId() %>"><%=f.getFieldOfStudy() %></option>
			<%
		}//end while loop
	out.print("</select>");
		//out.print(selectName);
%>