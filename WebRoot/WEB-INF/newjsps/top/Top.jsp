<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
  
    
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
    <title>首页|BEGEEK</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="Shortcut Icon" href="img/favicon.ico" />
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="font/index/iconfont.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/acss.css">
    <link rel="stylesheet" href="css/evenFlow.css">
    <script src="js/echarts.min.js"></script>
  </head>
  
  <body style="background-color:">
<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">用户登录|BEGEEK</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label>账号</label>
                        <input id="userid" type="email" class="form-control"  placeholder="Email">
                    </div>
                    <div class="form-group">
                        <label>密码</label>
                        <input  id="userPassword" type="password" class="form-control" placeholder="Password">
                    </div>


                </form>
            </div>
            <div class="modal-footer">
                <button id="no" type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button onclick="login();" type="button" class="btn btn-primary">登录</button>
            </div>
        </div>
    </div>
</div>


<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">用户注册|BEGEEK</h4>
            </div>
            <div class="modal-body">
                <form>
                    <div class="form-group">
                        <label>账号</label>
                        <input id="useridregsit" type="email" class="form-control"  placeholder="帐号">
                    </div>
                    <div class="form-group">
                        <label>密码</label>
                        <input  id="userPasswordregsit" type="password" class="form-control" placeholder="Password">
                    </div>
                    <div class="form-group">
                        <label>确认密码</label>
                        <input  id="userPassword1" type="password" class="form-control" placeholder="Password1">
                    </div>
                    <div class="form-group">
                        <label>联系电话</label>
                        <input  id="table" type="table" class="form-control" placeholder="table">
                    </div>
                    <div class="form-group">
                        <label>邮箱</label>
                        <input  id="email" type="email" class="form-control" placeholder="email">
                    </div>


                </form>
            </div>
            <div class="modal-footer">
                <button id="no" type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button onclick="regist();" type="button" class="btn btn-primary">注册</button>
            </div>
        </div>
    </div>
</div>
<script>
	 
	 
function login(){
	  var userid = document.getElementById("userid");
	  var userpasswd =document.getElementById("userPassword");
	  var user_name = userid.value;
	  var user_password = userpasswd.value;
	  $.ajax({
	
   		async:false,
   		cache:false,
   		url:"${pageContext.request.contextPath}/user/LoginServlet",
   		data:{
   		//method:"LoginServlet",
   	    user_name:user_name,
   		user_password:user_password
   		},
   		type:"POST",
   		dataType:"json",
   		success:function(result) {
   		  if(result=="0"){
                   alert("帐号密码错误！");
           }else{
           window.location.reload();
          }
   		 	
   		
   	     ///////////////////////
   		}
	 });
	 }
	 //注册异步请求
	 function regist(){
	  var userid = document.getElementById("useridregsit");
	  var userpasswd =document.getElementById("userPasswordregsit");
	  var userpasswd1 =document.getElementById("userPassword1");
	  var usertable =document.getElementById("table");
	  var useremail =document.getElementById("email");
	  
	  var user_name = userid.value;
	  var user_password = userpasswd.value;
	  var pass1tex = userpasswd1.value;
	  var user_tel = usertable.value;
	  var user_email = useremail.value;
	 $.ajax({
	
    		async:false,
    		cache:false,
    		url:"${pageContext.request.contextPath}/user/RegistServlet",
    		data:{
    		userName:user_name,
    		userPassword:user_password,
    		pass1tex:pass1tex,
    		userTel:user_tel,
    		userEmail:user_email
    		},
    		type:"POST",
    		dataType:"json",
    		success:function(result) {
    		if(result=="0"){
    		alert("两次密码不一样！");
    		}else if(result=="1"){
	            alert("用户名已经存在！");
	            }else if (result=="2"){
	            alert("注册失败，邮箱存在，请重新检查登陆信息！");
	            }else if (result=="200"){
	            alert("注册成功，请登录！");
	            window.location.reload();
	            }
    		 	
    		
    	     ///////////////////////
    		}
	 });
	 }
	  
	  	
	  

</script>
<!--导航条-->
<nav class="navbar navbar-default navbar-inverse navbar-fixed-top" style="background-color: #4d6071;border: 0;box-shadow:6px 6px 5px #ddd;height: 60px;padding: 4px">
    <div class="container">
        <div class=""   style="background-color: #4d6071;margin: 0;text-align: left">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#" style="font-size: 20px;">
                    &nbsp;&nbsp;
                    <i class="iconfont" style="font-size: 35px;color: white">&#xe651;</i>

                </a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="">
                <ul class="nav navbar-nav">
                    <li>&nbsp;&nbsp; &nbsp; &nbsp; &nbsp;  </li>
                    <li ><a href="${pageContext.request.contextPath}/common/index"  style="color: #fff;font-size: 18px">&nbsp;首页&nbsp;</a></li>
                    <li ><a class="more" href="${pageContext.request.contextPath}/common/studyline" style="color: #fff;font-size: 18px">&nbsp;学习导图&nbsp;<span class="sr-only">(current)</span></a></li>
                    <li ><a href="${pageContext.request.contextPath}/common/geek"  style="color: #fff;font-size: 18px">&nbsp;GEEK社区&nbsp;</a></li>
                    <%-- <li ><a href="<c:url value='/ArticleServlet?method=FindAllArticle'/>"  style="color: #fff;font-size: 18px">&nbsp;资源共享&nbsp;</a></li> --%>
                    <li ><a href="${pageContext.request.contextPath}/common/ResourcesList"  style="color: #fff;font-size: 18px">&nbsp;资源共享&nbsp;</a></li>
                    
                    <li ><a href="${pageContext.request.contextPath}/common/SubTestList"  style="color: #fff;font-size: 18px">&nbsp;资源测试&nbsp;</a></li>
                </ul>
     <c:choose>
		<c:when test="${empty sessionScope.sessionUser }">
			  <ul class="nav navbar-nav navbar-right">                                 
                   <li id="login"><a href="" data-toggle="modal" data-target="#myModal">登录</a></li>
                    <li id="register"><a href="" data-toggle="modal" data-target="#myModal1">注册</a></li>                                                                                                        

                </ul>
		</c:when>
		<c:otherwise>
			  <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">${sessionScope.sessionUser.userName } <span class="caret"></span></a>
                        <ul class="dropdown-menu" style="background-color: #4d6071">
                            <li><a href="<c:url value='user/GotoMycenter'/>" >个人中心</a></li>
                            <li><a href="#">切换用户</a></li>
                        </ul>
                    </li>

                    <li><a href="<c:url value='user/etreatUser'/>" >注销</a></li>
                </ul>
		</c:otherwise>
    </c:choose>
                
                
                
                
                <form class="hidden-xs navbar-form navbar-right visible-lg visible-xs" role="search" style="margin-top:10px">
                    <div class="form-group has-feedback">
                        <span class="glyphicon glyphicon-search form-control-feedback" style="color: #fff"></span>
                        <input type="text" class="form-control input-sm" placeholder="搜索" style="background-color: #4d6071;border-color:#888;color: #fff">
                    </div>
                </form>

            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->

    </div>

</nav>
<!--导航条-->
<script>
    var myChartRanking = echarts.init(document.getElementById('ranking'));
  
</script>


<!--<script src="js/hotPic.js"></script>-->
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!--<script src="js/jquery.min.js"></script>-->
<!-- Include all compiled plugins (below), or include individual files as needed -->
<!--<script src="js/bootstrap.min.js"></script>-->
  </body>
</html>
