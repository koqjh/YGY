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
			stmt = con.prepareStatement("INSERT INTO person_tbl(id, pw, name, tel) VALUES(?, ?, ?, ?)");
			stmt.setString(1, vo.getId());
			stmt.setString(2, vo.getPw());
			stmt.setString(3, vo.getName());
			stmt.setInt(4, vo.getTel());
			
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void bossInsert(BossVO vo) {
		Connection con = DBcon.getConnection();
		
		PreparedStatement stmt;
		
		try {
			stmt = con.prepareStatement("INSERT INTO boss_tbl(id, pw, bossname, tel) VALUES(?, ?, ?, ?)");
			stmt.setString(1, vo.getId());
			stmt.setString(2, vo.getPw());
			stmt.setString(3, vo.getBossname());
			stmt.setInt(4, vo.getTel());
			
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
		
		String query = "SELECT COUNT(*) FROM person_tbl WHERE id=?";
		
		try {
			stmt = con.prepareStatement(query);
			stmt.setString(1, id);			
			rs = stmt.executeQuery();
			System.out.println("오겠냐");
			rs.next();
			result = rs.getInt("COUNT(*)");
			System.out.println("result : " + result);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
		
	}
	
	public int login(String id, String pw) {
		Connection con = DBcon.getConnection();
		ResultSet rs = null;
		
		int result = 0;
		
		PreparedStatement stmt;
		try {
			stmt = con.prepareStatement("SELECT * FROM person_tbl WHERE id=? AND pw=?");
			stmt.setString(1, id);
			stmt.setString(2, pw);
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				result = 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return result;
	}
	
	public int bossidcheck(String id) {
		Connection con = DBcon.getConnection();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		
		int result = 0;
		
		String query = "SELECT COUNT(*) FROM boss_tbl WHERE id=?";
		
		try {
			stmt = con.prepareStatement(query);
			stmt.setString(1, id);			
			rs = stmt.executeQuery();
			System.out.println("오겠냐");
			rs.next();
			result = rs.getInt("COUNT(*)");
			System.out.println("result : " + result);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
		
	}
	
	public int bosslogin(String id, String pw) {
		Connection con = DBcon.getConnection();
		ResultSet rs = null;
		
		int result = 0;
		
		PreparedStatement stmt;
		try {
			stmt = con.prepareStatement("SELECT * FROM boss_tbl WHERE id=? AND pw=?");
			stmt.setString(1, id);
			stmt.setString(2, pw);
			rs = stmt.executeQuery();
			
			if(rs.next()) {
				result = 1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}		
		return result;
	}
}
