
package com.limon;

import java.sql.*;
public class RegisterUser {

public static int register(String username,String password,String repassword,String phone,String address,String syd){
	
	Connection con=null;
	PreparedStatement ps=null;
        int status=0;
        boolean t=true;
	try {
                con=GetCon.getConnection();
		ps = con.prepareStatement("Insert into NEWMEMBER(username,password,repassword,phone,address,syd) values(?,?,?,?,?,?)");
	        ps.setString(1,username);
		ps.setString(2,password);
		ps.setString(3,repassword);
		ps.setString(4,phone);
		ps.setString(5,address);
		ps.setString(6,syd);
			
	        status=ps.executeUpdate();
                //return t;
		
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return status;
	
}
}
