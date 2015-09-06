<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.hober {
	color:red;
	background-color:gray;
}
</style>

<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript">
	//根据ID
	/*$(function(){
		 $("#hello").click(
			function(){
				alert("hello world !");
				$("#hello").css("color","red");
			}		
		)
		 */
		 //根据元素来获取
	/* 	$("a").click(function(){
			alert($(this).text());
		})
	}) */
	
	//给定元素的属性获取对象
	/* $(function(){
		$(".my").click(function(){
			alert($(this).text());
		})
	}) */
	
	//所有*
	/* $(function(){
		$("*").click(function(){
			alert("s");
		})
	}) */
	
	//隔行换色
	/* $(function(){
		$("#changecolor").click(function(){
			$("tr:even").css("background", "red");
			
		})
	})  */
	
	//事件的连载
	/* $(function(){
		$("tr").hover(function(){
			$(this).addClass("hober");
		},function(){
			$(this).removeClass("hober");
		})
	})
	
	 */
	//窗体加载事件
/* $(document).ready(function(){alert(2);}) */	
 
	/* $(function(){
		$("#change").toggle(function(){
			$("#s1").hide();
			$("#s2").show();
		},function(){
			$("#s2").hide();
			$("#s1").show();
		})
		
	}) */
	
	
	//json数据
	/* var jsonObj = {
			"name":"VeamW",
			"age":19,
			"sex":"男",
			"teacher":{
				"tname":"Jack",
				"tsex":"men",
				"tage":30
			},
			"hobbies":[
			     	{
			     		"hname":"basketball"
			     	}      
			     ]
	}
	alert(jsonObj.hobbies[0].hname);
	 */
	 
	 
	 //字符串格式使用eval解析
	 /* var jsonStr = "{'name':'Mickal','age':'20','sex':'boy'}";
	 var jsonObj = eval("("+jsonStr+")");
	 alert(jsonObj.sex); */
	 
	 
	 
	 //点击后获取所有标签的方法
	 $(function(){
		 $("#get").click(function(){
			 alert(2);
			 alert($(":input[type='text']").text());
		 });
	 })
	
	
</script>
</head>
<body>
<!-- jquery练习 -->
	<a href="#" id="hello">hello world!</a><BR/>	
	<a href="#" id="h" >hello !</a><br/>
	<hr>
	<div class="my">hello</div>
	<br/>
	<div class="my">hello my</div>
	<br/>
	<span class="m">hello span</span><br/>
	
	<br/>
	<hr>
	<button id="changecolor" >隔行变色</button>
		<table border="1" width="80%">
		<tr><td>1</td><td>1</td></tr>
		<tr><td>2</td><td>2</td></tr>
		<tr><td>3</td><td>3</td></tr>
		<tr><td>4</td><td>4</td></tr>
		<tr><td>5</td><td>5</td></tr>
		<tr><td>6</td><td>6</td></tr>
	</table>
	
	<br/>
	
	<div id="div2">
		<span id="s1" style="color: gray" >这个是span1的内容<br></span>
		<span id="s2" style="display: none;color: yellow">这个是span2的内容</span>
	</div>
	<input type="button" value="改变" id="change"/>
	
	<br/>
	
	<input type="text" vlaue="sss"/>
	<!-- 此处是点击后获取所有的标签的值 -->
	<input type="button" value="获取" id="get"/>
	
	
</body>
</html>