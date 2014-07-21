<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@page import="com.empadmin.server.classes.*"%>
<%
	int langId = Integer.parseInt(request.getParameter("langId"));
	int labelId = Integer.parseInt(request.getParameter("labelId"));
	String value = Translation.getLabelCaptionInTheSelectedLanguage(langId,labelId);
	if(value.equals(null)){		
		out.print("Not yet translated");
	}else{		
		out.print(value);
	}
%>