package com.project.accountbook.board.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.project.accountbook.board.post.model.PostDTO;

public class BoardDAO {
	
	private Connection conn;
	private Statement stat;
	private PreparedStatement pstat;
	private ResultSet rs;
	
	//db역할
		Map<String, PostDTO> db = new HashMap<>();

		//C
		public void insertBoard(PostDTO dto) {
			dto.setWriteDate(new Date());
			db.put(dto.getSeqBoard(), dto);
		}
		
		//R
		public PostDTO selectBoard(int num) {
			return db.get(num);
		}// 하나씩 불러오기
		
		public List<PostDTO> selectBoardAll(){
			
			return new ArrayList<PostDTO>(db.values());
		}// 전부 불러오기
		
		//U
		public void updateBoard(PostDTO dto) {
			// 해당 키의 연결된 객체 불러오기
			db.put(dto.getSeqBoard(), dto);
		}
		
		//D
		public void deleteMember(int num) {
			db.remove(num);
		}// 일부 삭제
		
//		public void deleteMemberAll() {
//			db.clear();
//		}// 전부 삭제

}//BoardDAO











































