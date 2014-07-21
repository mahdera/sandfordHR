<%@page import="com.empadmin.server.classes.*" %>
<%
	long empRecId = Long.parseLong(request.getParameter("empRecId"));
	String theComment = request.getParameter("theComment");
	OtherComment oCommentObj = new OtherComment(theComment,empRecId);
	oCommentObj.addOtherComment();
%>
<p class="msg done">New other comment saved successfully!</p>