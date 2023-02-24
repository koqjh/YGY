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
}
