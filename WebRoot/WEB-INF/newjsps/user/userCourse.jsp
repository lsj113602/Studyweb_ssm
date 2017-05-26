<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
   <title>个人中心|BEGEEK</title>
 
  </head>
  
  <body>
    
   <div style="float:left; width: 100%; text-align: left;">
	<hr/>
	<br/>
	<%@include file="../top/Top.jsp" %>
</div>
     <jsp:include page="../top/Top2.jsp"/>
<div class="container">
    <div style="height: 20px"></div>
    <div class="row">
        <div class="col-md-2" style="text-align: center">
            <ul class="nav nav-pills nav-stacked">
                <li style="height: 30px" role="presentation" ><a href="<c:url value='user/GotoMycenter'/>"><i class="glyphicon glyphicon-home"></i> 个人主页</a></li>
                    <hr>
                    <li style="height: 30px;" role="presentation"><a href="common/gotouserinfo"><i class="glyphicon glyphicon-user"></i> 个人设置</a></li>
                    <hr>
                    <li style="height: 30px" role="presentation" class="active"><a href="common/gotouserCourse"><i class="glyphicon glyphicon-star"></i> 我的课程</a></li>
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
        <div class="col-md-10">
            <div>

                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">所有课程</a></li>
                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">最近学习</a></li>
                    <li role="presentation"><a href="#messages" aria-controls="messages" role="tab" data-toggle="tab">关注课程</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="home">
                        <div style="height:20px;"></div>
                        <div class="row">
                            <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                <img width="100%" src="img/java.jpg" alt="">
                                <div style="text-align: center;padding: 8px">
                                    java开发
                                </div>
                            </div>
                            <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                <img width="100%" src="img/kecheng/mysql.jpg" alt="">
                                <div style="text-align: center;padding: 8px">
                                    Mysql
                                </div>
                            </div>
                            <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                <img width="100%" src="img/kecheng/yun.jpg" alt="">
                                <div style="text-align: center;padding: 8px">
                                   云计算
                                </div>
                            </div>


                        </div>

                   <!--      分页
                        <div style="text-align: center">
                            <nav>
                                <ul class="pagination">
                                    <li class=""><a href="#" aria-label="Previous"><span aria-hidden="true">&laquo;</span></a></li>
                                    <li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
                                    <li class=""><a href="#">2 <span class="sr-only">(current)</span></a></li>
                                    <li class=""><a href="#">3 <span class="sr-only">(current)</span></a></li>
                                    <li class="disabled"><a href="#" aria-label="Next"><span aria-hidden="true">&raquo;</span></a></li>
                                </ul>
                            </nav>
                        </div> -->

                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile">
                        <div style="height:20px;"></div>
                        <div class="row">
                            <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                <img width="100%" src="img/java.jpg" alt="">
                                <div style="text-align: center;padding: 8px">
                                    <h3>java开发</h3>
                                    <p>当前进度：18%</p>
                                </div>
                            </div>
                         
                        </div>

                    </div>
                    <div role="tabpanel" class="tab-pane" id="messages">
                        <div style="height: 20px"></div>
                        <div class="row">
                            <div class="col-md-3 col-xs-6 evenflow_scale" style="margin-bottom: 30px">
                                <img width="100%" src="img/kecheng/yun.jpg" alt="">
                                <div style="text-align: center;padding: 8px">
                                    <h3 style="margin: 0">云计算</h3>
                                    <p>关注人数：12</p>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </div>

</div>


<!--footer-->
 <jsp:include page="../top/footer.jsp"/>

</body>

</html>
