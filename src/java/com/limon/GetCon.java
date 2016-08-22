package com.limon;

import java.sql.*;

public class GetCon {

   public static Connection getConnection()//connection with database using singleton design pattern.
    {
        try{
          Class.forName("com.mysql.jdbc.Driver");//mysql
          
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_library","root","12345");
            return con;
            
        }
        catch(Exception e)
        {
            System.out.println("Connection Error.");
            return null;
            
        }
    }

}
