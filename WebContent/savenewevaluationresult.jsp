<%@page import="com.empadmin.server.classes.*" %>
<%
	long empRecId = Long.parseLong(request.getParameter("empRecId"));
	float result = Float.parseFloat(request.getParameter("result"));
	EvaluationResult evalResult = new EvaluationResult(result,empRecId);
	evalResult.addEvaluationResult();
%>
<p class="msg done">New evaluation result saved successfully!</p>
