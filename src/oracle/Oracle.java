package oracle;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Oracle {
	static Connection conn = null;
	static Statement stm = null;
	static ResultSet rs = null;
	public void dbConnection() {
		try{
			// 1. 드라이버 연결
			String str = "jdbc:oracle:thin:@localhost:1521:XE";
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2. db 연결 드라이버 연결할 때 쓰는 함수
			conn = DriverManager.getConnection(str,"scott","tiger");
			if (conn != null) { 
				System.out.println("연결 성공"); 
			} else {
				System.out.println("연결 실패");
			}
			stm = conn.createStatement();
			
		} catch (ClassNotFoundException e) {
			System.out.println("드라이버 연결 실패 : " + e);
		} catch (SQLException e) {
			System.out.println("DB연결 실패 : " + e.toString());
		} 
	}
	
	public ResultSet select(String sql)
	{
		try {
			rs = stm.executeQuery(sql);
		} catch (SQLException e) {
			System.out.println("검색 에러 : " + e.toString());
		}
		return rs;
	}
	
	public void insert(String sql) {
		System.out.println(sql);
		
		try {
			stm.executeUpdate(sql);
		} catch (SQLException e) {
			System.out.println("저장 에러 : " + e.toString());
		}
	}

	public void dbClose() {
		if(conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
