package jdbc_p;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class NoticeDAO {
	
	Connection con;
	Statement stmt;
	ResultSet rs;
	String sql;
	
	public NoticeDAO() {
		String url = "jdbc:mariadb://localhost:3306/comstudy"; // 경로는 커넥터가 지정
		String username = "user21";
		String password = "1234";
		
		try {
			Class.forName("org.mariadb.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, password);
			
			stmt = con.createStatement();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public ArrayList<NoticeDTO> list() {
		ArrayList<NoticeDTO> res = new ArrayList<NoticeDTO>();
		
		sql = "SELECT * FROM notice";
		
		try {
			rs = stmt.executeQuery(sql);

			while(rs.next()) {
				NoticeDTO noti = new NoticeDTO();
				
				noti.setNo(rs.getInt("no"));
				noti.setTitle(rs.getString("title"));
				noti.setName(rs.getString("name"));
				noti.setDate(rs.getString("date"));
				noti.setCount(rs.getInt("count"));
				
				res.add(noti);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		
		return res;
	}
	
	public void close() {
		if (rs!=null) try { rs.close(); } catch (SQLException e) {e.printStackTrace();}
		if (stmt!=null) try { stmt.close(); } catch (SQLException e) {e.printStackTrace();}
		if (con!=null) try { con.close(); } catch (SQLException e) {e.printStackTrace();}
	}
	
}
