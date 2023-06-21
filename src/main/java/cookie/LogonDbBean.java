package cookie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.InitialContext;
import javax.sql.*;
import java.security.Timestamp;


public class LogonDbBean {
	private static LogonDbBean instance = new LogonDbBean();
	
	public static LogonDbBean getInstance() {
		return instance;
		
	}
	
	private LogonDbBean() {}
	
	private Connection getConnection() throws Exception {
		InitialContext init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp//env/jdbc/munho");
		Connection con = ds.getConnection();
		
		return con;
		
	}
	
	public void insertMember(LogonDataBean member) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		
		try {
			con = getConnection();
			String sql = "insert into member values(?,?,?,?)";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, member.getId());
			pstmt.setString(2, member.getName());
			pstmt.setString(3, member.getPwd());
			
			
			pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(pstmt != null && con != null) 
				try { pstmt.close(); con.close(); }
				catch(SQLException ex) {};
		}
	}
	
	public int userCheck(String id, String pwd) throws Exception {
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = "select pwd from member where id = ?";
		String dbPwd = "";
		int x = -1;
		
		try {
			con = getConnection();
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dbPwd = rs.getString("pwd");
				// id와 pwd가 일치한 경우
				if(dbPwd.equals(pwd)) x = 1;
				// 등록된 id는 존재하지만 pwd가 틀린 경우 
				else x = 0;
			// db에 등록된 id가 없는 경우
			} else x = -1;
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(rs != null && pstmt != null && con != null) {
				try {
					rs.close();
					pstmt.close();
					con.close();
				} catch(SQLException e) {}
			}
		}
		return x;
	}
	
}
