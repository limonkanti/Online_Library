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
                    alert("Please enter correct information.\n");
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
                        document.F1.username.focus()
                        return false
                    }
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
                <p>Online Library Controlling system is made by me. This is my first project in Java EE(Servlet,JSP).</p>nte.</p>

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


                        <%  out.print("<font color=blue>WELCOME TO MEMBER LOGIN");
                        %>

                        <form name=F1 onSubmit="return dil(this)" action="memberlogin.jsp" >
                            <table cellspacing="10" cellpadding="8">	
                                <%if (request.getAttribute("check") != null) {
                                        out.print("<div>");
                                        out.print("<font color='blue'><font size='4'>" + request.getAttribute("check") + "");

                                        out.print("</div>");
                                    }

                                %>

                                <tr><td>LOGIN NAME:</td><td> <input type="text" name="username"/></td></tr>

                                <tr><td>PASSWORD:</td><td> <input type="password" name="password"/></td></tr>

                                <tr><td></td><td><input type="submit" value="Submit"/>


                                        <INPUT TYPE=RESET VALUE="CLEAR"></td></tr>


                                <tr><td><a href="Register.jsp">New User</a></td></tr>

                            </table>
                            

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
                    <li><a href="bookdetailsformember.jsp">Book Details</a></li>
                    <li><a href="aboutus.jsp">About Us</a></li>
                    <li><a href="contactus.jsp">Contact Us</a></li>
                </ul>

                Copyright © 2048 <a href="#">Limon Kanti Dey</a> 
                

        </div>
        </div>
    </body>
</html>