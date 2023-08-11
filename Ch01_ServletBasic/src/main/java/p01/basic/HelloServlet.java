package p01.basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// HelloServlet -> tomcat server가 자식 class인 HelloServlet을 
// HttpServlet으로 자동형변환하고 instance를 생성하고
// doPost, doGet 메소드를 실행하면 polymorphism 방식으로 자식인
// HelloServlet에서 override한 메소드를 실행

// URL의 path 부분을 setting하는 annotation (context root 다음의 path 지정)
// context root : 기본적으로는 project 이름 (Ch01_ServletBasic)
// @WebServlet("/HelloServlet")
@WebServlet("/hello/jsp")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    // constructor
    public HelloServlet() {
        super();
    }
    
    // request 객체 : web browser에서 보내온 모든 정보를 갖고 있는 객체
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. web browser에서 전달한 정보 읽기 (id, pwd를 넘겨주었으면 id, pwd 값을 읽어오는 코딩 필요)
		// 2. id, pwd를 이용해서 DBMS를 연결해서 해당 table에서 있는지를 check
		// 3. web browser에 response 결과값을 html 형식으로 전송
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><head></head><body><h1>서블릿 작성 예제입니다.</h1></body></html>");
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
