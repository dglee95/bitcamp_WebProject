package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import data.dto.SubwayDto;
import db.DbConnect;

public class SubwayDao {
	DbConnect db=new DbConnect();
	
	//insert
	public void insertSubway(SubwayDto dto) {
		String sql="insert into subway values (null,?,?,?,?,?,now())";
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		conn=db.getMysqlConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getOaddr());
			pstmt.setString(2, dto.getNaddr());
			pstmt.setString(3, dto.getLine());
			pstmt.setString(4, dto.getStation());
			pstmt.setString(5, dto.getManager());
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			db.dbClose(conn, pstmt);
		}
	}
	
	//paging list
	public List<SubwayDto> getPagingSubway(int startNum,int perPage){
		List<SubwayDto> list=new ArrayList<>();
		String sql="select * from subway order by num desc limit ?,?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		conn=db.getMysqlConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1, startNum);
			pstmt.setInt(2, perPage);
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				SubwayDto dto=new SubwayDto();
				dto.setNum(rs.getString("num"));
				dto.setOaddr(rs.getString("oaddr"));
				dto.setNaddr(rs.getString("naddr"));
				dto.setLine(rs.getString("line"));
				dto.setStation(rs.getString("station"));
				dto.setManager(rs.getString("manager"));
				dto.setWriteday(rs.getTimestamp("writeday"));
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(conn, pstmt, rs);
		}
		return list;
	}
	
		//getAll
		public List<SubwayDto> getAllSubway(){
			List<SubwayDto> list=new ArrayList<>();
			String sql="select * from subway order by writeday desc";
			Connection conn=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			conn=db.getMysqlConnection();
			try {
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				while(rs.next())
				{
					SubwayDto dto=new SubwayDto();
					dto.setNum(rs.getString("num"));
					dto.setOaddr(rs.getString("oaddr"));
					dto.setNaddr(rs.getString("naddr"));
					dto.setLine(rs.getString("line"));
					dto.setStation(rs.getString("station"));
					dto.setManager(rs.getString("manager"));
					dto.setWriteday(rs.getTimestamp("writeday"));
					list.add(dto);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				db.dbClose(conn, pstmt, rs);
			}
			return list;
		}
		
	
	//one select
	public List<SubwayDto> getSubway(String station) {
		List<SubwayDto> list=new ArrayList<>();
		String sql="select * from subway where station=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		conn=db.getMysqlConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, station);
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				SubwayDto dto=new SubwayDto();
				dto.setNum(rs.getString("num"));
				dto.setOaddr(rs.getString("oaddr"));
				dto.setNaddr(rs.getString("naddr"));
				dto.setLine(rs.getString("line"));
				dto.setStation(rs.getString("station"));
				dto.setManager(rs.getString("manager"));
				dto.setWriteday(rs.getTimestamp("writeday"));
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
	
	//one select
		public SubwayDto getSubwayNum(String num) {
			SubwayDto dto=new SubwayDto();
			String sql="select * from subway where num=?";
			Connection conn=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			
			conn=db.getMysqlConnection();
			try {
				pstmt=conn.prepareStatement(sql);
				pstmt.setString(1, num);
				rs=pstmt.executeQuery();
				if(rs.next())
				{
					dto.setNum(rs.getString("num"));
					dto.setOaddr(rs.getString("oaddr"));
					dto.setNaddr(rs.getString("naddr"));
					dto.setLine(rs.getString("line"));
					dto.setStation(rs.getString("station"));
					dto.setManager(rs.getString("manager"));
					dto.setWriteday(rs.getTimestamp("writeday"));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				db.dbClose(conn, pstmt, rs);
			}
			return dto;
		}
	
	//update
	public void updateSubway(SubwayDto dto) {
		String sql="update subway set oaddr=?,naddr=?,line=?,station=?,manager=?,writeday=now() where num=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		conn=db.getMysqlConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getOaddr());
			pstmt.setString(2, dto.getNaddr());
			pstmt.setString(3, dto.getLine());
			pstmt.setString(4, dto.getStation());
			pstmt.setString(5, dto.getManager());
			pstmt.setString(6, dto.getNum());
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(conn, pstmt);
		}
	}
	
	//delete
	public void deleteSubway(String num) {
		String sql="delete from subway where num=?";
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		conn=db.getMysqlConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, num);
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(conn, pstmt);
		}
	}
	
	//검색값으로 조회
	public List<SubwayDto> getSearchSubway(String where,String search) {
		List<SubwayDto> list=new Vector<>();
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="";
		if(where.equals("station")) {
			sql="select * from subway where station like ? order by num asc";
		}else if(where.equals("naddr")) {
			sql="select * from subway where naddr like ? order by num asc";	
		}else {
			sql="select * from subway where line like ? order by num asc";
		}
		
		//db연결
		conn=db.getMysqlConnection();
		//pstmt 생성
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+search+"%");
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				//db에서 가져와서 dto에 담기 (순서 상관없음)
				SubwayDto dto=new SubwayDto();
				dto.setNum(rs.getString("num"));
				dto.setOaddr(rs.getString("oaddr"));
				dto.setNaddr(rs.getString("naddr"));
				dto.setLine(rs.getString("line"));
				dto.setStation(rs.getString("station"));
				dto.setManager(rs.getString("manager"));
				dto.setWriteday(rs.getTimestamp("writeday"));
				
				//list에 추가
				list.add(dto);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(conn, pstmt, rs);
		}
		
		return list;
	}
	
	//가장 최근에 추가되 글의 num값 얻기
	public int getMaxNum()
	{
		int max=0;
		String sql="select max(num) max from subway";
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		conn=db.getMysqlConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next()) {
			max=rs.getInt("max");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(conn, pstmt, rs);
		}
		return max;
	}
	
	//전체갯수 반환
		public int getTotalCount() {
			Connection conn=null;
			PreparedStatement pstmt=null;
			ResultSet rs=null;
			int total=0;
			String sql="select count(*) from subway";
			
			conn=db.getMysqlConnection();
			try {
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				if(rs.next()) {
					total=rs.getInt(1);//1번열
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				db.dbClose(conn, pstmt, rs);
			}
			return total;
		}
}
