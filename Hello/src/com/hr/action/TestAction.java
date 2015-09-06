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
			result = "�Բ��𣬴��û��ѱ�ʹ�ã�";
		}else{
			result = "���û�����ʹ�ã�";
		}
		
		response.getWriter().write(result);
	}
	
	
	@RequestMapping("testajax2")
	public void testAjax2(HttpServletResponse response,@RequestParam(value="province")String province) throws Exception{
		System.out.println(province);
		String result = null;
		
		if (province.equals("hunan")) {
			result = "{'name':'��ɳ'}";
		}
		if (province.equals("hubei")) {
			result = "{'name':'�Ƹ�'}";
		}
		if (province.length()<1) {
			result = "{'name':''}";
	
		}
	
		response.getWriter().write(result);
		
	}
	
	

}
