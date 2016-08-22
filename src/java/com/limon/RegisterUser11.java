
package com.limon;
import java.sql.*;
public class RegisterUser11 {

public static int register1(String username,String password,String repassword,String phone,String adderess,String syd){
	
	Connection con=null;
	PreparedStatement ps=null;
        int status=0;
        boolean t=true;
	try {
                con=GetCon.getConnection();
		ps = con.prepareStatement("Insert into newstaffmember(username,password,repassword,phone,adderess,syd) values(?,?,?,?,?,?)");
	        ps.setString(1,username);
		ps.setString(2,password);
		ps.setString(3,repassword);
		ps.setString(4,phone);
		ps.setString(5,adderess);
		ps.setString(6,syd);
			
	        status=ps.executeUpdate();
                //return t;
		
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return status;
	
}
}
