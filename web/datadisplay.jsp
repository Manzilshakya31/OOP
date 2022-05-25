<%-- 
    Document   : adetail
    Created on : 28 Apr 2022, 19:34:19
    Author     : manzilshakya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "project";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="findex.css">
        
        <title>Cloud Card Management</title>
        
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
                    <li><a href="aedit.jsp">Edit</a></li>
                    <li><a href="adetail.jsp"><b>Display detail</b></a></li>
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
                bottom: 10%;
                text-align: center;
                left: 40%;
                //background-color: #1974D2;
                padding: 5px;
                border: 2px solid black;
            }
            .btnn a
            {
                text-decoration: none;
                color: black;
            }
            .btnn:hover
            {
                background-color: #4087d8;
                color: white;
            }
            .btnn a:hover
            {
                background-color: #4087d8;
                color: white;
            }
            
            
        </style>
        
        <div class="cointainer2">
            <div class="list1">
            <h3>Welcome to Cloud Card Management!!</h3>
            </div>
            
            <form class="modal-content animate"> 
            <table class="boxes"border="0">
                <tr>
                    <td class="up"><b>Id</b><hr></td>
                    <td class="mid"><b>Name</b><hr></td>
                    <td class="down"><b>Email</b><hr></td>
                    <td class="down"><b>Detail</b><hr></td>
                </tr>
                <%
                    try{
                    connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                    statement = connection.createStatement();
                    String sql = "select * from data";
                    resultSet = statement.executeQuery(sql);
                    while (resultSet.next()){
                    %>
                    <tr>
                        <td class="up"><%=resultSet.getInt("id")%></td>
                        <td class="mid"><%=resultSet.getString("name")%></td>
                        <td class="down"><%=resultSet.getString("Address")%></td>
                        <td class="down"><%=resultSet.getString("Detail")%></td>
                    </tr>
                    <%
                    }
                    connection.close();

                    }
                    catch(Exception e){
                    e.printStackTrace();
                    }
                    
                %>
            </table>
            <hr>
            <button class="btnn" type="submit"><a href="admin.jsp">Done</a></button>
            
        </form>
        </div>
            
            
       
    </body>
</html>
