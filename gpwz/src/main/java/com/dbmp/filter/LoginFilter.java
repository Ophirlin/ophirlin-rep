package com.dbmp.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbmp.constant.Constant;

public class LoginFilter implements Filter{

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		HttpServletRequest request = (HttpServletRequest)servletRequest;
		HttpServletResponse response = (HttpServletResponse)servletResponse;
		String uri = request.getRequestURI();
		//System.out.println("......................................"+uri);
		//判断是否登录请求
		if(!uri.contains("/login")){
			//非登录请求,判断session中是否还有用户信息
			if(request.getSession().getAttribute(Constant.LOGIN_USER) != null){
				//已经登录
				chain.doFilter(request, response);
			} else {
				//未登录，跳转到登录页面
				response.sendRedirect(request.getContextPath() + "/login/index.sh");
			}
		} else {
			//登录请求；直接放行
			chain.doFilter(request, response);
		}
	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

}
