<%-- 
    Document   : 1
    Created on : 28 Apr 2022, 08:15:41
    Author     : manzilshakya
--%>

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
<!--
Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Html.html to edit this template
-->
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
    <link rel="stylesheet" type="text/css" href="findex.css">
</head>

<body>
    <div class="header">
            <div class="header" id="myHeader" style="z-index: 1">
            <div class="logo">
                <img src="Project/card.png" alt="logo">
            </div>
                                               
            
            <div class="list">
                <ul>
                 
                    
                    <li><a href="delete.jsp">Delete</a></li>
                    <li><a href="aedit.jsp"><b>Edit</b></a></li>
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
        
            <!--<form class="modal-content animate" action="/Finalp/Servlet2" method="post">-->
            <form class="modal-content animate">
                                  <div class="container">
                                      
                                    <label for="uid"><b>Id</b></label>
                                    <input type="number" placeholder="Enter id" name="id" required><br><br>
                                      
                                    <label for="name"><b>Username</b></label>
                                    <input type="text" placeholder="Enter Username" name="name" required>

                                    <label for="psw"><b>Password</b></label>
                                    <input type="password" placeholder="Enter Password" name="Pwd" required>
                                    
                                    <label for="eml"><b>Email</b></label>
                                    <input type="text" placeholder="Enter Email" name="Eml" required>

                                   <!-- <input class="submit" type="submit" name="rtbn1" value="Login"/>-->
                                    
                                    

                        <!--<input class="submit" type="submit" value="register"/>-->
                        <button class="updatebtn" type="submit" name="rbtn" class="registerbtn">Update</button>
                        <%
                                
                                    String Name = request.getParameter("name");
                                    String Password = request.getParameter("Pwd");
                                    String Email = request.getParameter("Eml");
                                   // String uid = request.getParameter("id");
                                    
                                    //int id;
                                    //out.println("Name " + name);
                                    //out.println("Password " + pwd);
                                    //out.println("Email " + eml);
                                    //out.println("id " + uid);
                                    
                                    String rbtn = request.getParameter("rbtn");
                                    try{
                                    Class.forName("com.mysql.jdbc.Driver");  
                                    connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                                    statement=connection.createStatement();
                                    if(rbtn!=null){
                                      String sql ="UPDATE user SET Name='"+Name+"', Password='"+Password+"' where Email='"+Email+"';";
                                      //String sql ="UPDATE user SET (Name,Password)values('"+Name+"','"+Password+"') WHERE Email='"+Email+"');";
                                      statement.executeUpdate(sql);
                                      out.print("<script>alert('update sucessfully');</script>");
                                    }
                                    connection.close();
                                    }
                                    catch(Exception ex) {
                                      //System.out.println(ex.toString());
                                      out.print("hi "+ex.toString());
                                    }
                                    
                        %>
                                    
                                  </div>

                <div class="container" style="background-color:#f1f1f1">
                    <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn"><a href="admin.jsp">Cancel</a></button>
                             
                </div>
            </form>

        
    
                
</body>
</html>


</body>
</html>