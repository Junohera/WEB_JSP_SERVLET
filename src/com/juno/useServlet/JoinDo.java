package com.juno.useServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class JoinDo
 */
@WebServlet("/JoinDo")
public class JoinDo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinDo() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "03/11_Servlet_Ex_ok.jsp";
		
		response.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		try {
			
			
			// byReq
			String req_userId = request.getParameter("userId");
			String req_userPw = request.getParameter("userPw");
			String req_gender = request.getParameter("gender");
			String req_chk_mail = request.getParameter("chk_mail");
			String req_content = request.getParameter("content");
			String req_item[] = request.getParameterValues("item");
			String req_job = request.getParameter("job");
			String req_interest[] = request.getParameterValues("interest");
			
			// userId
			request.setAttribute("userId", req_userId);
			
			// userPw
			request.setAttribute("userPw", req_userPw);
			
			// gender
			if (Integer.parseInt(req_gender) == 1) request.setAttribute("gender", "남성");
			else request.setAttribute("gender", "여성");
			
			// chk_mail
			if (Integer.parseInt(req_chk_mail) == 1) request.setAttribute("chk_mail", "수신");
			else request.setAttribute("chk_mail", "거부");
			
			// content
			request.setAttribute("content", req_content);
			
			// item
			String item[] = new String[req_item.length];
			for (int i = 0; i < req_item.length; i++) {
				if (req_item[i].equals("A")) item[i] = "신발";
				else if (req_item[i].equals("B")) item[i] = "가방";
				else if (req_item[i].equals("C")) item[i] = "벨트";
				else if (req_item[i].equals("D")) item[i] = "모자";
				else if (req_item[i].equals("E")) item[i] = "시계";
				else if (req_item[i].equals("F")) item[i] = "쥬얼리";
			}
			request.setAttribute("item", item);
			
			// job
			String job = null;
			if (req_job.equals("")) job = "선택하세요";
			else if (req_job.equals("I")) job = "학생";
			else if (req_job.equals("II")) job = "컴퓨터/인터넷";
			else if (req_job.equals("III")) job = "언론";
			else if (req_job.equals("IV")) job = "공무원";
			else if (req_job.equals("V")) job = "군인";
			else if (req_job.equals("VI")) job = "서비스업";
			else if (req_job.equals("VII")) job = "교육";
			request.setAttribute("job", job);
			
			// interest
			String interest[] = new String[req_interest.length];
			for (int i = 0; i < req_interest.length; i++) {
				if (req_interest[i].equals("가")) interest[i] = "에스프레소";
				else if (req_interest[i].equals("나")) interest[i] = "로스팅";
				else if (req_interest[i].equals("다")) interest[i] = "생두";
				else if (req_interest[i].equals("라")) interest[i] = "원두";
				else if (req_interest[i].equals("마")) interest[i] = "핸드드립";
			}
			request.setAttribute("interest", interest);
		} catch (Exception e) {
			System.out.println("유효하지않은 입력값");
			request.setAttribute("reason", "유효하지 않은 입력값이므로 다시 입력하세요");
			url = "03/11_Servlet_Ex.jsp";
		} finally {
			RequestDispatcher dp = request.getRequestDispatcher(url);
			dp.forward(request, response);			
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
