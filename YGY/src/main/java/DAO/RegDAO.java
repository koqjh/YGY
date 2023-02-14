package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
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
}
