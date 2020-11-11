package com.kh.jsp.boardComment.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kh.jsp.boardComment.model.service.BoardCommentService;
import com.kh.jsp.boardComment.model.vo.BoardComment;


/**
 * Servlet implementation class CommentUpdate
 */
@WebServlet("/updateComment.co")

public class CommentUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentUpdate() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int CommentNo = Integer.parseInt(request.getParameter("commentNo"));
		int BoardNo = Integer.parseInt(request.getParameter("boardNo"));
		String Content = request.getParameter("commentText");
		
		BoardComment bco = new BoardComment();
		bco.setCommentNo(CommentNo);
		bco.setCommentText(Content);
		
		int result = new BoardCommentService().updateComment(bco);
		
		if( result > 0 ) {
			response.sendRedirect("selectOne.bo?boardNo="+ BoardNo);
		} else {
			// 에러 페이지 전달
			request.setAttribute("error-msg", "댓글 수정 실패!");
			request.getRequestDispatcher("views/common/errorPage.jsp")
			       .forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
