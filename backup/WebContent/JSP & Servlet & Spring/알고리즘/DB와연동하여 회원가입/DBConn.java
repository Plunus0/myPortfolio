package com.myweb.dao;

import java.sql.*;

public class DBConn {
	//Field
	String driver = "oracle.jdbc.driver.OracleDriver";
    String url = "jdbc:oracle:thin:@localhost:1521:xe";
    String user = "scott";
    String pass = "tiger";
    Connection conn;
    Statement stmt;
    PreparedStatement pstmt;
    ResultSet rs;
    
    //Constructor
    public DBConn() {
    	try {
    		Class.forName(driver);
    		System.out.println("---> 1단계 성공");
    		conn = DriverManager.getConnection(url,user,pass);
    		System.out.println("---> 2단계 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
    }
    
    //3단계
    public void getStatement() {
    	try {
    		stmt = conn.createStatement();
	        System.out.println("---> 3단계 성공");
		} catch (Exception e) {
			e.printStackTrace();
		}
    }
    
    //3단계 : PreparedStatement 생성
    public void getPreparedStatement(String sql) {
    	try {
    		pstmt = conn.prepareStatement(sql);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
    }
    
    //close()
	public void close() {
		try {
    		if(rs != null){rs.close();}
	        if(stmt != null){stmt.close();}
	        if(conn != null){conn.close();}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
