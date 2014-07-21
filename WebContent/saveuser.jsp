<%@page import="com.empadmin.server.classes.*" %>
<%
	String fullName = request.getParameter("fullName");
	String userType = request.getParameter("userType");
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	User user = new User(fullName,userType);
	user.addUser();
	User fetchUser = User.getUserWith(fullName,userType);
	int userId = fetchUser.getId();
	Account acct = new Account(userId,username,password,userType);
	acct.addAccount();	
	int getMaxRecentAccount = Account.getMaxAccountIdValue();
	Role.createBlankRoleUponUserCreation(getMaxRecentAccount);
%>
<p class="msg done">User saved successfully!</p>
