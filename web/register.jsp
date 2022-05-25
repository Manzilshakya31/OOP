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
String btn = request.getParameter("button");
%>
<!DOCTYPE html>
<html>
  <head>
    <title>Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="findex.css">
    <style>
    
    </style>
  </head>
  <body>
      <style>
            .submit
            {
                border: 2px solid black;
                padding: 5px;
                color: black;
                margin-top: 1%;
            }
            .submit:hover
            {
                background-color: #4087d8;
                color: white;
                border: 2px solid white;
            }
            .containersignin
            {
                padding-left: 5%;
            }
            .containersignin p a
            {
                color: black;
            }
            .containersignin p a:hover
            {
                color: #4087d8;
                //color: white;
                //border: 2px solid white;
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
    <div class="mainbody flex fdc">
     
        
        <!--<form class="modal-content animate" action="/Finalp/NServlet" method="post">-->
        <form class="modal-content animate">
            <div>
                <div class="imgcontainer">

                    <img src="Project/card.png" alt="Logo" class="avatar">
                </div><!---------------logo pic----------->


                    <div class="container">
                        <label for="Name"><b>Name</b></label>
                            <input type="text" placeholder="Enter Username" name="name" required>                                   
                       
                        <label for="email"><b>Email</b></label>
                                    
                            <input type="text" placeholder="Enter Email" name="email" id="email" required>

                        <label for="password"><b>Password</b></label>
                            <input type="password" placeholder="Enter Password" name="password" id="psw" required>

                        <label for="psw-repeat"><b>Repeat Password</b></label>
                            <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>
                                <hr>
                                <p>By creating an account you agree to our Terms & Privacy</p>
                                    
                                    <%
                                    String Name = request.getParameter("name");
                                    String Email = request.getParameter("email");
                                    String Password = request.getParameter("password");
                                    try{
                                    Class.forName("com.mysql.jdbc.Driver");  
                                    connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                                    statement=connection.createStatement();
                                    if(Email!=null){
                                      String sql ="insert into user(Name,Password,Email)values('"+Name+"','"+Password+"','"+Email+"');";
                                      statement.executeUpdate(sql);
                                      out.print("<script>alert('New contact added sucessfully');</script>");
                                    }
                                    connection.close();
                                    }
                                    catch(Exception ex) {
                                      //System.out.println(ex.toString());
                                      out.print("hi "+ex.toString());
                                    }
                                    
                                  %>

                        <!--<input class="submit" type="submit" value="register"/>-->
                        <button class="submit" type="submit" name="rbtn" class="registerbtn">Register</button>
                        <%
                                    String rbtn = request.getParameter("btn");
                                    try{
                                    Class.forName("com.mysql.jdbc.Driver");  
                                    connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                                    statement=connection.createStatement();
                                    if(rbtn!=null){
                                      String sql ="insert into user(Name,Password,Email)values('"+Name+"','"+Password+"','"+Email+"');";
                                      statement.executeUpdate(sql);
                                      out.print("<script>alert('New contact added sucessfully');</script>");
                                    }
                                    connection.close();
                                    }
                                    catch(Exception ex) {
                                      //System.out.println(ex.toString());
                                      out.print("hi "+ex.toString());
                                    }
                                    
                        %>
                    </div>
                    <div class="containersignin">
                        <p>Already have an account? <a href="login.jsp"><b>Sign in</b></a></p><br>
                    </div>
                                    
                                    
                                    
                        <label>
                            <input type="checkbox" checked="checked" name="remember"> Remember me
                        </label>
            </div>
        
                <div class="container" style="background-color:#f1f1f1">
                    <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn"><a href="index.jsp">Cancel</a></button>
                              <span class="psw">Forgot <a href="#">password?</a></span>
                </div>
                
                
            </form>        
    </div>
  </body>
</html>