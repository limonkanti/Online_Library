<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Education</title>
        
        <link href="templatemo_style.css" rel="stylesheet" type="text/css" />

        <script type="text/javascript">
            function ctck()
            {
                var sds = document.getElementById("dum");
                if (sds == null) {
                    alert("Please enter correct information");
                }
            }
        </script>

        <SCRIPT LANGUAGE="JavaScript">
            function dil(form)
            {
                for (var i = 0; i < form.elements.length; i++)
                {
                    if (form.elements[i].value == "")
                    {
                        alert("Fill out all Fields")
                        document.F1.accountno.focus()
                        return false
                    }
                }

                if (isNaN(document.F1.accountno.value))
                {
                    alert("Accountno must  be  number & can't be null")
                    document.F1.accountno.value = ""
                    document.F1.accountno.focus()
                    return false
                }
                if (!isNaN(document.F1.username.value))
                {
                    alert("User Name  must  be  char's & can't be null")
                    document.F1.username.value = ""
                    document.F1.username.focus()
                    return false
                }

                if (!isNaN(document.F1.password.value))
                {
                    alert("Password  must  be  char's & can't be null")
                    document.F1.password.value = ""
                    document.F1.password.focus()
                    return false
                }

                return true
            }
        </SCRIPT>

    </head>
    <body>
        <div id="templatemo_header_wrapper">
            <div id="templatemo_header">
                <div id="site_title">
                    <h1>
                            <img src="images/templatemo_logo.png" alt="Site Title" />
                           
                       </h1>
                </div>
                <p>Online Library Controlling system is made by me. This is my first project in Java EE(Servlet,JSP).</p>
            </div> <!-- end of templatemo_header -->

        </div> <!-- end of templatemo_menu_wrapper -->

        <div id="templatemo_menu_wrapper">
            <div id="templatemo_menu">

                <ul>
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="admin.jsp">Adminstrator</a></li>
                    <li><a href="member.jsp">Library Member</a></li>
                    <li><a href="bookdetailsforbookdetails.jsp">Book Details</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
                </ul>    	

            </div> <!-- end of templatemo_menu -->
        </div>

        <div id="templatemo_content_wrapper">

            <div id="templatemo_sidebar">

             <div class="sidebar_box">

                    <h2>Announcements</h2>

                    <a href="#">By using this project an educational institution or department can control library easily.</a>

                </div><div class="sidebar_box_bottom"></div>

                <div class="sidebar_box">
                      <h2>JAVA</h2>

                    <div class="section_w250 float_l">
                        <h3>Core Java</h3>            
                         <p>oops is a concept of core java so.if you want to learn java ee at first you must know Core java.</p>
                    </div>
                    <div class="cleaner"></div>

                </div><div class="sidebar_box_bottom"></div>

            </div> <!-- end of sidebar -->

            <div id="templatemo_content">

                <div class="content_box">

                    <td valign="top">

                        <%
                        %>
                        <table><%
                            if (request.getAttribute("newbook") != null) {
                                out.print("<div>");
                                out.print("<font color='blue'><font size='4'>" + request.getAttribute("newbook") + "");

                                out.print("</div>");
                            }


                            %></table><%
                            %>

                        <%
                        %>
                        <table><%    if (request.getAttribute("deleted") != null) {
                                out.print("<div>");
                                out.print("<font color='blue'><font size='4'>" + request.getAttribute("deleted") + "");

                                out.print("</div>");
                            }


                            %></table><%
                            %>
                        <table height="380"><%    try {
                                Connection con = GetCon.getConnection();
                           
     PreparedStatement ps= con.prepareStatement("select library_books.book_name,library_books.author,library_books.publisher,library_books.quantity,count(issue_books.book_id) as issued,library_books.quantity-count(issue_books.book_id) as store   from library_books,issue_books  where library_books.book_id= issue_books.book_id group by(issue_books.book_id)");
                                ResultSet rs = ps.executeQuery();
                                out.print("<font color='blue'>Details of Books</font>");

                               

                                out.print("<tr><th>BOOK_NAME</th><th>AUTHOR</th><th>PUBLISHER</th><th>QUANTITY</th><th>ISSUED_BOOKS</th><th>STORE_BOOKS</th></tr>");
                                while (rs.next()) {
                                                        //int id=rs.getInt(1);
                                    //session.setAttribute("id",id);			
                                    out.print("<tr>");

                                    out.print("<td>" + rs.getString(1) + "</td>");
                                    out.print("<td>" + rs.getString(2) + "</td>");
                                    out.print("<td>" + rs.getString(3) + "</td>");
                                    out.print("<td>" + rs.getInt(4) + "</td>");
                                     out.print("<td>" + rs.getInt(5) + "</td>");
                                      out.print("<td>" + rs.getInt(6) + "</td>");
                                    out.print("</tr>");

                              
                            %>			
                          
                            <% 
				
                                        
                                    }

                                } catch (SQLException e) {
                                    e.printStackTrace();
                                }

                            %></table><%
                            %>


                        <%@ page import="java.sql.*"%>
                        <%@ page import="java.io.*" %>
                        <%@ page import="javax.servlet.*"%>
                        <%@ page import="com.limon.*" %>





                        <%--</table>--%>

                        </form>

                    </td>


                    <div class="cleaner"></div>
                </div><div class="content_box_bottom"></div>

            <div class="content_box_bottom"></div>

            </div> <!-- end of content -->

            <div class="cleaner"></div>

        </div>

        <div id="templatemo_footer_wrapper">

            <div id="templatemo_footer">

                <ul class="footer_menu">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="admin.jsp">Adminstrator</a></li>
                    <li><a href="member.jsp">Library Member</a></li>
                    <li><a href="bookdetailsforbookdetails.jsp">Book Details</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
                </ul>

                Copyright © 2048 <a href="#">Limon Kanti Dey</a> | 
              

        </div>
        </div>
    </body>
</html>