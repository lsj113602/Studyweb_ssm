function zhichi(qqaid,mmark,ttag){
	 $.ajax({
		 
    		async:false,
    		cache:false,
    		url:"quesanswer/AddUserAns",
    		data:{
    		//method:"AddQueAjax",
    			ttag:ttag,
    			qqaid:qqaid,
    			mmark:mmark
    		},
    		type:"POST",
    		dataType:"json",
    		success:function(result) {
    		  if(result=="0"){
    			  alert("你没有登陆，请先登录！");
            }else{
            	var val=result[0];
            	var val1=result[1];
            	var val2=result[2];
            	if(val=="1"){
            		document.getElementById(qqaid+"1").innerHTML=val1;	
            	}else if(val=="2"){
            		document.getElementById(qqaid+"0").innerHTML=val2;
            	}else{
            		document.getElementById(qqaid+"1").innerHTML=val1;	
            		document.getElementById(qqaid+"0").innerHTML=val2;
            	}
            	
            }

    		}
	 });
	 }
  



function addquest(){
	  var quetitle = document.getElementById("quetitle");
	  var quetext =document.getElementById("quetext");
	  var name =document.getElementById("cname");
	  var title = quetitle.value;
	  var text = quetext.value;
	  var cname = name.value;
	 $.ajax({
		 
    		async:false,
    		cache:false,
    		url:"quest/AddQueAjax",
    		data:{
    		//method:"AddQueAjax",
    		ttitle:title,
    		ttext:text,
    		ccname:cname
    		},
    		type:"POST",
    		dataType:"json",
    		success:function(result) {
    		  if(result=="0"){
                    alert("标题不能为空！");
            }else if(result=="1"){
            		alert("你没有登陆，请先登录！");
            		window.location.reload();
            }else{
            alert("发布成功");
            window.location.reload();
            }
    		 	
    		
    	     ///////////////////////
    		}
	 });
	 }
 
 
 
 function commentSubmit(){
	 var com = document.getElementById("comment");
	 var id = document.getElementById("vid");
	 var comment = com.value;
	 var vid=id.value;
	 $.ajax({
	
    		async:false,
    		cache:false,
    		url:"courseforum/AjaxAddForum",
    		data:{
    		//method:"AjaxAddForum",
    		ccomment:comment,
    		vvid:vid
    		},
    		type:"POST",
    		dataType:"json",
    		success:function(result) {
    			if(result=="1"){
    				alert("请先登录");
    			}else if(result=="0"){
                    alert("发布失败!！");
            }else{
            	alert("发表成功");
            window.location.reload();
            }
    		 	
    		
    	     ///////////////////////
    		}
	 });
	 }
 
 function addquestan(){
	 alert("11");
 }
 function addquestans(quuid){
	 var ans = document.getElementById(quuid);
	 var answer = ans.value;
	 alert(answer);
	 $.ajax({
	
    		async:false,
    		cache:false,
    		url:"quesanswer/AddAnsAjax",
    		data:{
    		//method:"AddAnsAjax",
    		aanswer:answer,
    		qquuid:quuid 
    		},
    		type:"POST",
    		dataType:"json",
    		success:function(result) {
    		  if(result=="1"){
                    alert("你还没有登陆，请先登录！");
            }else if(result=="0"){
            	alert("答案不能为空！");
            }else{
            	alert("发表成功");
            window.location.reload();
            }
    		}
	 });
	 }
	  
	 
	  function addanswer(){
	 var ans = document.getElementById("answer");
	 var qid = document.getElementById("quuid");
	 var quuid=qid.value;
	 var answer = ans.value;
	 $.ajax({
	
    		async:false,
    		cache:false,
    		url:"quesanswer/AddAnsAjax",
    		data:{
    		//method:"AddAnsAjax",
    		aanswer:answer,
    		qquuid:quuid 
    		},
    		type:"POST",
    		dataType:"json",
    		success:function(result) {
    		  if(result=="1"){
                    alert("你还没有登陆，请先登录！");
            }else if(result=="0"){
            	alert("答案不能为空！");
            }else{
            	alert("发表成功");
            window.location.reload();
            }
    		 	
    		
    	     ///////////////////////
    		}
	 });
	 }
	  
	  
	  
	  function addanswer11(){

			 var ans = document.getElementById("answer");
			 var qid = document.getElementById("quuid");
			 var quuid=qid.value;
			 var answer = ans.value;
			 $.ajax({
			
		    		async:false,
		    		cache:false,
		    		url:"/Stadyweb/QuesAnswerServlet",
		    		data:{
		    		method:"AddAnsAjax1",
		    		answer:answer,
		    		quuid:quuid
		 
		    		},
		    		type:"POST",
		    		dataType:"json",
		    		success:function(result) {
		    		  if(result=="1"){
		                    alert("你还没有登陆，请先登录！");
		            }else if(result=="0"){
		            	alert("答案不能为空！");
		            }else{
		            	alert("发表成功");
		            window.location.reload();
		            }
		    		 	
		    		
		    	     ///////////////////////
		    		}
			 });
			 }

	    function changeNum(){
	    	var id = document.getElementById("couid");
	    	 
	    	var couid = id.value;	
	    	 $.ajax({
	    		 
	     		async:false,
	     		cache:false,
	     		url:"course/AjaxAddCourse",
	     		data:{
	     		//method:"AjaxAddCourse",
	     			refrenceid:couid
	  
	     		},
	     		type:"POST",
	     		dataType:"json",
	     		success:function(result) {
	     		  var val=result[1];
	     		  if(result[0]=="1"){
	                     alert("你还没有登陆，请先登录！");
	             }else if(result[0]=="200"){
	            	 document.getElementById("add").innerHTML="已关注√";
	     	      //  document.getElementById("add").style.backgroundColor=" #00CACA";
	     	        document.getElementById("number").innerHTML=val;
	             }else{
	            	 document.getElementById("add").innerHTML="关注+";
	     	        //document.getElementById("add").style.backgroundColor="#00CACA";
	     	        document.getElementById("number").innerHTML=val;
	            // window.location.reload();
	             }
	     		 	
	     		
	     	     ///////////////////////
	     		}
	 	 });
	        

	    }
	    
	    
	    function Addcount(cfid,num){
	    	var id = cfid;
	    	 $.ajax({	    		 
	     		async:false,
	     		cache:false,
	     		url:"courseforum/AjaxAddForcount",
	     		data:{
	     		//method:"AjaxAddForcount",
	     		iid:id
	  
	     		},
	     		type:"POST",
	     		dataType:"json",
	     		success:function(result) {
	     			var val=result[1];
	     		  if(result[0]=="1"){
	                     alert("你还没有登陆，请先登录！");
	             }else if(result[0]=="200"){
	            	 document.getElementById("count"+num).innerHTML="已赞√";
	     	      //  document.getElementById("add").style.backgroundColor=" #00CACA";
	     	        document.getElementById("number"+num).innerHTML=val;
	             }else{
	            	 document.getElementById("count"+num).innerHTML="赞一个";
	     	        //document.getElementById("add").style.backgroundColor="#00CACA";
	     	        document.getElementById("number"+num).innerHTML=val;
	            // window.location.reload();
	             }
	     		 	
	     		
	     	     ///////////////////////
	     		}
	 	 });
	        

	    }
	    
	    
	    function Assignment(cname,num,index){
	    	var arr = [];
	    	var arrsubid = [];
	    	for(var j=0; j<index; j++)  
		      {  
	    		arrsubid[j]=document.getElementById("subjectID"+j).value;
	    		for (var i = 0; i < document.getElementsByName("subjectAnswer"+j).length; i++){
		    		if(document.getElementsByName("subjectAnswer"+j)[i].checked)
		    	   {
		    			arr[j]= document.getElementsByName("subjectAnswer"+j)[i].value;
		    			}
		    		}

		    }
	    	var arrs=arr.join(",");
	    	var subids=arrsubid.join(",");		    	
	    	 $.ajax({	 
	    		//traditional: true,
	     		async:false,
	     		cache:false,
	     		url:"exam/AjaxSubmitexam",
	     		data:{
	     		//method:"AjaxSubmitexam",
	     		aarrs:arrs,
	     		ssubids:subids,
	     		ccname:cname,
	     		nnum:num  
	     		},
	     		type:"POST",
	     		dataType:"json",
	     		success:function(result) {
	     		
	     		  if(result=="0"){
	                     alert("你还没有登陆，请先登录！");
	                     window.location.reload();
	             }else{
	            	document.getElementById("result").innerHTML=result;
	            // window.location.reload();
	             }
	     		 	
	     		
	     	     ///////////////////////
	     		}
	 	 });
	        

	    }

