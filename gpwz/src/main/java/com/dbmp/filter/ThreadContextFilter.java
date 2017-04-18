package com.dbmp.filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.filter.OncePerRequestFilter;

import com.dbmp.core.logger.Log;
import com.dbmp.core.logger.Logger;
import com.dbmp.core.utils.thread.ThreadContext;


/**
 * 
 * 通过该过滤器将Web应用所需一个请求对应的线程所需的全局变量放到ThreadContext中。
 * <li>子过滤器只需实现<code>getGlobalVariable</code>方法从Request中获取全局变量</li>
 * <li>通过ThreadContext的get方法获得所需的全局变量，见：{@link ThreadContext ThreadContext}</li>
 * <li>继承{@link OncePerRequestFilter OncePerRequestFilter}说明在一次请求中该过滤器只执行一次</li>
 * @author:c
 *
 */
public abstract class ThreadContextFilter extends OncePerRequestFilter {

	/**
	 * 日志操作
	 */
	protected Logger logger = Log.get(this.getClass());

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	/**
	 * 
	 * 	从Request中获取所需的全局变量，由子类实现
	 *
	 *	@param 
	 *		request	当前请求
	 *	@return
	 *		Object	全局变量
	 */
	protected abstract Object getGlobalVariable(HttpServletRequest request);

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			//Set全局变量
			this.setGlobalVariable(request);
			//执行其他Filter,当没有filter执行时就会调用Chain中的
			//Resource，比如Servlet的service方法
			filterChain.doFilter(request, response);
		} finally {
			//清空全局变量
			this.removeGlobalVariable();
		}
	}

	/**
	 * 
	 * 	Set全局变量
	 *
	 *	@param 
	 *		request	当前请求
	 */
	protected void setGlobalVariable(HttpServletRequest request) {
		Object value = this.getGlobalVariable(request);
		if (value != null) {
			ThreadContext.set(value);
		}
	}

	/**
	 * 
	 * 	清空全局变量，减少内存损耗
	 */
	protected void removeGlobalVariable() {
		ThreadContext.remove();
	}
}
