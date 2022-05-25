<%-- 
    Document   : 1
    Created on : 28 Apr 2022, 08:15:41
    Author     : manzilshakya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" integrity="sha512-HK5fgLBL+xu6dm/Ii3z4xhlSUyZgTT9tuc/hSrtw6uzJOvgRr2a9jyxxT1ely+B+xFAmJKVSTbpM/CuL7qxO8w==" crossorigin="anonymous" />
        <link rel="stylesheet" type="text/css" href="1.css">
        <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>


        <style>
            .container2 {
                display: inline-block;
                cursor: pointer;
            }

            .bar1, .bar2, .bar3 {
                width: 30px;
                height: 3px;
                background-color: #333;
                margin: 6px 0;
                transition: 0.4s;
            }

            .change .bar1 {
                -webkit-transform: rotate(-45deg) translate(-9px, 6px);
                transform: rotate(-45deg) translate(-9px, 6px);
            }

            .change .bar2 {
                opacity: 0;
            }

            .change .bar3 {
                -webkit-transform: rotate(45deg) translate(-8px, -8px);
                transform: rotate(45deg) translate(-8px, -8px);
            }
        </style>
    </head>
    <body>
        <div id="fpage">
            <div class="header" id="myHeader" style="z-index: 1">
                <div class="logo">
                    <img src="Project/card.png" alt="logo">
                </div>
                <div class="list">
                    <ul>

                        <li>
                            <div class="dropdown">
                                <div class="container2" onclick="myFunction(this)">
                                    <div class="bar1"></div>
                                    <div class="bar2"></div>
                                    <div class="bar3"><button class="dropbtn"></button></div>
                                </div>
                                <div class="dropdown-content">
                                    <a href="index.jsp">Logout</a>
                                </div>
                            </div>    
                            <script>
                                function myFunction(x) {
                                    x.classList.toggle("change");
                                }
                            </script>
                        </li>

                        <li><a href="#tbody">Features</a></li>
                        <li><a href="#bf">Card</a></li>
                        <li><a href="#">Home</a></li>
                    </ul>
                </div>
            </div>
            <!--<script>
                window.onscroll = function() {myFunction()};
                
                var header = document.getElementById("myHeader");
                var sticky = header.offsetTop;
                
                function myFunction() {
                  if (window.pageYOffset > sticky) {
                    header.classList.add("sticky");
                  } else {
                    header.classList.remove("sticky");
                  }
                }
            </script>-->
            <!----------------------------------header ends here--------------------------------------------->  

            <div class="word">       
                <img src="Pic/card.jpeg" alt="">
                <div class="box">

                </div>
                <div class="container">
                    <p><b><i>WELCOME <br>TO<BR>CARD MANAGEMENT</i></b></p>
                </div>
            </div>
        </div>  <!-------------------end of first page--------------------->

        <!------------------------------------card---------------------->
        <style>
            .pic2 img{
                opacity: 0.2;
            }
        </style>

        <style>
            /*
            .body1
            {
                float: left;
                margin-left: 12%;
                margin-top: 4%;
                transition:  0.4s;
            }*/
        </style>

        <div id="bf">
            <!--<h2>CHECK YOUR DATA</h2>-->
            <div class="pic2">
                <img src="Pic/grey.png" alt="">
            </div>
            <div class="container">

                <div class="mbody">
                    <h2>CHECK YOUR DATA</h2>
                    <a href="data.jsp">
                        <div class="body1">
                            <img src="Pic/2092.jpeg" alt="Guitar">
                            <p>Citizenship Card</p>
                            <div class="blist">
                                <ul>
                                    <li>Name : Manzil</li>
                                    <li>Age : 20</li>
                                    <li>DOB : 2001/09/05</li>
                                    <li>Number : 9841230422</li>
                                </ul>
                            </div>
                            <!--
                                <p><b>
                                    Hot Dog<br>
                                    Rs 100</b>
                                </p>
                                <button class="buttons" type="submit">Order</button>
                                <button class="buttons" type="submit">Pack</button>
                            -->
                        </div>
                    </a>
                    <a href="data.jsp">
                        <div class="body1">
                            <img src="Pic/smart-driving-license_20200111094935.jpeg" alt="Guitar">
                            <p>Driving License</p>
                            <div class="blist">
                                <ul>
                                    <li>Name : Manzil</li>
                                    <li>Age : 20</li>
                                    <li>DOB : 2001/09/05</li>
                                    <li>Number : 9841230422</li>
                                </ul>
                            </div>
                            <!--
                                <p><b>
                                    Hot Dog<br>
                                    Rs 100</b>
                                </p>
                                <button class="buttons" type="submit">Order</button>
                                <button class="buttons" type="submit">Pack</button>
                            -->
                        </div>
                    </a>
                    <a href="data.jsp">
                        <div class="body1">
                            <img src="Pic/bsbedt.png" alt="Guitar">
                            <p>Bill Book</p>
                            <div class="blist">
                                <ul>
                                    <li>Name : Manzil</li>
                                    <li>Age : 20</li>
                                    <li>DOB : 2001/09/05</li>
                                    <li>Number : 9841230422</li>
                                </ul>
                            </div>
                            <!--
                                <p><b>
                                    Hot Dog<br>
                                    Rs 100</b>
                                </p>
                                <button class="buttons" type="submit">Order</button>
                                <button class="buttons" type="submit">Pack</button>
                            -->
                        </div>
                    </a>
                    <a href="data.jsp">
                        <div class="body1">
                            <img src="Pic/thumb20210327T224403604-1616864362.jpeg" alt="Guitar">
                            <p>Citizenship</p>
                            <div class="blist">
                                <ul>
                                    <li>Name : Manzil</li>
                                    <li>Age : 20</li>
                                    <li>DOB : 2001/09/05</li>
                                    <li>Number : 9841230422</li>
                                </ul>
                            </div>
                            <!--
                                <p><b>
                                    Hot Dog<br>
                                    Rs 100</b>
                                </p>
                                <button class="buttons" type="submit">Order</button>
                                <button class="buttons" type="submit">Pack</button>
                            -->
                        </div>
                    </a>
                    <!--<a href="">
                        <div class="body2">
                            <img src="Pic/add-icon--line-iconset--iconsmind-29.png" alt="Guitar">
                            <p>ADD</p>
                            <div class="blist">
                                <ul>
                                    <li>Name</li>
                                    <li>Age</li>
                                    <li>DOB</li>
                                    <li>Number</li>
                                </ul>
                            </div>
                            
                        </div>
                    </a>-->

                </div><!--second body completed-->
            </div>
        </div><!--------------------------2nd body end here---------------->





        <!------------------------------->

        <style>
            #tbody
            {
                margin-top: 1%;
                text-align: center;

            }
        </style>
        <div id="tbody">
            <div class="container1">
                <h1>Features to make life easier</h1><br>
                <p>It is a long established fact that a reader will be distracted by the readable 
                    content of a page when looking at its layout. </p>
                <div class="tbpic">
                    <a href="">
                        <div class="tbp">
                            <img src="Pic/cloud.png" alt="">
                            <p>Cloud Service</p>
                        </div>
                    </a>
                    <a href="">
                        <div class="tbp1">
                            <img src="Pic/manage.jpeg" alt="">
                            <p>Management</p>
                        </div>
                    </a>
                    <a href="">
                        <div class="tbp1">
                            <img src="Pic/security.png" alt="">
                            <p>Security</p>
                        </div>
                    </a>
                </div>
            </div>
        </div><!----------------tbody ends here---------------------->

        <style>
            .fourb{
                background-color: #adc8e8;
            }
            #fpic img{
                opacity: 0;
            }
            .brands h1{
                text-align: center;
            }
        </style>
        <div class="fourb">
            <div id="fpic">
                <img src="Pic/white.jpeg" alt="card"></div>
            <!--<div class="fourb">   --> 
            <style>
                .brands h1 i *
                {
                    color: lavender;
                }
            </style>
            <div class="brands">
                <h1>Partnership</h1>
                <div class="container">
                    <div class="row">
                        <div class="col-5">
                            <img src="Pic/Esewa.png">
                        </div>
                        <div class="col-5">
                            <img src="Pic/Khalti.png">
                        </div>
                        <div class="col-5">
                            <img src="Pic/Paypal.png">
                        </div>
                        <div class="col-5">
                            <img src="Pic/ime.png">
                        </div>
                    </div>
                </div>
            </div><!--brands end here-->
        </div>
        <!-- 4th body ends -->

        <style>
            .footer1{
                position: absolute;
                width: 25%;
                height: 30%;
                left: 10%;
                margin-top: 2%;
                text-align: center;

            }
            .footer2{
                position: absolute;
                width: 25%;
                height: 30%;
                left: 40%;
                margin-top: 2%;
                text-align: center;
            }
            .footer3{
                position: absolute;
                width: 25%;
                height: 30%;
                right: 10%;
                margin-top: 2%;
                text-align: center;
            }
            .footer3 ul li{
                text-decoration: none;
                list-style: none;
            }
        </style>
        <div id="footer0">

            <div class="footer1">
                <img src="Project/card.png" alt="alt" height="80px"/>
                <p>It contains features of cloud computing, <br>
                    managing your data with high security facility.<br> 
                    Further, in future enhancement you be able<br> 
                    to add lots of other stuffs.
                </p>
            </div>

            <div class="footer2">
                <h1>Location</h1>
                <img src="Pic/loc.png" alt="alt" height="170px"/>
            </div>

            <div class="footer3">
                <h1>Whats new</h1><br>
                <ul>
                    <li>Cloud Service</li>
                    <li>Security</li>
                    <li>Organized</li>

                </ul>
            </div>
        </div>
    </body>
</html>