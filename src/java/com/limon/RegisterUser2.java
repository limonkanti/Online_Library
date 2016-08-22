package com.limon;

import java.sql.*;

public class RegisterUser2 {

    public static int register1(int b_id, String book_name, String author, String publisher, int quantity) {

        Connection con = null;
        PreparedStatement ps = null;
        int status = 0;
        boolean t = true;
        try {
            con = GetCon.getConnection();
            ps = con.prepareStatement("insert into library_books(book_id,book_name,author,publisher,quantity) values(?,?,?,?,?)");
            ps.setInt(1, b_id);
            ps.setString(2, book_name);
            ps.setString(3, author);
            ps.setString(4, publisher);
            ps.setInt(5, quantity);
            status = ps.executeUpdate();

            status = ps.executeUpdate();
                //return t;

        } catch (SQLException e) {

            e.printStackTrace();
        }
        return status;

    }
}
