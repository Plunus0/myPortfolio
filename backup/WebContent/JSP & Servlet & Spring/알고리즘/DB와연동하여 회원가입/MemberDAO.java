package com.myweb.dao;

import com.myweb.vo.MemberVO;

public class MemberDAO extends DBConn{
	
	//insert : 회원가입
	public int insert(MemberVO vo) {
		int result = 0;
		/*
		 * String sql = "insert into member values('" +vo.getId()+"', '"
		 * +vo.getName()+"', '" +vo.getAddr()+"', '" +vo.getHp()+"', sysdate,'"
		 * +vo.getPass()+"')";
		 */
		
		String sql = "insert into member values(?,?,?,?,sysdate,?)";
		/* getStatement(); */
		getPreparedStatement(sql);
		
		try {
			//pstmt에 맵핑하는 데이터 넣기
			pstmt.setString(1,vo.getId());
			pstmt.setString(2,vo.getName());
			pstmt.setString(3,vo.getAddr());
			pstmt.setString(4,vo.getHp());
			pstmt.setString(5,vo.getPass());
			result = pstmt.executeUpdate();
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
}
