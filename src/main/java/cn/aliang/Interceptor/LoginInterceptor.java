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

/**
 * 权限拦截，验证登录的状态
 * @author J10154
 */
public class LoginInterceptor extends HandlerInterceptorAdapter {

    @Autowired
    private JedisPool jedisPool;

    //Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);

    //private List<String> excludedUrls;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        String requestUri = request.getRequestURI();

        if(requestUri.indexOf("/order/sendOrder") != -1){
            return true;
        }
        String loginToken = null;
        // 是否有cookie
        Cookie[] cookies = request.getCookies();
        if(cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("loginToken")) {
                    loginToken = cookie.getValue();
                    break;
                }
            }
        }

        // cookie中是否有loginToken
        //如果cookie中没有loginToken 则转发到login界面进行验证
        if (!StringUtils.hasText(loginToken)) {
            request.getRequestDispatcher("/toLogin").forward(request, response);
            //终止运行之后的拦截器和控制器
            return false;
        }

        Jedis jedis = jedisPool.getResource();
        String userId = jedis.get(loginToken);

        // 根据loginToken是否能从redis中获取userId
        if (!StringUtils.hasText(userId)) {
            request.getRequestDispatcher("/toLogin").forward(request, response);
            jedis.set(loginToken, userId, "NX", "EX", 60 * 10);
            return false;
        }
        //用户通过验证
        return true;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
    }
/*
    public List<String> getExcludedUrls() {
        return excludedUrls;
    }

    public void setExcludedUrls(List<String> excludedUrls) {
        this.excludedUrls = excludedUrls;
    }
*/
}
