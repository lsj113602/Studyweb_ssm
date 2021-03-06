<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<html>
  <head>
    <base href="<%=basePath%>">

	<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <meta name="keywords" content="甘特图 横道图 gantt webgantt" />
    <meta name="description" content="易度甘特图是当前WEB开发中领先的甘特图解决方案。它是使用Javascript开发的，实现了与微软 Project 甘特图一致的界面和功能，可广泛应用于 项目管理系统、 ERP 系统、MES系统或其它的任务资源分配相关领域。" />
    <title>标准甘特图 | 在线示例 | 产品 | 首页 - 易度甘特图</title>
    <style type="text/css">
    .rowCls1
    {
    	background:red;
    }
    </style>
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <script src="footer.js" type="text/javascript"></script>
  </body>
</html>

<!--edo css-->
<link href="../scripts/edo/res/css/edo-all.css" rel="stylesheet" type="text/css" />
<link href="../scripts/edo/res/product/project/css/project.css" rel="stylesheet" type="text/css" />
<!--edo js-->
<script src="../scripts/edo/edo.js" type="text/javascript"></script>

<script src="../data/ganttdata.js" type="text/javascript"></script>
<script src="../scripts/thirdlib/excanvas/excanvas.js" type="text/javascript"></script>

<script src="js/EdoGantt.js" type="text/javascript"></script>
<script src="js/GanttMenu.js" type="text/javascript"></script>
<script src="js/GanttSchedule.js" type="text/javascript"></script>
<script type="text/javascript">

var dataGantt = new Edo.data.DataGantt(ganttData);
Edo.build({
    id: 'edogantt',
    type: 'edogantt',
    width: 700,
    height: 350,    
    data: dataGantt,    
    render: document.getElementById('view')
});

//增加右键菜单插件
edogantt.addPlugin(new GanttMenu());
//增加数据处理插件
edogantt.addPlugin(new GanttSchedule());

//使甘特图可拖拽调节大小
Edo.managers.ResizeManager.reg({
    target: edogantt
});

var tree = edogantt.tree, gantt = edogantt.gantt;

function add(){
    var task = gantt.getSelected();
    if(task){
        var p = gantt.data.findParent(task);        
        var index = p.children.indexOf(task);
        gantt.data.insert(index, {
            UID: new Date().getTime(),
            Name: '',
            Start: new Date(2009, 0, 28),
            Finish: new Date(2009, 0, 29),
            PercentComplete: 0
        }, p);
    }else{
        alert("请先选择一个任务");
    }
}
function del(){
    var task = gantt.getSelected();
    if(task){
        if(confirm("确定删除任务:"+task.Name+"　？")){
            gantt.data.remove(task);
        }
    }else{
        alert("请先选择一个任务");
    }
}
function edit(){
    var task = gantt.getSelected();
alert(task.UID);
alert(task.Name);
alert(task.Start);
alert(task.Finish);
alert(task.PercentComplete);
    if(task){
        //任意修改任务对象属性
        task.Name = new Date(); 
        
        gantt.data.endChange();
    }else{
        alert("请先选择一个任务");
    }
}
function upgrade(){
    var task = gantt.getSelected();
    if(task){
        gantt.data.upgrade(task);
        gantt.data.endChange();
    }else{
        alert("请先选择一个任务");
    }
}
function downgrade(){
    var task = gantt.getSelected();
    if(task){
        gantt.data.downgrade(task);
        gantt.data.endChange();
    }else{
        alert("请先选择一个任务");
    }
}
function move(){    
    var task = gantt.getSelected();
    if(task){
var task = gantt.getSelected();
var movetask = gantt.data.getAt(0);            
//移动任务:add, append, preend三种方式
gantt.data.move(movetask, task, 'add');
    }else{
        alert("请先选择一个任务");
    }
}
</script>

