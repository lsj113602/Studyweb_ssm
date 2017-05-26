<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
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
    <title>上传资源|BEGEEK</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="Shortcut Icon" href="img/favicon.ico" />
    <link rel="stylesheet" href="css/acss.css">
    <link rel="stylesheet" href="font/index/iconfont.css">
    <link rel="stylesheet" href="css/evenFlow.css">


  </head>
  
  <body style="background-color: #f8f8f8">
   <div style="float:left; width: 100%; text-align: left;">
	<hr/>
	<br/>
	<%@include file="../top/Top.jsp" %>
	</div>
	<div class="container">
    <div style="height: 20px"></div>
    <div>
        <!-- Nav tabs -->
        

        <hr>
        <div class="row">
            <div class="col-md-2"></div>

            <div class="col-md-8">
                <div style="height: 15px"></div>
               <%--  <form action="<c:url value='/Servlet?method=UploadVideo'/>" enctype="multipart/form-data"> --%>
				<form action="<c:url value='/resources/UploadResources'/>" method="POST" enctype="multipart/form-data">
                   
                    <h2>资源上传</h2>
                    <div style="height: 5px"></div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="restitle" placeholder="资源标题">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="reskonwge" placeholder="包含知识点">
                    </div>

                    <div class="form-group">
                        <input type="text" class="form-control" name="restext" placeholder="简介">
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label >类别</label>
                                <select class="form-control" name="rescategory">
                                    <option value ="文档">文档</option>
                                    <option value ="代码">代码</option>
                                    <option value="工具">工具</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group">
                                <label >所属课程</label>
                                <select class="form-control" name="rescourse">
                                <c:forEach items="${requestScope.list}" var="listcou" >
                                	<option value ="${listcou.coursename}">${listcou.coursename}</option>
                                </c:forEach>

                                </select>
                            </div>
                        </div>
                    </div>



                    <div class="form-group">
                        <label>选择资源文件</label>
                        <input type="file" name="upload">
                    </div>

                    <div class="form-group">
                        <label>选择资源封面(不选则为默认图标)</label>
                        <input type="file" name="uploadimg">
                    </div>

                    <div style="text-align: right">
                        <div style="height: 50px"></div>
                        <button type="submit" class="btn btn-success"> 上传 <span class="glyphicon glyphicon-open"></span> </button>
                        <a href="<c:url value='/course/FindCourseByname?coursename=${requestScope.cname}'/>">
                        <button type="button" class="btn btn-default">&nbsp;取消&nbsp; </button></a>
                        
                    </div>

                </form>
                

            </div>
            <div class="col-md-2"></div>
        </div>



    </div>

</div>






<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>
  </body>
</html>
