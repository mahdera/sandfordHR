<%@page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@page import="com.empadmin.server.classes.*"%>
<%	
	request.setCharacterEncoding("UTF-8");
	int langId = Integer.parseInt(request.getParameter("langId"));
	int labelId = Integer.parseInt(request.getParameter("labelId"));	
	String labelValue = new String(request.getParameter("labelValue").getBytes("ISO-8859-1"), "UTF-8");
	Translation translation = new Translation(langId,labelId,labelValue);
	translation.addLanguageSetting();
%>
<p class="msg done">Translation saved successfully!</p>