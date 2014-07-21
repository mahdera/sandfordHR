<%@page import="com.empadmin.server.classes.*" %>

<%
	String currentUsername = request.getParameter("currentUsername");
	String currentPassword = request.getParameter("currentPassword");
	String newPassword = request.getParameter("newPassword");
	
	Account acct = (Account)session.getAttribute("account");	
	if(Account.isThereAnAccount(acct.getAccountId(),currentUsername,currentPassword)){
		Account.changePassword(currentUsername,currentPassword,newPassword);		
		out.print("<p class='msg done'>Password changed successfully!</p>");
	}else{
		out.print("<p class='msg error'>There is no account with the supplied username and password!</p>");
	}
%>