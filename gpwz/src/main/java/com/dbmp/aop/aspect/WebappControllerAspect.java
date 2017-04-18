package com.dbmp.aop.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

import com.dbmp.common.logger.OperatorLogger;
import com.dbmp.common.utils.ManagementContext;
import com.dbmp.common.aop.aspect.ControllerAspect;
import com.dbmp.common.bean.LoginUser;
import com.dbmp.core.annotation.Function;
import com.dbmp.web.controller.BaseController;

/**
 * WebAppController切面，在该类中指定了OperationPointcut切入点信息，并实现了
 * before或around通知
 * 
 * @author:chenyong
 */
@Aspect
public class WebappControllerAspect extends ControllerAspect {    
	/**
     * 是BaseController的子类，并被RequestMapping批注修饰
     */
    @Pointcut("execution(@org.springframework.web.bind.annotation.RequestMapping * "
            + "com.dbmp.web.controller.BaseController+.*(..))")
    public void OperationPointcut() {
    	
    }

    /**
     * OperationPointcut切入点之前通知，在这里实现了日志输出
     */
    @Before("OperationPointcut()&& target(controller)")
    public void beforeOperation(JoinPoint joinPoint, BaseController controller) {
    	Function function = this.getMethodAnnotation(joinPoint, Function.class);
    	LoginUser loginUser = ManagementContext.getLoginUser();
    	
    	//记录操作日志
    	OperatorLogger.writeLog(loginUser, function);
    	
        this.logBeforeOperation(joinPoint, loginUser != null ? loginUser.getUserName() : null);
        this.authorize(joinPoint, controller);
        ManagementContext.setControllerClass(controller.getClass().getName());
    }
}
