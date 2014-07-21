<%@page import="com.empadmin.server.classes.*"%>
<%
	long commentId = Long.parseLong(request.getParameter("commentId"));
	String theComment = request.getParameter("theComment");
	OtherComment.updateOtherComment(commentId,theComment);
%>
<p class="msg done">Other comment updated successfully!</p>