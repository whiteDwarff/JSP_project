package memberPack;

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
	
	public void loginDao(MemberDto dto) {
		String sql = "select * from member where id=?, pwd=?";
		
		try(Connection con = getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getPwd());
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setPwd(rs.getString("pwd"));
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void selectDao(MemberDto dto) {
		String sql = "select * from member where id = ?";
		try(Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql); ) {
			pstmt.setString(1, dto.getId());
			
			ResultSet rs = pstmt.executeQuery();
			
			while(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setPwd(rs.getString("pwd"));
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void insertDto(MemberDto dto) {
		String sql = "insert into member value(?,?,?)";
		try(Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getName());
			pstmt.setString(3, dto.getPwd());
			
			pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void updateDto(MemberDto dto) {
		String sql = "update member set name=?, pwd=? where id = ?";
		try(Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(3, dto.getId());
			pstmt.setString(2, dto.getName());
			pstmt.setString(1, dto.getPwd());
			
			pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void deletrDto(MemberDto dto) {
		String sql = "delete from member where id = ?";
		try(Connection con = getConnection();
				PreparedStatement pstmt = con.prepareStatement(sql);) {
			pstmt.setString(1, dto.getId());
			
			pstmt.executeUpdate();
				
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
		
	}


