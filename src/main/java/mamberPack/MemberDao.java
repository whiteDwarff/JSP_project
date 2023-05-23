package mamberPack;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MemberDao {
	
	private Connection getConnection() throws Exception {
		
		InitialContext init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp//env/jdbc/munho");
		Connection con = ds.getConnection();
		
		return con;
	}
	
	public MemberDto selectDao(String id, String pwd) {
		String sql = "select * from member where id = ?, pwd = ?";
		MemberDto dto = new MemberDto();
		try(Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			
			pstmt.setString(1, id);
			pstmt.setString(1, pwd);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setPwd((rs.getString("pwd")));
				
				
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
			return dto;
	}
	public void insertDao(String id, String name, String pwd) {
		String sql = "insert into member value = ?,?,?";
		try(Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setString(1, id);
			pstmt.setString(2, name);
			pstmt.setString(3, pwd);
			
			pstmt.executeQuery();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void updateDao(String id, String name, String pwd) {
		String sql = "update set member name = ?, pwd = ? where id = ?";
		try(Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql)){
			
			pstmt.setString(1, name);
			pstmt.setString(2, pwd);
			pstmt.setString(3, id);
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	}
}
