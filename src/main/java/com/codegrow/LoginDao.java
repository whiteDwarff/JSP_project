/***********************************
  * 작성자 : munhokang
  * 작성일 : 2023. 5. 10.
  * 파일명 : LoginDao.java
  * comment : 
***********************************/
package com.codegrow;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.InitialContext;
import javax.sql.DataSource;

/**
 * @author munhokang
 *
 */
public class LoginDao {

	private Connection getConnection() throws Exception {
		
		InitialContext ctx = new InitialContext();
		DataSource ds = (DataSource)ctx.lookup("java:comp//env/jdbc/project");
		Connection con = ds.getConnection();
		
		return con;
	}
	public void insertLogin() {
		String sql = "insert into member values(?,?,?,?,?)";
		// connection 가져오기
		try(
			Connection con = getConnection();
			PreparedStatement pstmt = con.prepareStatement(sql);
		   ) {
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
