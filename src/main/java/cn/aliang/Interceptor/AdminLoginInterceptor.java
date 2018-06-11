/*
 *  CMB Confidential
 *
 *  Copyright (C) 2016 China Merchants Bank Co., Ltd. All rights reserved.
 *
 *  No part of this file may be reproduced or transmitted in any form or by any
 *  means, electronic, mechanical, photocopying, recording, or otherwise, without
 *  prior written permission of China Merchants Bank Co., Ltd.
 */

package cn.aliang.Interceptor;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminLoginInterceptor extends HandlerInterceptorAdapter {

    @Autowired
    private JedisPool jedisPool;

    @Override
    public boolean preHandle(HttpServletRequest request,
                             HttpServletResponse response, Object handler) throws Exception {
        String requestUri = request.getRequestURI();

        String adminLoginToken = null;
        // 是否有cookie
        Cookie[] cookies = request.getCookies();
        if(cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("adminLoginToken")) {
                    adminLoginToken = cookie.getValue();
                    break;
                }
            }
        }

        // cookie中是否有loginToken
        //如果cookie中没有loginToken 则转发到login界面进行验证
        if (!StringUtils.hasText(adminLoginToken)) {
            request.getRequestDispatcher("/adminLogin").forward(request, response);
            //终止运行之后的拦截器和控制器
            return false;
        }

        Jedis jedis = jedisPool.getResource();
        String adminId = jedis.get(adminLoginToken);

        // 根据loginToken是否能从redis中获取userId
        if (!StringUtils.hasText(adminId)) {
            request.getRequestDispatcher("/adminLogin").forward(request, response);
            return false;
        }
        //续命
        jedis.set(adminLoginToken, adminId, "NX", "EX", 60 * 10);
        //用户通过验证
        return true;
    }
    //进入Handler方法之后，返回modelAndView之前执行
    //应用场景从modelAndView出发：将公用的模型数据(比如菜单导航)在这里传到视图，也可以在这里统一指定视图
    @Override
    public void postHandle(HttpServletRequest request,
                           HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
    }
    //执行Handler完成执行此方法
    //应用场景：统一异常处理，统一日志处理
    @Override
    public void afterCompletion(HttpServletRequest request,
                                HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
    }
}
