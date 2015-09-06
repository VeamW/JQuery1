<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试Ajax</title>
<style>
    div { width:800px; height:600px; margin:100px; float:center;
          background:green; }
    </style>

<script type="text/javascript" src="js/jquery-1.7.2.js"></script>
<script type="text/javascript">
	$(function(){
		$(":input[name='name']").blur(function(){
			//alert($(this).val());
			$.ajax({
				//提交方式
				type:"post",
				//是否缓存
				cache:false,
				//返回数据的类型
				dataType:"text",
				//传入的参数
				data:{
					name:$(this).val()
				},
				//地址
				url:"test/testajax.action",
				//response：返回的对象
				success:function(response,status,xhr){
					//alert(response);
					$("#result").text(response);
				}
			})
		})
		
		
		
		
		//联动
		$("select[name='province']").change(function(){
			//alert($(this).val());
			$.ajax({
				type:"post",
				cache:false,
				dataType:"text",
				data:{
					province:$(this).val()
				},
				url:"test/testajax2.action",
				success:function(response,status,xhr){
					var str = eval("("+ response+")");
					var $city = $("select[name='city']");
					$city.empty();
					$city.append(
						"<option>"+str.name+"</option>"
					);
				}
				
			})
		})
		
		//历时900毫秒显示出来
		$("p").show(900);
		//历时900毫秒隐藏
		$("p").hide(900);
		$("p").toggle("slow");
		$("select").slideUp("slow");
		$("select").slideDown("slow");
		$("select").fadeIn("slow");
	})
	
	
	
	
</script>
</head>
<body>
	<form>
		姓名：<input type="text" name="name"  /><span id="result"></span>
		<br/>
		<hr/>
		
		<select name="province">
			<option value="">请选择</option>
			<option value="hunan">湖南</option>
			<option value="hubei">湖北</option>
		</select>
		<select name="city">
			<option>请选择</option>
		</select>
		
	</form>
	
	<br/>
	<hr/>
	
	<p style="display: none">hello , this is my second practice</p>
	<hr/>
	 <p><input type="button" value="Run"/></p>
<div></div>
<script>
jQuery.fx.interval = 100;
$("input").click(function(){
  $("div").toggle( 2000 );
});
  </script>

	
</body>
</html>