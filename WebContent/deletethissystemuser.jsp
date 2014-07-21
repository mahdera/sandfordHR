<%@page import="com.empadmin.server.classes.*" %>
<%
	int userId = Integer.parseInt(request.getParameter("userId"));
	User.deleteUser(userId);
	Account acctToBeDeleted = Account.getAccountForUser(userId);
	Role.deleteRoleWithAccountId(acctToBeDeleted.getAccountId());
	Account.deleteAccount(acctToBeDeleted.getAccountId());	
%>
<%@include file="showlistofusersfordelete.jsp" %>
<p class="msg done">User deleted successfully!</p>