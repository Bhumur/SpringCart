package com.SpringCart.Filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/*")  // applies to all URLs
public class AuthFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;

        String path = req.getRequestURI();
        HttpSession session = req.getSession(false);

        // Allow login, register, css, js, images without session
        if (path.contains("/login") || path.contains("/register") 
            || path.contains("/css/") || path.contains("/js/") 
            || path.contains("/images/") || path.contains("/") || path.contains("/h2-console")) {
            chain.doFilter(request, response);
            return;
        }

        // Check session
        if (session != null && session.getAttribute("loggedUser") != null) {
            chain.doFilter(request, response);  // user logged in, allow
        } else {
            res.sendRedirect(req.getContextPath() + "/login");  // redirect to login
        }
    }
}
