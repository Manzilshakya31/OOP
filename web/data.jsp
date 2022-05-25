<%-- 
    Document   : data
    Created on : 28 Apr 2022, 22:37:05
    Author     : manzilshakya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="findex.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div id="fpage">
        <div class="header" id="myHeader" style="z-index: 1">
            <div class="logo">
                <img src="Project/card.png" alt="logo">
            </div>
                                               
            
            <div class="list">
                <ul>
                 
                    
                    <li><a href="1.jsp">Features</a></li>
                    <li><a href="1.jsp">Card</a></li>
                    <li><a href="1.jsp">Home</a></li>
                </ul>
            </div>
        </div>
            <style>

                .word1 img
                {
                    top: 80px;
                    width: 100%;
                    height: 610px;
                    position: relative;
                    padding: 0%;
                    margin: 0%;
                    opacity: 0.4;
                }
                .para p
                {
                    position: absolute;
                    top: 20%;
                    left: 39%;
                    font-size: 35px;
                }
                .img1
                {
                    position: absolute;
                    top: 35%;
                    left: 20%;
                }
                .img1 img
                {
                    height: 250px;
                }
               
                .text 
                {
                    position: absolute;
                    top:35%;
                    right: 20%;
                    background-color: white;
                    padding: 3.5%;
                }
                .text ul li
                {
                    text-decoration: none;
                    color: black;
                    list-style: none;
                    font-size: 20px;
                }
                .btnnn
                {
                    position: absolute;
                    right: 10%;
                    
                }
                .btnnn a
                {
                    background-color: white;
                    color: black;
                    text-decoration: none;
                    padding: 5%;
                    border: black solid 2px;
                }
                .btnnn a:hover
                {
                    background-color: #4087d8;
                    color: white;
                    text-decoration: none;
                    padding: 5%;
                    border: black solid 2px;
                    border-color: white;
                    box-shadow: 5px 5px 4px grey;
                }
            </style>
        <div class="word1">       
                <img src="Pic/card.jpeg" alt="">
        </div>        
            
            <div class="container2">
                <div class="para">
                    <p><b>Citizenship Card</b></p>
                </div>
                <div class="img1">
                    
                    <img src="Pic/2092.jpeg" alt="Guitar">
                    
                </div>
                    <div class="text">
                        <ul>
                            <li>Name : Zyan Malik</li>
                            <li>Age : 20</li>
                            <li>DOB : 2001/09/05</li>
                            <li>Number : 9841230422</li>
                            <li>Address: Jawalakhel</li>
                            <li>Ward no: 4</li>
                            <li>Date issued: 2011</li>
                            
                        </ul>
                    </div>
                    
                
            </div>
            <button class="btnnn"><a href="1.jsp">Done</a> </button>
        </div>
        
    </body>
</html>
