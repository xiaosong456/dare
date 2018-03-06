package com.grand.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * 用户登录拦截器
 * @author lxs
 *
 */
public class LoginInterceptor implements HandlerInterceptor {
	/** 
	  * Handler执行之前调用这个方法 
	  */
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		String[] noFilters = new String[] {
				"/login",
				"/hp",
				"/userinfo",
				"/temp"
		};
		//获取请求的URL
		String url=request.getRequestURI();
		//URL:login.jsp是公开的;这个demo是除了login.jsp是可以公开访问的，其它的URL都进行拦截控制
		for(String s : noFilters){
			if(url.indexOf(s) != -1){
				return false;
			}

		}
		//获取session
		HttpSession session=request.getSession();
		String loginName=(String)session.getAttribute("loginName");
		
		if(loginName!=null){
			return true;
		}
		//不符合条件的跳转至登录界面
		//request.getRequestDispatcher("/login.jsp").forward(request, response);
		return false;
	}
	/** 
	  * Handler执行之后，ModelAndView返回之前调用这个方法 
	  */
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		
	}
	
	/**
	 * Handler执行完成后调用这个方法
	 */
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		
	}

}
