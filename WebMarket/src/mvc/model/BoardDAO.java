package mvc.model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;


import mvc.database.DBConnection;

public class BoardDAO {
	private static BoardDAO instance;
	
	private BoardDAO() {
		
	}
	
	
	public static BoardDAO getInstance() {
		if(instance == null)
			instance = new BoardDAO();
		return instance;
	}
	
	public void deleteBoard(int num) {// ���õ� �� ����
		
	}
	
	public void updateBoard(BoardDTO board) { // ���õ� �� ���� �����ϱ�
		
	}
	
	public void updateHit(int num) {// ���õ� ��ȸ �� ����
		
	}
	
	/*
	 * public BoardDTO getBoardByNum(int num,int page) {//���õ� �� �� ���� ��������
	 * 
	 * }
	 * 
	 * 
	 * //board ���̺��� ���ڵ� ���� public int getListCount() {
	 * 
	 * }
	 * 
	 * //board ���̺��� ���ڵ� �������� public ArrayList<BoardDTO> getBoardList(int page, int
	 * limit, String itmes, String text){
	 * 
	 * }
	 * 
	 * public String getLoginNameById(String id) { // member ���̺��� ������ id�� ����ڸ� ��������
	 * 
	 * }
	 */
	
	public void insertBoard(BoardDTO board) { //board ���̺� ���ο� �� �����ϱ� 
		
	}
	
	
}
