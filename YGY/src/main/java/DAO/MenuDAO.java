package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import VO.TypeVO;

public class MenuDAO {
	public ArrayList<TypeVO> list(String type) {
		ArrayList<TypeVO> Tlist = new ArrayList<>();
		Connection con = DBcon.getConnection();
		
		try {
			PreparedStatement stmt = con.prepareStatement("SELECT * FROM type_tbl WHERE type=?");
			stmt.setString(1, type);
			ResultSet rs = stmt.executeQuery();
			while(rs.next()) {
				TypeVO vo = new TypeVO();
				vo.setType(rs.getString("type"));
				vo.setCompanyname(rs.getString("companyname"));
				vo.setArea(rs.getString("area"));
				vo.setCompanytel(rs.getString("companytel"));
				Tlist.add(vo);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return Tlist;
	}
	
	public void InsertType(TypeVO vo) {
		Connection con = DBcon.getConnection();
		
		try {
			PreparedStatement stmt = con.prepareStatement("INSERT INTO type_tbl(type, companyname, area, bossname, companytel, businesslicense, menu, review, information) VALUES(?,?,?,?,?,?,?,?,?)");
			stmt.setString(1, vo.getType());
			stmt.setString(2, vo.getCompanyname());
			stmt.setString(3, vo.getArea());
			stmt.setString(4, vo.getBossname());
			stmt.setString(5, vo.getCompanytel());
			stmt.setString(6, vo.getBusinesslicense());
			stmt.setString(7, vo.getMenu());
			stmt.setString(8, vo.getReview());
			stmt.setString(9, vo.getInformation());
			
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
