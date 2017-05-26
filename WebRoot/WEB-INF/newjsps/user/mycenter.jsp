<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
   <title>个人中心|BEGEEK</title>
    
	 <!-- Bootstrap -->
    <%-- <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="Shortcut Icon" href="${pageContext.request.contextPath}/img/favicon.ico" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/acss.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/font/index/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/evenFlow.css"> --%>
  </head>
  
  <body style="background-color:">
<!-- Modal -->

   <div style="float:left; width: 100%; text-align: left;">
	<hr/>
	<br/>
	<%@include file="../top/Top.jsp" %>
	<%-- <jsp:include page="${ctx}/common/mainMenu"/> --%>
</div>

<%--     <div id="large-header" style="background-color: rgba(117,146,153,1); ">
        <canvas id="demo-canvas"></canvas>
        <div class="hidden-xs"  style="position: absolute;
                 padding: 0;
                 color: #FFFFFF;
                 text-align: left;
                 top: 30%;
                 left: 50%;
                 -webkit-transform: translate3d(-50%,-50%,0);
                 transform: translate3d(-50%,-50%,0);">
            <div  class="container">
                <div class="row">
                    <div class="col-md-2">
                        <div style="text-align: left">
                            <div style="background-image: url(${sessionScope.sessionUser.userImgsrc});background-position: center;background-size: cover;background-repeat: no-repeat;height: 120px;width: 120px"></div>
                        </div>
                    </div>
                    <div class="col-md-6" style="padding-left: 20px">
                        <h2 style="font-weight: 700;margin: 0;color: #fff">${sessionScope.sessionUser.userName }</h2>
                        <p style="color: #fff">当前积分：${sessionScope.sessionUser.userPoints }</p>
                    </div>
                    <div class="col-md-4" style="text-align: right;color: #fff">
                        <div class="row">
                            <div class="col-md-6"></div>
                            <div class="col-md-3">关注：${sessionScope.unum }</div>
                            <div class="col-md-3">粉丝：${sessionScope.fnum }</div>
                        </div>
                        <div style="height: 60px"></div>
                        <div>
                            <a style="display: none" id="messageBox" href="" class="btn btn-info"><i class="glyphicon glyphicon-envelope"></i> <span id="num">2</span></a>
                            <a href="<c:url value='course/FindCourseByname?coursename=java'/>" class="btn btn-success" style="border-radius: 0">继续学习 ></a>

                        </div>
                    </div>
                </div>

                <div style="height: 30px"></div>
            </div>

        </div>


        <script>
            function getMessage(){
                $.ajax( {
                    url:'#',// 跳转到 action
                    data:{
                        'key':"formYifanJs"
                    },
                    type:'post',
                    cache:false,
                    dataType:'json',
                    success:function(data) {//
                        document.getElementById("messageBox").style.display="";
                        //信息条数
                        document.getElementById("num").innerHTML=data.num;
                    },
                    error : function() {

                        //alert("请求失败，测试用弹框，请删除");
                    }
                });

            }
            setInterval("getMessage()",3000);
        </script>

    </div> --%>
         <jsp:include page="../top/Top2.jsp"/>
    <div class="container">
        <div style="height: 20px"></div>
        <div class="row">
            <div class="col-md-2" style="text-align: center">
                <ul class="nav nav-pills nav-stacked">
                    <li style="height: 30px" role="presentation" class="active"><a href="<c:url value='user/GotoMycenter'/>"><i class="glyphicon glyphicon-home"></i> 个人主页</a></li>
                    <hr>
                    <li style="height: 30px;" role="presentation"><a href="common/gotouserinfo"><i class="glyphicon glyphicon-user"></i> 个人设置</a></li>
                    <hr>
                    <li style="height: 30px" role="presentation"><a href="common/gotouserCourse"><i class="glyphicon glyphicon-star"></i> 我的课程</a></li>
                    <hr>
                    <!-- <li style="height: 30px" role="presentation"><a href="#"><i class="glyphicon glyphicon-book"></i> 我的文章</a></li> -->
                    <!-- <hr> -->
                    <li style="height: 30px" role="presentation"><a href="<c:url value='plan/FindplanByall'/>"><i class="glyphicon glyphicon-flag"></i> 我的计划</a></li>
                    <hr>
                    <!-- <li style="height: 30px" role="presentation"><a href="#"><i class="glyphicon glyphicon-globe"></i> 个人问答</a></li>
                    <hr> -->
                    <li style="height: 30px" role="presentation"><a href="common/gotomyscores"><i class="glyphicon glyphicon-pushpin"></i> 考试记录</a></li>
                </ul>
            </div>
            <div class="col-md-7">

                <!--循环体-->
                
                <c:forEach items="${requestScope.listart}" var="listart" >
                <div style="padding: 10px" id="deleteHidden1">
                    <div class="article" style="border:1px solid #ddd;padding-left: 20px;padding-bottom: 20px;padding-right: 20px;padding-top: 10px" id="deletethis1" onmouseout="hiddendelete(1);" onmouseover="showdelete(1)">

                            <button onclick="deleteArticle(1);" href="" id="deletethisbutton1"  style="position: relative;left: 0px;top: 0px;z-index: 100;display: none"class="btn btn-danger btn-sm">删除 <i class="glyphicon glyphicon-trash"></i></button>

                        <h3 style="font-weight: 600"><a href="#">${listart.artitle}</a></h3>
                        <a href="#"> <p style="color: #787d82">
                           ${listart.artext}
                        </p>
                        </a>
                        <div class="row">
                            <div class="col-md-3" style="color: #787d82">
                                作者：${listart.user.userName}
                            </div>
                            <div class="col-md-4"></div>
                            <div class="col-md-5">
                                <div class="row" style="color: #787d82">
                                    
                                    <div class="col-md-4">${listart.arqasupport}点赞</div>
                                    <div class="col-md-6">${listart.artime}</div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div style="height: 0px"></div>
                </div>
                
                </c:forEach>



                <div style="text-align: center">
                    <nav>
                        <ul class="pagination">
                            <li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                            <li class="active"><a href="#">1</a></li>
                            <li class="disabled"><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
                        </ul>
                    </nav>
                </div>

            </div>
            <div class="col-md-3">
                <div style="padding: 3px;margin-top: 7px">
                    <div style="border: 1px solid #ddd;padding: 18px">
                        <h4 style="padding: 0;margin:0">我的粉丝 <i class="glyphicon glyphicon-heart-empty"></i> </h4>
                        <div style="height: 15px"></div>
                        <div class="row">
                        
                        <c:forEach items="${requestScope.frimy1}" var="frimy" >
                            <div class="col-md-4" style="text-align: center;overflow: hidden;">
                                <a href="<c:url value='friend/FindOtherUser?uuid=${frimy.refrenceid}'/>">
                                    <img class="img-circle"  width="54px" height="54px"  src="${frimy.userImgsrc}" alt="">
                                </a>
                                <p style="margin: 3">${frimy.userName}</p>
                            </div>
                            </c:forEach>
                            <!-- <div class="col-md-4" style="text-align: center;overflow: hidden;">
                                <a href="">
                                    <img src="img/avatar/a2.jpg" width="100%" alt="">
                                </a>
                                <p>yifan</p>
                            </div> -->
                            
                        </div>

                        <div style="text-align: center">
                            <a href="#" class="btn btn-success btn-sm" style="border-radius: 0"> 查看更多 + </a>
                        </div>

                    </div>
                    <div style="height: 20px"></div>
                    <div style="border: 1px solid #ddd;padding: 18px">

                        <h4 style="padding: 0;margin:0">我的关注 <i class="glyphicon glyphicon-heart-empty"></i> </h4>
                        <div style="height: 15px"></div>
                        <div class="row">
                        
                        <c:forEach items="${requestScope.myfri1}" var="myfri" >
                            <div class="col-md-4" style="text-align: center;overflow: hidden;">
                                <a href="<c:url value='friend/FindOtherUser?uuid=${myfri.uuid}'/>">
                                    <img class="img-circle" width="54px" height="54px" src="${myfri.user.userImgsrc}" width="100%" alt="">
                                </a>
                                <p style="margin: 3">${myfri.user.userName}</p>
                            </div>
                            </c:forEach>
                            <!-- <div class="col-md-4" style="text-align: center;overflow: hidden;">
                                <a href="">
                                    <img src="img/avatar/a2.jpg" width="100%" alt="">
                                </a>
                                <p>yifan</p>
                            </div>
                            -->
                        </div>

                        <div style="text-align: center">
                            <a href="#" class="btn btn-success btn-sm" style="border-radius: 0"> 查看更多 + </a>
                        </div>

                    </div>


                </div>
            </div>
        </div>

    </div>


    <!--footer-->
 <jsp:include page="../top/footer.jsp"/>

    <script>
       function showdelete(id){

           document.getElementById("deletethisbutton"+id).style.display="";
       }
        function hiddendelete(id){
           document.getElementById("deletethisbutton"+id).style.display="none";
        }
        function deleteArticle(id){
            var r=confirm("您确定要删除此文章？");
            if (r==true)
            {
                document.getElementById("deleteHidden"+id).style.display="none";
            }
            else
            {

            }

           /* $.ajax( {
                url:'#',// 跳转到 action
                data:{
                    'id':id
                },
                type:'post',
                cache:false,
                dataType:'json',
                success:function(data) {
                    if(data.code==10000){
                        alert("Success！");

                        window.location.reload();
                    }else if(data.code==10001){
                        alert("A database error has occurred,Please refresh and try again,If multiple retry is not valid,Please contact administrators");

                    }else{
                        alert("未知错误！");
                    }

                },
                error : function() {

                    alert("通信失败！请联系管理员。");


                }
            });*/
        }
    </script>

<%-- 
    <script>
        function changeNum(){
            document.getElementById("add").innerHTML="已关注";
            document.getElementById("add").style.backgroundColor="#e35b5a";
            document.getElementById("number").innerHTML="13";

        }


    </script>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script> --%>
    </body>
    <%-- <script src="${pageContext.request.contextPath}/js/TweenLite.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/EasePack.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/demo-1.js"></script> --%>

</html>
