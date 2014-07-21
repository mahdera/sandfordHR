<%@page import="com.empadmin.server.classes.*"%>
<%
	long recruitmentRequestId = Long.parseLong(request.getParameter("recruitmentRequestId"));
	RecruitmentRequest.delete(recruitmentRequestId);
%>