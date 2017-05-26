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
                <li style="height: 30px" role="presentation"><a href="<c:url value='user/GotoMycenter'/>"><i class="glyphicon glyphicon-home"></i> 个人主页</a></li>
                    <hr>
                    <li style="height: 30px;" role="presentation" class="active"><a href="common/gotouserinfo"><i class="glyphicon glyphicon-user"></i> 个人设置</a></li>
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
        <div class="col-md-10">
            <div>

                <!-- Nav tabs -->
                <ul class="nav nav-tabs" role="tablist">
                    <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">所有信息</a></li>
                </ul>

                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane active" id="home">
                        <div style="height:20px;"></div>
                        <div class="row">
                            <div class="col-md-2"></div>
                            <div class="col-md-8">
                                <form class="form-inline" action="<c:url value='user/UploadUserImg'/>" method="POST" enctype="multipart/form-data">
                                    <h3 style="font-weight: 700">头像*</h3>
                                    <div class="row">
                                        <div class="col-md-3">
                                            <div id="image1" style="background-image: url(${sessionScope.sessionUser.userImgsrc});background-position: center;background-size: cover;background-repeat: no-repeat;height: 120px;width: 120px"></div>
                                        </div>
                                        <div class="col-md-3" style="line-height: 120px"><button id="change" style="border-radius: 0" type="button" onclick="changeAvater();" class="btn btn-default ">换一换 <i class="glyphicon glyphicon-refresh"></i></button></div>
                                        <input class="hidden" type="file" id="realChangeButton" name="userImg">
                                    </div>
                                    <div style="height: 20px"></div>

                                    <label >昵称*</label>
                                    <input style="width: 100%;border-radius: 0" type="text" class="form-control" id="username" name="username" value="${sessionScope.sessionUser.userTruename }">

                                    <div style="height: 20px"></div>

                                    <label >联系方式*</label>
                                    <input style="width: 100%;border-radius: 0" type="text" class="form-control" id="userphone" name="userphone" value="${sessionScope.sessionUser.userTel }">
                                    <div style="height: 20px"></div>

                                    <label >电子邮箱*</label>
                                    <input style="width: 100%;border-radius: 0" type="text" class="form-control" id="useremail" name="useremail" value="${sessionScope.sessionUser.userEmail }">
                                    <div style="height: 40px"></div>
                                    <div style="text-align: center">
                                        <button type="submit" style="border-radius: 0" class="btn btn-info">提交 <i class="glyphicon glyphicon-open"></i></button>
                                    </div>
                                </form>
                            </div>
                            <div class="col-md-2"></div>
                        </div>


                    </div>


                </div>

            </div>
            <div>

            </div>
        </div>
    </div>

</div>




<!--footer-->
 <jsp:include page="../top/footer.jsp"/>

<script>
    function changed(){
        var realChangeButton = document.getElementById("realChangeButton").value;
        if(realChangeButton!=""){
            $("#change").html("已选择 <i class='glyphicon glyphicon-ok'></i>");
            document.getElementById("image1").style.backgroundImage="url(img/timg.jpg)";
        }



    }
    function changeAvater(){

        $("#realChangeButton").click();


    }
    var t=setInterval("changed();",1000);
</script>


</body>
