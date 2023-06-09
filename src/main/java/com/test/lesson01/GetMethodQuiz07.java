package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz07")
public class GetMethodQuiz07 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");

		String address = request.getParameter("address");
		String card = request.getParameter("card");
		int price = Integer.valueOf(request.getParameter("price"));

		PrintWriter out = response.getWriter();
		out.print("<html><head><title>주문결과</title></head><body>");

		// else if문 대신 if문 여러개로 return구문 사용해도 됨 
		if (address.startsWith("서울시") == false) {
			out.print("<b>배달 불가 지역입니다.</b><br>");
		} else if (card.equals("신한카드")) {
			out.print("<b>결제 불가 카드입니다.</b><br>");
		} else {
			out.print(address + " <b>배달 준비중</b><br>");
			out.print("결제금액: " + price + "원");
		}

		out.print("</body></html>");
	}
}
