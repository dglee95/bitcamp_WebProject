package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import data.dto.SubwayUserDto;
import db.DbConnect;

public class SubwayUserDao {
	DbConnect db=new DbConnect();
	
	//어드민 찾기
	public List<SubwayUserDto> searchId(String myid) {
		List<SubwayUserDto> list=new ArrayList<>();
		String sql="select * from subwayuser where myid=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		conn=db.getMysqlConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, myid);
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				SubwayUserDto dto=new SubwayUserDto();
				dto.setNum(rs.getString("num"));
				dto.setMyirum(rs.getString("myirum"));
				dto.setMyid(rs.getString("myid"));
				dto.setMypass(rs.getString("mypass"));
				dto.setMyhp(rs.getString("myhp"));
				dto.setMynick(rs.getString("mynick"));
				dto.setBirthday(rs.getDate("birthday"));
				dto.setBirthiden(rs.getInt("birthiden"));
				dto.setMyaddr(rs.getString("myaddr"));
				dto.setPower(rs.getString("power"));
				dto.setMyphoto(rs.getString("myphoto"));
				dto.setRegister(rs.getTimestamp("register"));
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(conn, pstmt, rs);
		}
		return list;
	}
}
