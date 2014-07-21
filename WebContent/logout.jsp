<%
            session.setAttribute("account", null);
            //session.setAttribute("memberType", null);
            //session.setAttribute("physicianAssignedPatient",null);
%>
<jsp:forward page="index.jsp">
    <jsp:param name="mahder" value="mahder"/>
</jsp:forward>
