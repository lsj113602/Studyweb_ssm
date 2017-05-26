<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>视频主页</title>
    
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
    <title>走进JavaWeb的世界|BEGEEK</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/reset.css">
    <link rel="Shortcut Icon" href="${pageContext.request.contextPath}/img/favicon.ico" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/acss.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/font/index/iconfont.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/evenFlow.css">
    <link href="${pageContext.request.contextPath}/css/video-js.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/videocss.css">
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
     <script src="${pageContext.request.contextPath}/js/quest.js"></script>
  </head>
  
  <body ><!-- onunload="endvideo();" -->
   
 <div style="float:left; width: 100%; text-align: left;">
	<hr/>
	<br/>
	<%@include file="../top/Top.jsp" %>
</div>
    <div style="position: fixed;right:0;top:40%;z-index: 100">

            <ul class="list-group">
               <%--  <a id="kachanav" href="<c:url value='/CourseServlet?method=FindCourseByname&cname=java'/>" onclick="clickfunc()"  style="outline:none;text-decoration: none" > --%>
				<a id="kachanav" href="common/javacoursetree" onclick="clickfunc()"  style="outline:none;text-decoration: none" >
                    <li style=";border-radius: 0;border-left: 0;border-right: 0;border-top: 0;background-color: #444;color: #fff;border-color: #000;border-width: 2px;outline:none;" class="list-group-item">< 路线</li>

                </a>
                <a href="javascript:void (0)" onclick="alert('作者未提供文档！!');" style="outline:none;text-decoration: none">
                    <li  style="border-radius: 0;border-left: 0;border-right: 0;border-top: 0;;background-color: #444;color: #fff;border-color: #000;border-width: 2px;" class="list-group-item">< 文档</li>

                </a>
                <a href="" data-toggle="modal" data-target="#myModal" style="outline:none;text-decoration: none">
                    <li style="border-radius: 0;;border-left: 0;border-right: 0;border-top: 0;background-color: #444;color: #fff;border-color: #000;border-width: 2px;outline:none;" class="list-group-item">< 问答</li>

                </a>
                <a  href="<c:url value='exam/GotoExam?ccname=${vid.xueke }'/>" target="_blank" onclick=""  style="outline:none;text-decoration: none">
                    <li style="border-radius: 0;;border-left: 0;border-right: 0;border-top: 0;border-bottom: 0;background-color: #444;color: #fff;border-color: #000;outline:none;;border-width: 2px"  class="list-group-item">< 试题</li>

                </a>
            </ul>

    </div>
    <div   style="margin-top: -5px;background-image: url();background-position: center center;background-size:cover">

        <div style="background-color:#000 ;">
			<div style="height:15px"></div>
            <div class="container" style="color: #fff;margin-top: 5px;margin-bottom: 5px">
                <h4>${vid.videoname }</h4>
            </div>
            <div id="kachaid2"></div>
            <div class="container">
                        <video id="my-video" class="video-js vjs-default-skin" controls preload="none" width="100%" height="auto"
                               data-setup="{}" poster="">
                            <source src="${vid.videosrc}" type='video/mp4'>

                            <!--<source src="http://7xru12.media1.z0.glb.clouddn.com/ad720p.mp4" type='video/mp4'>-->
                        </video>
                        <!--<video style="" id="adv_video" src="http://7xpxxt.com1.z0.glb.clouddn.com/e015162e0jt.p701.1.mp4" width="100%" preload="none" controls autoplay>
                            你的浏览器不支持该视频格式
                        </video>
                        <video style="display: " id="wyx_video" src="{{ video.url }}" width=100%
                               controls preload="none">
                            你的浏览器不支持该视频格式
                        </video> -->

                        <div style="background-color: #FFF;height: 40px;margin-bottom: 20px;padding: 8px">
                            <div style="position: relative;">
                                <!-- JiaThis Button BEGIN -->
                                <div class="jiathis_style" style="margin-top: 4px">
                                    <span class="jiathis_txt">分享到：</span>
                                    <a class="jiathis_button_icons_1"></a>
                                    <a class="jiathis_button_icons_2"></a>
                                    <a class="jiathis_button_icons_3"></a>
                                    <a class="jiathis_button_icons_4"></a>
                                    <a href="http://www.jiathis.com/share" class="jiathis jiathis_txt jtico jtico_jiathis" target="_blank"></a>
                                </div>
                                <script type="text/javascript" src="http://v3.jiathis.com/code/jia.js" charset="utf-8"></script>
                                <!-- JiaThis Button END -->
                                <div style="position: absolute; right: 0px; top: 0px;margin-top: -2px">播放次数:${vid.stadynum }
                                </div>
                            </div>
                        </div>
                <!-- <button class="btn btn-default" onclick="js();">跳过广告</button>-->
            </div>

        </div>

        <div class="container">
            <div style="margin-top: 30px">
                <div style="position: relative;">
                    <h3>${vid.videoname }
                        <small>${vid.zhishidianid }</small>
                    </h3>

                </div>

                <h5>作者:${vid.videoupwriter }</h5>

                <p>简介:
                    ${vid.videotext }
                </p>
            </div>


            <div style="margin-top: 50px;">
                <h3>作者相关</h3>
            </div>

            <div class="row">
            <c:forEach items="${requestScope.vids}" var="vidlist" >
                <div class="col-md-3 col-xs-6">
                    <div style="background-image: url(img/javaproject/web1.png);background-size: cover;background-position: center">
                        <a href="<c:url value='video/playvideo2?vidid=${vidlist.refrenceid}'/>"><img width="100%" src="${vidlist.videoimgsrc}" alt=""></a>
                    </div>
                    <div style="text-align: center;padding: 8px">
                        ${vidlist.videoname}
                    </div>
                </div>
                </c:forEach>
             
            </div>

            <div style="margin-top: 50px;">
                <h3>学习该视频的用户还学习了</h3>
            </div>

            <div class="row">
            <c:forEach items="${requestScope.vidkname}" var="list" >
                <div class="col-md-3 col-xs-6">
                    <div style="background-image: url(img/javaproject/web1.png);background-size: cover;background-position: center">
                        <a href="<c:url value='video/playvideo2?vidid=${vidlist.refrenceid}'/>">
                        <img width="100%" src="${list.videoimgsrc}" alt=""></a>
                    </div>
                    <div style="text-align: center;padding: 8px">
                        ${list.videoname}
                    </div>
                </div>
                </c:forEach>
            </div>

            <div class="row" style="margin-top: 50px">

                <div class="col-md-9">
                    <h3>问答</h3>
                    <form>
                    <textarea id="comment" placeholder="请输入10个字以上的评论" class="form-control" rows="5" style="resize: none;" ></textarea>
                    <input id="vid" type="hidden" name="vid" value="${vid.refrenceid }"/>
                    </form>
                    <p class="text-right" style="margin-top: 10px;"><button class="btn btn-success" onclick="commentSubmit()"  type="button">提交评论</button></p>
                    <hr style="height:1px;border:none;border-top:1px dashed #44B549;" />

                      <c:set var="index" value="0" /> 
              <c:forEach items="${requestScope.vid.courseforums}" var="forum" >
              <div> <h4>作者：${forum.user.userName}</h4>
                          
                        <h2>${forum.cfContext}</h2>  
                        <table width="100%"><tr width="100%"><td align="left" width="50%"> 时间：${forum.cfTime}</td><td width="50%" align="right">支持数：<span id="number${index}">${forum.cfCount}</span>&nbsp;&nbsp;&nbsp;</td></tr></table>                                                           		                    							
		               <p class="text-right" style="margin-top: 10px;">  
					<c:choose>
						<c:when test="${forum.cfStat==1 }">
							 <button class="btn btn-success" onclick="Addcount('${forum.refrenceid}','${index}')"  type="button" id="count${index}">已赞√</button>
						</c:when>
						<c:otherwise>
							<button class="btn btn-success" onclick="Addcount('${forum.refrenceid}','${index}')"  type="button" id="count${index}">赞一个</button>
						</c:otherwise>
					</c:choose>
					</p>
		                  
                      </div>
                       <hr style="height:1px;border:none;border-top:1px dashed #44B549;" />
                       <c:set var="index" value="${index+1}" />
                </c:forEach>

                </div>

                <div class="col-md-3">


                    <h4>热门推荐</h4>

                    <c:forEach items="${requestScope.vidhot}" var="vidhot" >
                        <div class="portfolio-item" style="margin-bottom: 20px;">
                            <div class="portfolio-item-image image-overlay"><a class="titan-lb" data-titan-group="gallery" href="#">
                            <a href="<c:url value='video/playvideo2?vidid=${vidhot.refrenceid}'/>">
                            <img width="100%" src="${vidhot.videoimgsrc}" alt=""></a>
                            <span class="overlay-icon item-movie" style="opacity: 0;"></span> </a></div>
                            <div class="portfolio-item-content">
                                <a  href="javascript:void(0)" style="color: #000;text-decoration:none;">
                                    <h4 class="ptitle">${vidhot.videoname}（播放：${vidhot.stadynum}次）</h4>
                                    <p>作者：${vidhot.videoupwriter}</p>
                                </a>

                            </div>

                        </div>
                        </c:forEach>


                </div>

            </div>
        </div>
    </div>
    <!--footer-->
    <div style="height: 100px"></div>
    <footer>
        <div style="height: 100px;width: 100%;background-color:  #4d6071;text-align: center;padding: 15px">
            <p style="color: white">联系我们&nbsp;|&nbsp;网站首页&nbsp;|&nbsp;免责声明&nbsp;|&nbsp;关于我们</p>
            <p style="color: white">Copyright © 2016 &nbsp; <a style="color: white" href="">极客联盟</a> / 程序设计大赛创新实验室.</p>
        </div>


    </footer>
    <script>
        function clickfunc(){
            $('html, body').animate({
                scrollTop: $("#kachaid2").offset().top
            }, 1500);
        }
        
        
    </script>

    <script>
        function changeNum(){
            document.getElementById("add").innerHTML="已关注";
            document.getElementById("add").style.backgroundColor="#e35b5a";
            document.getElementById("number").innerHTML="13";
        }


    </script>

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
