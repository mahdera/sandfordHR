<%@page import="com.empadmin.server.classes.*" %>
<%
	long evalId = Long.parseLong(request.getParameter("evalId"));
	float result = Float.parseFloat(request.getParameter("result"));
	EvaluationResult.updateEvaluationResult(evalId,result);
%>
<p class="msg done">Evaluation result updated successfully!</p>