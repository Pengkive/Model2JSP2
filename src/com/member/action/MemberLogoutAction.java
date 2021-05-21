package com.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class MemberLogoutAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println("M : MemberLogoutAction_execute() 호출 ");
		
		// 로그아웃 처리 -> 로그인 세션을 초기화(삭제) 
		HttpSession session = request.getSession();
		session.invalidate();		
		
		// 페이지이동
		response.setContentType("text/html; charset=utf-8 ");
		PrintWriter out = response.getWriter();
		out.print("<scrip>");
		out.print("alert('로그아웃 성공!')");
		out.print("location.href='./Main.me'");
		out.print("</scrip>");
		out.close();

		return null; //자바로 쓰는 경우 항상  return null
	}

}
