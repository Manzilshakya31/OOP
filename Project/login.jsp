<%-- 
    Document   : login
    Created on : 28 Apr 2022, 08:24:51
    Author     : manzilshakya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>




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

            <form class="modal-content animate" action="/Finalp/Servlet1" method="post">

                <div class="imgcontainer">

                                            <img src="Project/card.png" alt="Logo" class="avatar">
                </div><!---------------logo pic----------->
                <style>
                    .submit
                    {
                        color: black;
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

                                  <div class="container">
                                    <label for="uname"><b>Username</b></label>
                                    <input type="text" placeholder="Enter Username" name="Name" required>

                                    <label for="psw"><b>Password</b></label>
                                    <input type="password" placeholder="Enter Password" name="Password" required>

                                    <input class="submit" type="submit" value="Login"/>
                                    <label>
                                      <input type="checkbox" checked="checked" name="remember"> Remember me
                                    </label><br><br>
                                    <!--<label class="forgot">
                                        <a href="forgetpwd.jsp">Forgot Password</a>
                                    </label>
                                  </div>-->

                <div class="container" style="background-color:#f1f1f1">
                    <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn"><a href="index.jsp">Cancel</a></button>
                              <span class="psw"><a href="forgetpwd.jsp">Forgot password?</a></span>
                </div>
            </form>
        </div>
    </body>
</html>
