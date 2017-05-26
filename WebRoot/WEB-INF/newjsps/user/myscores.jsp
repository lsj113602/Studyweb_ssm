<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
   <title>个人中心|BEGEEK</title>

  </head>
  
  <body>
   <%--  <%@include file="../top/Top.jsp" %> --%>
     <jsp:include page="../top/Top.jsp"/>
     <jsp:include page="../top/Top2.jsp"/>

<div class="container">
    <div style="height: 20px"></div>
    <div class="row">
        <div class="col-md-2" style="text-align: center">
            <ul class="nav nav-pills nav-stacked">
                <li style="height: 30px" role="presentation"><a href="<c:url value='user/GotoMycenter'/>"><i class="glyphicon glyphicon-home"></i> 个人主页</a></li>
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
                    <li style="height: 30px" role="presentation" class="active"><a href="common/gotomyscores"><i class="glyphicon glyphicon-pushpin"></i> 考试记录</a></li>
               </ul>
        </div>
        <div class="col-md-10">
            <div>

                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">考试记录</a></li>
                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">错题集</a></li>
                    
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="home">
                       
                          <%--  <%@include file="/newjsps/user/gantt.jsp" %>  --%>
                          <%@include file="../table/table.jsp" %>        

                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile">
                       
                        <div style="height: 20px"></div>


                    </div>

                </div>

            </div>
        </div>
    </div>

</div>


<!--footer-->
<!-- <div style="height: 100px"></div>
<footer>
    <div style="height: 100px;width: 100%;background-color:  rgba(77,96,113,1);text-align: center;padding: 15px">
        <p style="color: white">联系我们&nbsp;|&nbsp;网站首页&nbsp;|&nbsp;免责声明&nbsp;|&nbsp;关于我们</p>
        <p style="color: white">Copyright © 2016 &nbsp; <a style="color: white" href="">极客联盟</a> / 程序设计大赛创新实验室.</p>
    </div>


</footer> -->
 <jsp:include page="../top/footer.jsp"/>
</body>

</html>
