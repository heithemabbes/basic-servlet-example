package filter;


import javax.servlet.*;
import java.io.IOException;

public class LogFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        System.out.println("******** Filter is called before servlet ");

        filterChain.doFilter(servletRequest,servletResponse);

        System.out.println("******** Filter is called after servlet");
    }

    @Override
    public void destroy() {

    }
}
