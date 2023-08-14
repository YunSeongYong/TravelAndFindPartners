package companionBoard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dbutil.DBUtil;

public class TravelDAO {
	public List<Travel> getList(String inputId) throws SQLException {
		String sql = "SELECT travel_id, member_id, memo FROM travel WHERE member_id = ?";
		List<Travel> list = new ArrayList<Travel>();
		
		Connection conn = null;
		PreparedStatement stmt = null;
		ResultSet rs = null;

		try {
			conn = DBUtil.getConnection();
			stmt = conn.prepareStatement(sql);
			stmt.setString(1, inputId);
			rs = stmt.executeQuery();
			
			while (rs.next()) {
				
				int no = rs.getInt("travel_id");
				String id = rs.getString("member_id");
				String title = rs.getString("memo");
				
				Travel travel = new Travel(no, id, title);
				
				list.add(travel);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DBUtil.close(stmt);
			DBUtil.close(conn);
			DBUtil.close(rs);
		}
		return list;
	}
}
