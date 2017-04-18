package com.dbmp.filter;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import com.dbmp.common.utils.ManagementContext;


public class RequestAwareFilter extends ThreadContextFilter {
    @Override
    protected Object getGlobalVariable(HttpServletRequest request) {
        Map<String, Object> contextMap = new HashMap<String, Object>();
        //contextMap.put(ManagementContext.LOGIN_USER, WebHelper.getSessionAttribute(request, WebKey.userKey));
        contextMap.put(ManagementContext.MVC_CONTEXT_PATH, request.getContextPath());
        contextMap.put(ManagementContext.HTTP_REQUEST, request);
        return contextMap;
    }
}
