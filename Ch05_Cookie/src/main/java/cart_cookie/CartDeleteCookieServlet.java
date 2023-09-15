package cart_cookie;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/CartDeleteCookie")
public class CartDeleteCookieServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public CartDeleteCookieServlet() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		out.print("<html><head></head><body>");
		
		Cookie[] cookies = request.getCookies();
		out.print("<h3>장바구니 리스트</h3>");
		if(cookies != null && cookies.length > 0) {
			for(int i=0;i<cookies.length;i++) {
				Cookie c1 = new Cookie(cookies[i].getName(), "");
				c1.setMaxAge(0);
				response.addCookie(c1);
			}
		}
		
		String contextPath = request.getContextPath() + "/05_cart/16_productAdd.html";
		out.print("<a href=" + contextPath + ">상품선택 페이지</a><br>"
				+ "");
		out.print("</body></html>");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
