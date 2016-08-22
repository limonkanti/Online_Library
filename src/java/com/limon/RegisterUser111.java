
package com.limon;


import java.sql.*;

public class RegisterUser111 {

    public static int register1(int id, String book_name, String student_name, String student_id, String date) {

        Connection con = null;
        PreparedStatement ps = null;
        int status = 0;
        boolean t = true;
        try {
            con = GetCon.getConnection();
            ps = con.prepareStatement("insert into order_book(book_id,book_name,student_name,student_id,issue_date) values(?,?,?,?,?)");
            ps.setInt(1, id);
            ps.setString(2, book_name);
            ps.setString(3, student_name);
            ps.setString(4, student_id);
            ps.setString(5, date);

            status = ps.executeUpdate();
                //return t;

        } catch (SQLException e) {

            e.printStackTrace();
        }
        return status;

    }
}
