package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.*;
import java.util.ArrayList;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class boardDao {
	
	
	private Connection getConnection() throws Exception {
		InitialContext init = new InitialContext();
		DataSource ds = (DataSource) init.lookup("java:comp//env/jdbc/munho");
		Connection con = ds.getConnection();
		
		return con;
	}
	
	public void insertDao(boardDto dto) {
		String sql = "insert into board (subject,content,writer) values(?,?,?)";
		
		try(Connection con = getConnection();
		    PreparedStatement pstmt = con.prepareStatement(sql); ) {
			
			pstmt.setString(1, dto.getSubject());
			pstmt.setString(2, dto.getContent());
			pstmt.setString(3, dto.getWriter());
			
			pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public boardDto selectDao(int bcode) {
		String sql = "select * from board where bcode = ?";
		boardDto dto = new boardDto();
		
		try(Connection con = getConnection();
		    PreparedStatement pstmt = con.prepareStatement(sql); ) {
			
			pstmt.setInt(1, bcode);
			
			ResultSet rs = pstmt.executeQuery();
			
			if(rs.next()) {
				dto.setBcode(rs.getInt("bcode"));
				dto.setSubject(rs.getString("subject"));
				dto.setContent(rs.getString("content"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
	public void updateDao(boardDto dto) {
		String sql = "update board set subject=?, content=? where bcode=?";
		
		try(Connection con = getConnection();
		    PreparedStatement pstmt = con.prepareStatement(sql); ) {
			
			pstmt.setString(1, dto.getSubject());
			pstmt.setString(2, dto.getContent());
			pstmt.setInt(3, dto.getBcode());
			pstmt.setString(4, dto.getWriter());
			
			pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	public void deleteDao(boardDto dto) {
		String sql= "delete from board where bcode = ?";
		try(Connection con = getConnection(); 
			PreparedStatement pstmt = con.prepareStatement(sql);) {
			
			pstmt.setInt(1, dto.getBcode());
			
			pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	
	}
	public ArrayList<boardDto> select(){
        
        String sql = "SELECT * FROM board";
        ArrayList<boardDto> dtos = new ArrayList<boardDto>();
        
        try (Connection con = getConnection(); 
            Statement st = con.createStatement();) {

           ResultSet rs = st.executeQuery(sql);
           
           while(rs.next()) {
              int bcode = rs.getInt("bcode");
              String subject = rs.getString("subject");
              String content = rs.getString("content");
              String writer = rs.getString("writer");
              Date regdate = rs.getDate("regdate");
              
              boardDto dto = new boardDto(bcode,subject,content,writer,regdate);
              dtos.add(dto);
           }
           
        } catch (Exception e) {
           e.printStackTrace();
        }
        return dtos;
     }


}
