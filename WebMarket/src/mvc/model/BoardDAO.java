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
	
	public void deleteBoard(int num) {// 선택된 글 삭제
		
	}
	
	public void updateBoard(BoardDTO board) { // 선택된 글 내용 수정하기
		
	}
	
	public void updateHit(int num) {// 선택들 조회 수 증가
		
	}
	
	/*
	 * public BoardDTO getBoardByNum(int num,int page) {//선택된 글 상세 내용 가져오기
	 * 
	 * }
	 * 
	 * 
	 * //board 테이블의 레코드 개수 public int getListCount() {
	 * 
	 * }
	 * 
	 * //board 테이블의 레코드 가져오기 public ArrayList<BoardDTO> getBoardList(int page, int
	 * limit, String itmes, String text){
	 * 
	 * }
	 * 
	 * public String getLoginNameById(String id) { // member 테이블에서 인증된 id의 사용자명 자져오기
	 * 
	 * }
	 */
	
	public void insertBoard(BoardDTO board) { //board 테이블에 새로운 글 삽입하기 
		
	}
	
	
}
