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
      
      <div class="header">
            <div class="header" id="myHeader" style="z-index: 1">
            <div class="logo">
                <img src="Project/card.png" alt="logo">
            </div>
                                               
            
            <div class="list">
                <ul>
                 
                    
                    <li><a href="delete.jsp"><b>Delete</b></a></li>
                    <li><a href="aedit.jsp">Update</a></li>
                    <li><a href="adetail.jsp">Display detail</a></li>
                </ul>
            </div>
        </div>
            <h1>Cloud Card Management System</h1>
        </div>
      
      <style>
            
            .list1 h3
            {
                text-align: center;
                font-size: 35px;
            }
            .boxes
            {
                position: absolute;
                left: 40%;
                align-items: center;
                padding: 1px;
                margin: 5px;
            }
            .boxes tr td
            {
                padding: 5px;
            }
            .btnn
            {
                position: absolute;
                top: 55%;
                text-align: center;
                left: 40%;
                background-color: #1974D2;
                padding: 5px;
            }
            .btnn a
            {
                text-decoration: none;
                color: white;
            }
            .btnn:hover
            {
                background-color: green;
            }
            .updatebtn
            {
                border: 2px solid black;
                padding: 5px;
            }
            .updatebtn:hover
            {
                background-color: #4087d8;
                color: white;
                border: 2px solid white;
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
      <div class="cointainer2">
            <div class="list1">
            <h3>Welcome to Cloud Card Management!!</h3>
            </div>
            
        </div>
      
    <div class="mainbody flex fdc">
     
        
        <!--<form class="modal-content animate" action="/Finalp/NServlet" method="post">-->
        <form class="modal-content animate">
            <div><!--
                <div class="imgcontainer">

                    <img src="Project/card.png" alt="Logo" class="avatar">
                </div>--><!---------------logo pic----------->


                    <div class="container">
                        <label for="email"><b>Email</b></label>                                    
                            <input type="text" placeholder="Enter Email" name="email" id="email" required>

                                                             
                                    <%
                                    //String Name = request.getParameter("name");
                                    String Email = request.getParameter("email");
                                    //String Password = request.getParameter("password");
                                    
                                    
                                  %>

                        <!--<input class="submit" type="submit" value="register"/>-->
                        <button class="updatebtn" type="submit" name="rbtn" class="registerbtn">Delete</button>
                        <%
                                    
                                    String rbtn = request.getParameter("rbtn");
                                    try{
                                    Class.forName("com.mysql.jdbc.Driver");  
                                    connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                                    statement=connection.createStatement();
                                    if(rbtn!=null){
                                        String sql="DELETE FROM user WHERE Email='"+Email+"';";
                                      //String sql ="insert into user(Name,Password,Email)values('"+Name+"','"+Password+"','"+Email+"');";
                                      statement.executeUpdate(sql);
                                      out.print("<script>alert('Deleted sucessfully');</script>");
                                    }
                                    connection.close();
                                    }
                                    catch(Exception ex) {
                                      //System.out.println(ex.toString());
                                      out.print("hi "+ex.toString());
                                    }
                                    
                        %>
                    </div>                
                             
            </div>
        
                <div class="container" style="background-color:#f1f1f1">
                    <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn"><a href="admin.jsp">Cancel</a></button>
                           
                </div>
                
                
            </form>        
    </div>
  </body>
</html>