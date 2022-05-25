<%-- 
    Document   : login
    Created on : 28 Apr 2022, 08:24:51
    Author     : manzilshakya
--%>

<%@page import="java.sql.SQLException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.io.*,java.util.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "project";
    String userid = "root";
    String password = "";
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    String forgetpass = request.getParameter("forgetpwd");
    boolean showlogin = true;
    if (forgetpass != null) {
        if (forgetpass.equals("true")) {
            showlogin = false;
        }
    }
%>


<!DOCTYPE html>
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
        <link rel="stylesheet" type="text/css" href="findex.css">
    </head>
    <body>

        <div>

            <form class="modal-content animate" method="post">

                <div class="imgcontainer">

                    <img src="Project/card.png" alt="Logo" class="avatar">
                </div><!---------------logo pic----------->

                <style>
                    .submit
                    {
                        color: black;
                        border: 2px solid black;
                    }
                    .submit:hover
                    {
                        background-color: #4087d8;
                        color: white;
                    }
                    .cancelbtn{
                        background-color: white;
                        border: 2px solid black;
                    }
                    .cancelbtn a
                    {
                        color: red;

                    }
                    .cancelbtn a:hover
                    {
                        color: white;
                        //background-color: #4087d8;
                    }
                    .cancelbtn:hover
                    {
                        color: white;
                        background-color: red;
                    }
                </style>
                <!------------------------------ comment--------------------------->
                <div class="container">
                    <label for="eml"><b>Email</b></label>
                    <input type="text" placeholder="Enter Email" name="Eml" required>

                    <label for="psw"><b>Password</b></label>
                    <input type="password" placeholder="Enter Password" name="Pwd" required>

                    <label for="psw"><b>New Password</b></label>
                    <input type="password" placeholder="Enter Password" name="Pwd" required>

                    <!--<input class="submit" type="submit" value="Submit"/>-->
                    <label>
                        <input type="checkbox" checked="checked" name="remember"> Remember me
                    </label><br>

                    <!--<input class="submit" type="submit" value="register"/>-->
                    <button class="submit" type="submit" name="rbtn" class="registerbtn">Submit</button>
                    <%
                        String Name = request.getParameter("name");
                        String Password = request.getParameter("Pwd");
                        String Email = request.getParameter("Eml");
                        //int state;

                        String rbtn = request.getParameter("rbtn");
                        try {

                            Class.forName("com.mysql.cj.jdbc.Driver");
                            connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                            //Connection con = DriverManager.getConnection(
                            //      "jdbc:mysql://localhost:3306/project", "root", "");
                            statement = connection.createStatement();
                            //Statement stmt = con.createStatement();
                            //ResultSet rs = stmt.executeQuery("select * from user where Email='"+Email+"'");
                            //String rs="select * from user where Email='"+Email+"'";
                            //while(rs.equals("true"))
                            //while(rs.equals(true)){
                            //out.println(rs.getString(3));

                            if (rbtn != null) {
                                //Statement stmt = con.createStatement();
                                ResultSet rs = statement.executeQuery("select * from user where  Email='" + Email + "'");
                                if (rs.next()) {
                                    String sql = "UPDATE user SET Password='" + Password + "' where Email='" + Email + "';";
                                    //String sql ="UPDATE user SET (Name,Password)values('"+Name+"','"+Password+"') WHERE Email='"+Email+"');";
                                    statement.execute(sql);

                                    out.print("<script>alert('update sucessfully');</script>");

                                    //response.sendRedirect("http://www.google.com"); 
                                    //HttpSession session = request.getSession(false);
                                    //String myName = (String) session.getAttribute("name");
                                    //String sessemail = String.valueOf(session.getAttribute("name"));
                                    //print("name: "+myName);
                                    //System.out.println("name: " + myName);
                                    //session.setAttribute("name", name);
                                    //out.println("<h1>Servlet NewServlet at " + request.getContextPath() + "</h1>");
                                } else {
                                    out.print("<script>alert('update Failed');</script>");

                                }

                                out.println("</body>");
                                out.println("</html>");
                                //con.close();
//                                response.sendRedirect("1.jsp");

//                                String check = "SELECT * FROM user where Email='" + Email + "';";
                                //String state = statement.execute(sql); 
                                //}
                            }
                            connection.close();
                        } catch (Exception ex) {
                            //System.out.println(ex.toString());
                            out.print("hi " + ex.toString());
                        }


                        /*    String Name = request.getParameter("name");
                        String Password = request.getParameter("Pwd");
                        String Email = request.getParameter("Eml");
                        String inpnewemail = request.getParameter("newemail");
                        String inpnewpassword = request.getParameter("newpassword");
                        String inppwreset = request.getParameter("pwreset");
                        String tblnewemail="",sql1;
                            
                        boolean resetpw=false,clickresetbtn=false,newinputnull=true;
                            
                        if(inppwreset!=null){
                          if(inppwreset.equals("Submit")){
                            clickresetbtn=true;
                          }
                        }
                        if(inppwreset!=null&&inpnewpassword!=null){
                          if(!inppwreset.equals("")&&!inpnewpassword.equals("")){
                            newinputnull=false;
                          }
                        }
                        try{
                          Class.forName("com.mysql.jdbc.Driver");  
                          connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                          statement=connection.createStatement();
                          String sql ="select * from userinfo";
                          resultSet = statement.executeQuery(sql);
                          while(resultSet.next() && resetpw==false){
                              tblnewemail = resultSet.getString("email");
                              if(tblnewemail.equals(inpnewemail)){
                                  resetpw=true;
                              }
                          }
                          if(resetpw==true&&clickresetbtn==true&&newinputnull==false){
                            sql1="update userinfo set password='"+inpnewpassword+"' where email='"+inpnewemail+"';";
                            statement.executeUpdate(sql1);
                            out.print("<script>alert('Password reset sucessfull.');</script>");
                          }
                          else if(clickresetbtn==true&&newinputnull==true){
                            out.print("Please fill all the boxes");
                          }
                          else if(resetpw==false&&clickresetbtn==true&&newinputnull==false){
                            out.print("Your email is invalid");
                          }
                          connection.close();
                          }catch(Exception ex) {
                          System.out.println(ex.toString());
                          }*/
                    %>


                </div>                                                

                <div class="container" style="background-color:#f1f1f1">
                    <button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn"><a href="index.jsp">Cancel</a></button>

                </div>
            </form>
        </div>

    </body>
</html>
