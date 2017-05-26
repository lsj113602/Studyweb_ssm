<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
   <title>个人中心|BEGEEK</title>

  </head>
  
  <body>
    
 <jsp:include page="../top/Top.jsp"/>
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
                    <li style="height: 30px" role="presentation"><a href="common/gotouserCourse"><i class="glyphicon glyphicon-star"></i> 我的课程</a></li>
                    <hr>
                    <!-- <li style="height: 30px" role="presentation"><a href="#"><i class="glyphicon glyphicon-book"></i> 我的文章</a></li> -->
                    <!-- <hr> -->
                    <li style="height: 30px" role="presentation" class="active"><a href="<c:url value='plan/FindplanByall'/>"><i class="glyphicon glyphicon-flag"></i> 我的计划</a></li>
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
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">所有计划</a></li>
                    <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">创建计划</a></li>
                    
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="home">
                       
                            <%@include file="../user/gantt.jsp" %>                 

                    </div>
                    <div role="tabpanel" class="tab-pane" id="profile">
                       
                        <div style="height: 20px"></div>
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-8">
                                <form class="form-inline" action="<c:url value='/plan/AddPlan1'/>" method="POST">

                                    <div style="height: 20px"></div>

                                    <label >计划内容*</label>
                                    <input style="width: 100%;border-radius: 0" type="text" class="form-control" id="plantext" name="plantext" value="" placeholder="请填写计划内容">

                                    <div style="height: 20px"></div>

                                    <label >所属计划*</label>

                                    <select name="blongid" id="blongid" style="width: 100%" class="form-control">

                                        <option value=0>请选择计划</option>
                                        <c:forEach items="${requestScope.list}" var="pplan" >
                                        <option value="${pplan.refrenceid}">${pplan.plantext}</option>
                                        </c:forEach>                
                                    </select>
                                    <div style="height: 20px"></div>

                                    <label >开始时间*</label>
                                    <input style="width: 100%;border-radius: 0" type="text" class="form-control" id="starttime" name="starttime" value="" placeholder="例如:1999-09-09">
                                    <div style="height: 20px"></div>
                                    <label >结束时间*</label>
                                    <input style="width: 100%;border-radius: 0" type="text" class="form-control" id="endtime" name="endtime" value=""  placeholder="例如:1999-09-09">
                                    <div style="height: 20px"></div>
                                    <div style="height: 40px"></div>
                                    <div style="text-align: center">
                                        <button type="submit" style="border-radius: 0" class="btn btn-info">创建 <i class="glyphicon glyphicon-open"></i></button>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-2"></div>
                        </div>

                    </div>

                </div>

            </div>
        </div>
    </div>

</div>


<!--footer-->
<div style="height: 100px"></div>
 <jsp:include page="../top/footer.jsp"/>

</body>

</html>
