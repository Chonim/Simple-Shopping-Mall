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
			// 1. ����̹� ����
			String str = "jdbc:oracle:thin:@localhost:1521:XE";
			Class.forName("oracle.jdbc.driver.OracleDriver");

			// 2. db ���� ����̹� ������ �� ���� �Լ�
			conn = DriverManager.getConnection(str,"scott","tiger");
			if (conn != null) { 
				System.out.println("���� ����"); 
			} else {
				System.out.println("���� ����");
			}
			stm = conn.createStatement();
			
		} catch (ClassNotFoundException e) {
			System.out.println("����̹� ���� ���� : " + e);
		} catch (SQLException e) {
			System.out.println("DB���� ���� : " + e.toString());
		} 
	}
	
	public ResultSet select(String sql)
	{
		try {
			rs = stm.executeQuery(sql);
		} catch (SQLException e) {
			System.out.println("�˻� ���� : " + e.toString());
		}
		return rs;
	}
	
	public void insert(String sql) {
		System.out.println(sql);
		
		try {
			stm.executeUpdate(sql);
		} catch (SQLException e) {
			System.out.println("���� ���� : " + e.toString());
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
