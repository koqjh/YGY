package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import VO.BossVO;
import VO.PersonVO;

public class RegDAO {
	public void regInsert(PersonVO vo) {
		Connection con = DBcon.getConnection();
		
		PreparedStatement stmt;
		try {
			stmt = con.prepareStatement("INSERT INTO person_tbl(id, pw, name, tel, address) VALUES(?, ?, ?, ?, ?)");
			stmt.setString(1, vo.getId());
			stmt.setString(2, vo.getPw());
			stmt.setString(3, vo.getName());
			stmt.setInt(4, vo.getTel());
			stmt.setString(5, vo.getAddress());
			
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void bossInsert(BossVO vo) {
		Connection con = DBcon.getConnection();
		
		PreparedStatement stmt;
		
		try {
			stmt = con.prepareStatement("INSERT INTO boss_tbl(id, pw, name, tel, address) VALUES(?, ?, ?, ?, ?)");
			stmt.setString(1, vo.getId());
			stmt.setString(2, vo.getPw());
			stmt.setString(3, vo.getName());
			stmt.setInt(4, vo.getTel());
			stmt.setString(5, vo.getAddress());
			
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int idcheck(String id) {
		Connection con = DBcon.getConnection();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		int result = 0;
		
		String query = "SELECT COUNT(*) FROM member WHERE id=?";
		
		try {
			stmt = con.prepareStatement(query);
			stmt.setString(1, id);
			
			rs = stmt.executeQuery();
			rs.next();
			result = rs.getInt(1);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
		
	}
}
