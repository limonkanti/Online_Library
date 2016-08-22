

package com.limon;

import java.sql.*;
public class RegisterUser3 {

public static int issue_book(String username,String id,String session,String bookid){
	
	Connection con=null;
	PreparedStatement ps=null;
        int status=0;
        boolean t=true;
	try {
                con=GetCon.getConnection();
		ps = con.prepareStatement("Insert into issuebook(username,id,session,bookid) values(?,?,?,?)");
	        ps.setString(1,username);
		ps.setString(2,id);
		ps.setString(3,session);
		ps.setString(4,bookid);
		
			
	        status=ps.executeUpdate();
                //return t;
		
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return status;
	
}
}
