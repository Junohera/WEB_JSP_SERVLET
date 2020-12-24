package com.juno.useServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Forward_UseServlet
 */
@WebServlet("/Forward_UseServlet")
public class Forward_UseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Forward_UseServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8"); // 내보내는 한글 지원 인코딩 방식 지정
		request.setCharacterEncoding("UTF-8"); // 입력되는 한글 지원 인코딩 방식 지정

		String url = null;
		
		String userId = request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		if ("hong".equals(userId) && "1234".equals(userPwd)) {
			request.setAttribute("name", "홍길동");
			url = "03/09_Forward_UseServlet_ok.jsp";
			
		} else {
			url = "03/09_Forward_UseServlet.jsp";
		}
		
		RequestDispatcher dp = request.getRequestDispatcher(url);
		dp.forward(request, response); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8"); // 내보내는 한글 지원 인코딩 방식 지정
		request.setCharacterEncoding("UTF-8"); // 입력되는 한글 지원 인코딩 방식 지정
		doGet(request, response);
	}

}
