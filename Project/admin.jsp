<%-- 
    Document   : admin
    Created on : 28 Apr 2022, 19:18:21
    Author     : manzilshakya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <div id="fpage">
        <div class="header" id="myHeader" style="z-index: 1">
            <div class="logo">
                <img src="Project/card.png" alt="logo">
            </div>
                                               
            
            <div class="list">
                <ul>
                 
                    
                    <li><a href="delete.jsp">Delete</a></li>
                    <li><a href="aedit.jsp">Edit</a></li>
                    <li><a href="adetail.jsp">Display detail</a></li>
                </ul>
            </div>
        </div>
        
        <div class="word">       
                <img src="Pic/card.jpeg" alt="">
                <div class="box">

                </div>
            <div class="container" id="word">
                    <p><b><i>WELCOME <br>TO<BR> ADMIN PAGE</i></b></p>
            </div>
                <style>
                    #word *
                    {
                        color: lavender;
                    }
                </style>
        </div>
        
        
    </div>
       
    </body>
</html>
