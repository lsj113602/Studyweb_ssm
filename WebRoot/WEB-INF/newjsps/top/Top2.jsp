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
    
    <title>My JSP 'Top2.jsp' starting page</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="Shortcut Icon" href="${pageContext.request.contextPath}/img/favicon.ico" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/acss.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/font/index/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/evenFlow.css">

  </head>
  
  <body>
      <div id="large-header" style="background-color: rgba(117,146,153,1); ">
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
                        <div style="background-image: url(${pageContext.request.contextPath}/${sessionScope.sessionUser.userImgsrc});background-position: center;background-size: cover;background-repeat: no-repeat;height: 120px;width: 120px"></div>
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
                        <a href="<c:url value='course/FindCourseByname?coursename=java'/>" class="btn btn-success" style="border-radius: 0">继续学习 ></a>

                    </div>
                </div>
            </div>

            <div style="height: 30px"></div>
        </div>

    </div>


</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>


      <!-- Custom Js -->
    <script src="${pageContext.request.contextPath}/assets/js/custom-scripts.js"></script>
     <!-- jQuery Js -->
    <script src="${pageContext.request.contextPath}/table/assets/js/jquery-1.10.2.js"></script>
      <!-- Bootstrap Js -->
    <script src="${pageContext.request.contextPath}/table/assets/js/bootstrap.min.js"></script>
    <!-- Metis Menu Js -->
    <script src="${pageContext.request.contextPath}/table/assets/js/jquery.metisMenu.js"></script>
     <!-- DATA TABLE SCRIPTS -->
    <script src="${pageContext.request.contextPath}/table/assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="${pageContext.request.contextPath}/table/assets/js/dataTables/dataTables.bootstrap.js"></script>


</body>
<script src="${pageContext.request.contextPath}/js/TweenLite.min.js"></script>
<script src="${pageContext.request.contextPath}/js/EasePack.min.js"></script>
<script src="${pageContext.request.contextPath}/js/demo-1.js"></script>
</html>
