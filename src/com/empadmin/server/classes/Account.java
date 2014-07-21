/**
 * 
 */
package com.empadmin.server.classes;

import java.sql.Date;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;



/**
 * @author mahder
 *
 */
public class Account {
	private int accountId;
    private int userId;
    private String username;
    private String password;
    private Date accountCreationDate;
    private String memberType;
    

    public Account() {
    }

    public Account(int userId,String username, String password,String memberType) {        
        this.username = username;
        this.password = password;
        this.memberType = memberType;        
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        Calendar cal = Calendar.getInstance();
        String currentDate = dateFormat.format(cal.getTime());        
        accountCreationDate = Date.valueOf(currentDate);  
        this.userId = userId;
    }

    public Account(int accountId,int userId, String username, String password, Date accountCreationDate, String memberType) {
        this.accountId = accountId;        
        this.username = username;
        this.password = password;
        this.accountCreationDate = accountCreationDate;
        this.memberType = memberType;
        this.userId = userId;
    }
    
    

    /**
	 * @return the userId
	 */
	public int getUserId() {
		return userId;
	}

	/**
	 * @param userId the userId to set
	 */
	public void setUserId(int userId) {
		this.userId = userId;
	}

	public int getAccountId() {
        return accountId;
    }

    public void setAccountId(int accountId) {
        this.accountId = accountId;
    }

    
    public Date getAccountCreationDate() {
        return accountCreationDate;
    }

    public void setAccountCreationDate(Date accountCreationDate) {
        this.accountCreationDate = accountCreationDate;
    }

    
    public String getMemberType() {
        return memberType;
    }

    public void setMemberType(String memberType) {
        this.memberType = memberType;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void addAccount()
    {
        try{
            String query = "INSERT INTO tbl_account VALUES(0,"+this.getUserId()+",'"+this.getUsername()+"',MD5('"+
                    this.getPassword()+"'),'"+this.getAccountCreationDate()+"','"+this.getMemberType()+"')";
            System.out.println(query);
            DBConnection.writeToDatabase(query);
            DBConnection.disconnectDatabase();
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public static void deleteAccount(int id)
    {
        try{
            String query = "DELETE FROM tbl_account WHERE id = "+id;
            DBConnection.writeToDatabase(query);
            DBConnection.disconnectDatabase();
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    
    public static void updateAccount(int id,int userId,String username,String password,Date acctCreationDate,String memberType)
    {
    	try{
    		String command = "UPDATE tbl_account SET user_id = "+userId+", username = '"+username+"', password = MD5('"+password+"'), account_creation_date = '"+acctCreationDate+"', member_type = '"+memberType+"' WHERE id = "+id;
    		DBConnection.writeToDatabase(command);
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		DBConnection.disconnectDatabase();
    	}
    }

    public static List<Account> getAllAccounts()
    {
        List<Account> list = new ArrayList<Account>();
        Account account = null;
        try{
            String query = "SELECT * FROM tbl_account";
            System.out.println("get accounts(): "+query);
            ResultSet rSet = DBConnection.readFromDatabase(query);
            while(rSet.next())
            {
                account = new Account(rSet.getInt("id"), rSet.getInt("user_id"), rSet.getString("username"), rSet.getString("password"), rSet.getDate("account_creation_date"), rSet.getString("member_type"));
                list.add(account);
            }
            DBConnection.disconnectDatabase();
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }

    public static List<Account> getAccountsForApproval()
    {
        List<Account> list = new ArrayList<Account>();
        Account account = null;
        try{
            String query = "SELECT * FROM tbl_account WHERE status = 'Not Approved'";
            ResultSet rSet = DBConnection.readFromDatabase(query);
            while(rSet.next())
            {
            	account = new Account(rSet.getInt("id"), rSet.getInt("user_id"), rSet.getString("username"), rSet.getString("password"), rSet.getDate("account_creation_date"), rSet.getString("member_type"));
                list.add(account);
            }
            DBConnection.disconnectDatabase();
        }catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }

    public static Account getApprovedAccount(int id)
    {
        Account account = null;
        try{
            String query = "SELECT * FROM tbl_account WHERE id = "+id+" AND status = 'Approved'";
            ResultSet rSet = DBConnection.readFromDatabase(query);
            while(rSet.next())
            {
            	account = new Account(rSet.getInt("id"), rSet.getInt("user_id"), rSet.getString("username"), rSet.getString("password"), rSet.getDate("account_creation_date"), rSet.getString("member_type"));
            }
            DBConnection.disconnectDatabase();
        }catch(Exception e){
            e.printStackTrace();
        }
        return account;
    }

    public static Account getAccount(String username,String password, String memberType)
    {
        Account account = null;
        try{
            String query = "SELECT * FROM tbl_account WHERE username = '"+username+"' AND password = MD5('"+password+"') AND member_type = '"+memberType+"' AND status = 'Approved'";
            System.out.println("inside get acct mahder : "+query);
            ResultSet rSet = DBConnection.readFromDatabase(query);
            while(rSet.next())
            {
            	account = new Account(rSet.getInt("id"), rSet.getInt("user_id"), rSet.getString("username"), rSet.getString("password"), rSet.getDate("account_creation_date"), rSet.getString("member_type"));
            }
            DBConnection.disconnectDatabase();
        }catch(Exception e){
            e.printStackTrace();
        }
        return account;
    }
    
    public static Account getAccountForUser(int userId)
    {
        Account account = null;
        try{
            String query = "SELECT * FROM tbl_account WHERE user_id = "+userId;
            System.out.println("inside get acct mahder : "+query);
            ResultSet rSet = DBConnection.readFromDatabase(query);
            while(rSet.next())
            {
            	account = new Account(rSet.getInt("id"), rSet.getInt("user_id"), rSet.getString("username"), rSet.getString("password"), rSet.getDate("account_creation_date"), rSet.getString("member_type"));
            }
            DBConnection.disconnectDatabase();
        }catch(Exception e){
            e.printStackTrace();
        }
        return account;
    }
    
    public static Account getAccount(String username,String password)
    {
    	Account account = null;
        try{
            String query = "SELECT * FROM tbl_account WHERE username = '"+username+"' AND password = MD5('"+password+"')";
            System.out.println("inside get acct mahder : "+query);
            ResultSet rSet = DBConnection.readFromDatabase(query);
            while(rSet.next())
            {
            	account = new Account(rSet.getInt("id"), rSet.getInt("user_id"), rSet.getString("username"), rSet.getString("password"), rSet.getDate("account_creation_date"), rSet.getString("member_type"));
            }
            DBConnection.disconnectDatabase();
        }catch(Exception e){
            e.printStackTrace();
        }
        return account;
    }

    public static boolean isThereAnAccount(int accountId,String username,String password)
    {
        boolean isThereAcct = false;
        try{
            String query = "SELECT COUNT(*) AS num FROM tbl_account WHERE username = '"+username+"' AND password = MD5('"+password+"') AND id = "+accountId;
            //System.out.println("inside get acct mahder : "+query);
            ResultSet rSet = DBConnection.readFromDatabase(query);
            int num = 0;
            while(rSet.next())
            {
                num = rSet.getInt("num");
                if(num != 0)
                    isThereAcct = true;
            }
            DBConnection.disconnectDatabase();
        }catch(Exception e){
            e.printStackTrace();
        }
        return isThereAcct;
    }

 

    public static void updateUsername(int accountId,String currentUsername,String newUsername,String currentPassword)
    {
        try{
            String query = "UPDATE tbl_account SET username = '"+newUsername+"' WHERE id = "+accountId+" AND"+
                    " username = '"+currentUsername+"' AND password = MD5('"+currentPassword+"')";
            DBConnection.writeToDatabase(query);
            DBConnection.disconnectDatabase();
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public static void updatePassword(int accountId,String currentUsername,String currentPassword,String newPassword,
            String confirmPassword)
    {
        if(newPassword.equals(confirmPassword))
        {
            try{
                String query = "UPDATE tbl_account SET password = MD5('"+newPassword+"') WHERE id = "+accountId+
                        " AND username = '"+currentUsername+"' AND password = MD5('"+currentPassword+"')";
                DBConnection.writeToDatabase(query);
                DBConnection.disconnectDatabase();
            }catch(Exception e){
                e.printStackTrace();
            }
        }
    }

    @Override
    public String toString() {
        return "Account{" + "accountId=" + accountId + "\nuserId=" + userId + "\nusername=" + username + "\npassword=" + password + "\naccountCreationDate=" + accountCreationDate + "\nmemberType=" + memberType + '}';
    }

    
    
    public static int getMaxAccountIdValue(){
    	int maxId = 0;
    	try{
    		String query = "SELECT MAX(id) AS m FROM tbl_account";
    		ResultSet rSet = DBConnection.readFromDatabase(query);
    		while(rSet.next()){
    			maxId = rSet.getInt("m");
    		}
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		DBConnection.disconnectDatabase();
    	}
    	return maxId;
    }
    
    public static Account getAccount(int accountId){
    	Account account = null;
    	try{
    		String query = "SELECT * FROM tbl_account WHERE id = "+accountId;
    		ResultSet rSet = DBConnection.readFromDatabase(query);
    		while(rSet.next()){
    			account = new Account(rSet.getInt("id"), rSet.getInt("user_id"), rSet.getString("username"), rSet.getString("password"), rSet.getDate("account_creation_date"), rSet.getString("member_type"));
    		}
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		DBConnection.disconnectDatabase();
    	}
    	return account;
    }
    
        
    public static void changeUsername(String currentUsername,String newUsername,String password){
    	try{
    		String command = "UPDATE tbl_account SET username = '"+newUsername+"' WHERE username = '"+currentUsername+"' AND password = MD5('"+password+"')";
    		DBConnection.writeToDatabase(command);
    		System.out.println(command);
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		DBConnection.disconnectDatabase();
    	}
    }
    
    public static void changePassword(String currentUsername,String currentPassword,String newPassword){
    	try{
    		String command = "UPDATE tbl_account SET password = MD5('"+newPassword+"') WHERE username = '"+currentUsername+"' AND password = MD5('"+currentPassword+"')";
    		DBConnection.writeToDatabase(command);
    		System.out.println(command);
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		DBConnection.disconnectDatabase();
    	}
    }
    
    public static void resetThisAccount(int accountId,String username,String password){
    	try{
    		String command = "UPDATE tbl_account SET username = '"+username+"', password = MD5('"+password+"') WHERE id = "+accountId;
    		DBConnection.writeToDatabase(command);
    		System.out.println(command);
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		DBConnection.disconnectDatabase();
    	}
    }
}//end class
