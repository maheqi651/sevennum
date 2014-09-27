package filter;
import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.Manager;

 

public class LoginFilter implements Filter {
	
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		HttpServletRequest httpRequest = (HttpServletRequest)request;
		HttpServletResponse httpResponse = (HttpServletResponse)response;
		//Admin user = (Admin)httpRequest.getSession().getAttribute("admin");
		//bankstaff manager hcustommanager custommanager
//		Bankstaff bf=(Bankstaff)httpRequest.getSession().getAttribute("bankstaff");
//		bean.Manager   mg=(bean.Manager)httpRequest.getSession().getAttribute("manager");
//		Custommanager custommanager=(Custommanager)httpRequest.getSession().getAttribute("custommanager");
//		
//		if(bf==null&&mg==null&&custommanager==null) {
//			httpResponse.sendRedirect(httpRequest.getContextPath() + "/login.jsp");
//			return;
//		}else{
//			
//		}
		chain.doFilter(request, response);
	}
	public void init(FilterConfig filterConfig) throws ServletException {
		
	}
	public void destroy() {
		
	}
}

