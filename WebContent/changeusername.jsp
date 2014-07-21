<%@page import="com.empadmin.server.classes.*" %>

<%
	String currentUsername = request.getParameter("currentUsername");
	String newUsername = request.getParameter("newUsername");
	String password = request.getParameter("password");
	Account acct = (Account)session.getAttribute("account");	
	if(Account.isThereAnAccount(acct.getAccountId(),currentUsername,password)){
		Account.changeUsername(currentUsername,newUsername,password);
		out.print("<p class='msg done'>Username changed successfully!</p>");
	}else{
		out.print("<p class='msg error'>There is no account with the supplied username and password!</p>");
	}
%>