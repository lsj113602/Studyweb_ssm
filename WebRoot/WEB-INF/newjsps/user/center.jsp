<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN" style="height: 100%">
  <head>

    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <title>个人中心|BEGEEK</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="Shortcut Icon" href="img/favicon.ico" />
    <link rel="stylesheet" href="css/acss.css">
    <link rel="stylesheet" href="font/index/iconfont.css">
    <link rel="stylesheet" href="css/evenFlow.css">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<div style="height: 100%;background-image: url(img/background/lzk2.jpg);background-size: cover;background-position: center;background-repeat: no-repeat">

    <body >
    <div style="float:left; width: 100%; text-align: left;">
	<hr/>
	<br/>
	<%@include file="../top/Top.jsp" %>
</div>
    <div style="height: 80px"></div>

    <div style=";background-size: cover;background-position: center;height: 300px;width: 100%">
        <div style="height: 20px"></div>
        <div style="text-align: center">
           <a href="<c:url value='/UserServlet?method=GotoMycenter'/>"> <img class="img-circle" width="120px" height="120px" src="img/avatar/yifan.JPG"  alt=""></a>
            <div style="height: 10px"></div>
            <div class="row">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <div style="color: white;font-size: 22px;font-weight: 700">${sessionScope.sessionUser.user_name}</div>
                    <div style="height: 10px"></div>
                    <div ><button style="margin: 5px" class="btn btn-success""><span style="color: #e35b5a"><span id="number">12</span> </span>人关注</button>
                       <!--  <button onclick="changeNum1()" id="add" class="btn btn-success" style="margin: 5px">关注+</button> -->
                    </div>


                </div>
                <div class="col-md-4"></div>

            </div>
        </div>
    </div>
    <div class="container">
        <!-- Nav tabs -->
        <div style="height: 10px"></div>



        <!-- Tab panes -->
        <div class="row">
            <div class="col-md-8" style="">
                <div style="height: 20px"></div>





            </div>

            <div class="col-md-4" >
                <div style="height: 80px"></div>
                <div style="background-color: rgba(77,96,113,0);;padding: 10px">
                    <h3 style="margin: 0;color:#fff;font-weight: 700"><i class="fa fa-suitcase"></i>我关注的用户 +</h3>
                    <hr />
                    <div class="row">
                        <div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;margin-bottom: 15px">
                            <img src="img/avatar/a1.jpg" class="img-circle" width="80px" height="80px" alt="">
                            <div style="height: 8px"></div>
                            <div style="text-align: center;;color: #fff">大王来巡山</div>
                        </div>
                        <div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;margin-bottom: 15px">
                            <img src="img/avatar/a6.jpg" class="img-circle" width="80px" height="80px" alt="">
                            <div style="height: 8px"></div>
                            <div style="text-align: center;color: #fff">小丸子君</div>
                        </div>
                        <div class="col-md-4 col-xs-4 col-sm-4" style="text-align: center;margin-bottom: 15px">
                            <img src="img/avatar/a2.jpg" class="img-circle" width="80px" height="80px" alt="">
                            <div style="height: 8px"></div>
                            <div style="text-align: center;color: #fff">粉尘污染</div>
                        </div>
                        
                        
                    </div>
                </div>
            </div>
        </div>

    </div>



    <!--footer-->
    <footer>
        <div style="height: 100px;width: 100%;background-color:  rgba(77,96,113,0.8);text-align: center;padding: 15px">
            <p style="color: white">联系我们&nbsp;|&nbsp;网站首页&nbsp;|&nbsp;免责声明&nbsp;|&nbsp;关于我们</p>
            <p style="color: white">Copyright © 2016 &nbsp; <a style="color: white" href="">极客联盟</a> / 程序设计大赛创新实验室.</p>
        </div>


    </footer>


    <script>
        function changeNum1(){
            document.getElementById("add").innerHTML="已关注";
            document.getElementById("add").style.backgroundColor="#e35b5a";
            document.getElementById("number").innerHTML="13";

        }


    </script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </body>

</div>
</html>
