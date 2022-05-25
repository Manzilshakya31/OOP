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
        <title>Data entry</title>
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
                        <label for="Id"><b>Id</b></label>
                        <input type="text" placeholder="Enter Username" name="id" required> 

                        <label for="Name"><b>Name</b></label>
                        <input type="text" placeholder="Enter Username" name="name" required>                                   

                        <label for="password"><b>Address</b></label>
                        <input type="text" placeholder="Address" name="address" id="psw" required>

                        <label for="psw-repeat"><b>Detail</b></label>
                        <input type="text" placeholder="Detail" name="detail" id="psw-repeat" required>
                        <hr>
                        

                        <%
                            
                            String Id = request.getParameter("id");
                            String Name = request.getParameter("name");
                            String Address = request.getParameter("address");
                            String Detail = request.getParameter("detail");
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                statement = connection.createStatement();
                                if (Id != null) {
                                    String sql = "insert into data(Id,Name,Address,Detail)values('" + Id + "','" + Name + "','" + Address + "','" + Detail + "');";
                                    statement.executeUpdate(sql);
                                    out.print("<script>alert('New contact added sucessfully');</script>");
                                }
                                connection.close();
                            } catch (Exception ex) {
                                //System.out.println(ex.toString());
                                out.print("hi " + ex.toString());
                            }

                        %>

                        <!--<input class="submit" type="submit" value="register"/>-->
                        <button class="submit" type="submit" name="rbtn" class="registerbtn">Submit</button>
                        <%      
                            /*String Id = request.getParameter("id");
                            String Name = request.getParameter("name");
                            String Address = request.getParameter("address");
                            String Detail = request.getParameter("detail");
                            String rbtn = request.getParameter("btn");
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                                statement = connection.createStatement();
                                if (rbtn != null) {
                                    String sql = "insert into data(id,name,address,detail)values('" + Id + "','" + Name + "','" + Address + "','" + Detail + "');";
                                    statement.executeUpdate(sql);
                                    out.print("<script>alert('New contact added sucessfully');</script>");
                                }
                                connection.close();
                            } catch (Exception ex) {
                                //System.out.println(ex.toString());
                                out.print("hi " + ex.toString());
                            }*/

                        %>
                    </div>
                    
                </div>

                <div class="container" style="background-color:#f1f1f1">
                    <button type="button" onclick="document.getElementById('id01').style.display = 'none'" class="cancelbtn"><a href="index.jsp">Cancel</a></button>
                    <span class="psw">Forgot <a href="#">password?</a></span>
                </div>


            </form>        
        </div>
    </body>
</html>