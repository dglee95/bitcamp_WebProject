package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mysql.cj.protocol.Resultset;

import data.dto.BookingDto;
import db.DbConnect;

public class BookingDao {
	DbConnect db=new DbConnect();
	
	//insert
	public void insertBooking(BookingDto dto) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		String sql="insert into booking values (null,?,?,?,?,?,?,?,now())";
		conn=db.getMysqlConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			//바인딩
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getGender());
			pstmt.setString(3, dto.getBookday());
			pstmt.setInt(4, dto.getInwon());
			pstmt.setString(5, dto.getFoodphoto());
			pstmt.setString(6, dto.getFoodprice());
			pstmt.setString(7, dto.getMessage());
			//실행
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(conn, pstmt);
		}
	}
	
	//전체출력
	public List<BookingDto> getAllBookings(){
		List<BookingDto> list=new ArrayList<>();
		String sql="select * from booking order by num asc";
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		conn=db.getMysqlConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				//while문안에서 dto를 선언해야 while할때마다 생성 됨
				BookingDto dto=new BookingDto();
				dto.setNum(rs.getString("num"));
				dto.setName(rs.getString("name"));
				dto.setGender(rs.getString("gender"));
				dto.setBookday(rs.getString("bookday"));
				dto.setInwon(rs.getInt("inwon"));
				dto.setFoodphoto(rs.getString("foodphoto"));
				dto.setFoodprice(rs.getString("foodprice"));
				dto.setMessage(rs.getString("message"));
				dto.setWriteday(rs.getTimestamp("writeday"));
				
				//리스트에 추가
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
	
	//num에 해당하는 부킹정보 반환
	public BookingDto getBooking(String num)
	{
		BookingDto dto=new BookingDto();
		String sql="select * from booking where num=?";
		
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
				dto.setName(rs.getString("name"));
				dto.setGender(rs.getString("gender"));
				dto.setBookday(rs.getString("bookday"));
				dto.setInwon(rs.getInt("inwon"));
				dto.setFoodphoto(rs.getString("foodphoto"));
				dto.setFoodprice(rs.getString("foodprice"));
				dto.setMessage(rs.getString("message"));
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
	
	//삭제-시퀀스 컬럼으로 삭제해야함
	public void deleteBooking(String num) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql="delete from booking where num=?";
		
		conn=db.getMysqlConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			//바인딩
			pstmt.setString(1, num);
			//실행
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(conn, pstmt);
		}
		
		
	}
	
	//수정
	public void updateBooking(BookingDto dto) {
		
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql="update booking set name=?,gender=?,bookday=?,inwon=?,foodphoto=?,"
				+ "foodprice=?,message=?,writeday=now() where num=?";
		
		conn=db.getMysqlConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			//바인딩
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getGender());
			pstmt.setString(3, dto.getBookday());
			pstmt.setInt(4, dto.getInwon());
			pstmt.setString(5, dto.getFoodphoto());
			pstmt.setString(6, dto.getFoodprice());
			pstmt.setString(7, dto.getMessage());
			pstmt.setString(8, dto.getNum());
			//실행
			pstmt.execute();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(conn, pstmt);
		}
		
		
	}
	
	
}











