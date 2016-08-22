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
                    alert("Please enter correct information.");
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
                <p>This is my first project in JAVA EE using JSP and Servlet.</p>
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

                    <div class="news_box">
                        <a href="#">focus on your skills not job if you have sufficient skill job will search you otherwise you have to search job</a>
                        <p class="post_info">Posted by <a href="#">Admin</a> on <span>April 30, 2048</span></p>
                    </div>
                </div><div class="sidebar_box_bottom"></div>

                <div class="sidebar_box">

                    <h2>AskQuestions</h2>
                
                    <div class="cleaner"></div>

                </div><div class="sidebar_box_bottom"></div>

            </div> <!-- end of sidebar -->

            <div id="templatemo_content">

                <div class="content_box">

                    <td valign="top">


                        <%
                        %>
                        
                        <table width="300" border="0" cellspacing="10" cellpadding="0" align="center">
                     <%
                            String book_id = request.getParameter("b_id");
                            int id=Integer.valueOf(book_id);
                            String book_name = request.getParameter("b_name");

                            String student_name = request.getParameter("stu_name");
                            String student_id = request.getParameter("stu_id");
                          

                            String date = request.getParameter("date");

                           
                            int status = RegisterUser111.register1(id, book_name, student_name, student_id, date);

                            if (status>0) {

                                out.print("Ordered Book Successfully.");
                                
                   %>
                  
                          
                            <%
                            } //}
                            else {
                                out.print("Sorry try later");
                                request.setAttribute("sorrynewstaff", "Sorry try later");
                            %>
                            <jsp:forward page="memberlogin.jsp.jsp"></jsp:forward> 
                            <%
                                }

    //}

                            %></table><%
                            %>


                        <%-- </table>--%>


                        <%@ page import="java.sql.*"%>
                        <%@ page import="java.io.*" %>
                        <%@ page import="javax.servlet.*"%>
                        <%@ page import="com.limon.*" %>

                        <%--</table>--%>
                        <h2>JAVA</h2>

                        <div class="section_w250 float_l">
                            <h3>Core Java</h3>            
                            
                        </div>

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