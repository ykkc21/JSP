package mvc.controller;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mvc.model.BoardDTO;
import mvc.model.BoardDAO;

public class BoardController extends HttpServlet{
	private static final long serialVersionUID = 1L;
	static final int LISTCOUNT = 5;
	
	public void doGet(HttpServletRequest request, HttpServletResponse 
	response) throws ServletException, IOException {
		doPost(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse 
	response) throws ServletException, IOException{
		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		
		if(command.equals("/BoardListAction.do")) { // ��ϵ� �� ��� ������ ����ϱ�
			requestBoardList(request);
			RequestDispatcher rd = request.getRequestDispatcher("./board/list.jsp");
			rd.forward(request, response);
		}else if(command.equals("/BoardWriteForm.do")) { // �� ��� ������ ���
			requestLoginName(request);
			RequestDispatcher rd = request.getRequestDispatcher("./board/writeForm.jsp");
			rd.forward(request, response);
		}else if(command.equals("/BoardWriteAction.do")) { // ���ο� �� ���
			requestBoardWrite(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardListAction.jsp");
			rd.forward(request, response);
		}else if(command.equals("/BoardViewAction.do")) { //���õ� �� ���� ��������
			requestBoardView(request);
			RequestDispatcher rd = request.getRequestDispatcher("./board/wiew.jsp");
			rd.forward(request, response);
		}else if(command.equals("/BoardView.do")) { // �� �� ������
			RequestDispatcher rd = request.getRequestDispatcher("./board/view.jsp");
			rd.forward(request, response);
		}else if(command.equals("/BoardUpdateAction.do")) { //���õ� �� �����ϱ�
			requestBoardUpdate(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardListAction.do");
			rd.forward(request, response);
		}else if(command.equals("/BoardDeleteAction.do")) {
			requestBoardDelete(request);
			RequestDispatcher rd = request.getRequestDispatcher("/BoardLisAction.do");
			rd.forward(request, response);
		}
	}
	
	public void requestBoardDelete(HttpServletRequest request) { //���õ� �� ���� ����
		
	}
	
	public void requestBoardUpdate(HttpServletRequest request) { //���õ� �� ���� ����
		
	}
	
	public void requestBoardView(HttpServletRequest request) { //���õ� �� �� ������ ��������
		
	}
	
	public void requestLoginName(HttpServletRequest request) { //������ ����ڸ� ��������
		
	}
	
	
	public void requestBoardWrite (HttpServletRequest request) { // ���ο� �� ����ϱ�
		
	}
	
	public void requestBoardList(HttpServletRequest request) { //��ϵ�  �� ��� ��������
		
	}
	
	
}
