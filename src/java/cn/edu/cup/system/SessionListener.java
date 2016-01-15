/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cn.edu.cup.system;

import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * 会话监听器，负责在会话结束的时候移除用户列表中的用户名
 * @author XiaopingLi
 */
public class SessionListener implements HttpSessionListener {

    @Override
    public void sessionCreated(HttpSessionEvent se) {
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        HttpSession s = se.getSession();
        if (s != null) {
            ServletContext ctx = s.getServletContext();
            if (ctx != null) {
                Map serviceMap = (Map) ctx.getAttribute("userList");
                if (serviceMap != null) {
                    SystemUser user = (SystemUser) s.getAttribute("user");
                    if (user != null) {
                        String userName = user.getUserName();
                        serviceMap.remove(userName);
                        System.out.printf("remove %s\n.", userName);
                    }
                }
            }
        }
    }

}
