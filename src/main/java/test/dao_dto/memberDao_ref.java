package test.dao_dto;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.InitialContext;
import javax.sql.DataSource;

public class memberDao_ref {
	private Connection getConnection() throws Exception {
		InitialContext init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp//env/jdbc/munho");
		Connection con = ds.getConnection();
		return con;
	}
	
	
	public void memberFunction(memberDto dto, String keyword) {
	      PreparedStatement pstmt = null;
	      
	      try(Connection con = getConnection()){   
	         //I = 회원가입
	         if(keyword.equals("I")) {
	            String sql = "insert into member values(?,?,?)";
	               pstmt = con.prepareStatement(sql);
	               pstmt.setString(1, dto.getId());
	               pstmt.setString(2, dto.getName());
	               pstmt.setString(3, dto.getPwd());
	         }
	                  
	         //U = 정보수정
	         else if(keyword.equals("U")) {
	            String sql = "Update member SET name = ?, pwd = ? WHERE id = ?";
	               pstmt = con.prepareStatement(sql);
	               pstmt.setString(1, dto.getName());
	               pstmt.setString(2, dto.getPwd());
	               pstmt.setString(3, dto.getId());
	         }
	         
	         //D = 회원탈퇴
	         else if(keyword.equals("D")) {
	            String sql = "DELETE FROM member WHERE ID = ?";
	            pstmt = con.prepareStatement(sql);
	            pstmt.setString(1, dto.getId());
	         }
	         pstmt.executeUpdate();
	         
	         
	      
	      } catch (Exception e) {
	         e.printStackTrace();
	      } finally {
	         try {
	            if(pstmt!=null) pstmt.close();
	         } catch (SQLException e) {
	            e.printStackTrace();
	         }
	      }
	   }
	
	public memberDto loginDao(String id, String pwd) {
		String sql = "select * from member where id=? and pwd=?";
		memberDto dto = new memberDto();
		
		try( Connection con = getConnection();
			 PreparedStatement pstmt = con.prepareStatement(sql);){
			
			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setPwd(rs.getString("pwd"));
			}
			
		} catch( Exception e ) {
			e.printStackTrace();
			return null;
		}
		return dto;
	}
	
	
	public memberDto selectDao(String id) {
		String sql = "select * from member where id = ?";
		memberDto dto = new memberDto();
		try( Connection con = getConnection(); 
			 PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setString(1, id);
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setPwd(rs.getString("pwd"));
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public ArrayList<memberDto> memberList() {
		String sql = "select * from member";
		ArrayList<memberDto> dtos = new ArrayList<>();
		
		try(Connection con = getConnection();
			Statement stmt = con.createStatement()) {
			
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				memberDto dto = new memberDto();
				dto.setId(rs.getString("id"));
				dto.setName(rs.getString("name"));
				dto.setPwd(rs.getString("pwd"));
				dtos.add(dto);
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return dtos;
	}
	
}


