package com.hr.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.core.ApplicationContext;
import org.apache.catalina.startup.ContextConfig;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/test")
public class TestAction {
	
	
	
	@RequestMapping("testajax")
	public void testAjax(HttpServletResponse response,@RequestParam(value="name")String name) throws Exception{
		System.out.println(name);
		String result = "";
		if (name.equals("VeamW")) {
			result = "对不起，此用户已被使用！";
		}else{
			result = "此用户可以使用！";
		}
		
		response.getWriter().write(result);
	}
	
	
	@RequestMapping("testajax2")
	public void testAjax2(HttpServletResponse response,@RequestParam(value="province")String province) throws Exception{
		System.out.println(province);
		String result = null;
		
		if (province.equals("hunan")) {
			result = "{'name':'长沙'}";
		}
		if (province.equals("hubei")) {
			result = "{'name':'黄冈'}";
		}
		if (province.length()<1) {
			result = "{'name':''}";
	
		}
	
		response.getWriter().write(result);
		
	}
	
	

}
