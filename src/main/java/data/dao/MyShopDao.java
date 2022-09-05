package data.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import data.dto.MyShopDto;
import db.DbConnect;

public class MyShopDao {
	DbConnect db=new DbConnect();
	
	//상품명으로 조회
	public List<MyShopDto> getSearchSangpums(String sangpum) {
		List<MyShopDto> list=new Vector<>();
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="select * from myshop where sangpum like ? order by num desc";
		
		//db연결
		conn=db.getMysqlConnection();
		//pstmt 생성
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, "%"+sangpum+"%");
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				//db에서 가져와서 dto에 담기 (순서 상관없음)
				MyShopDto dto=new MyShopDto();
				dto.setNum(rs.getString("num"));
				dto.setSangpum(rs.getString("sangpum"));
				dto.setPhoto(rs.getString("photo"));
				dto.setColor(rs.getString("color"));
				dto.setPrice(rs.getInt("price"));
				dto.setIpgoday(rs.getString("ipgoday"));
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
	
	//전체 데이터 조회
	public List<MyShopDto> getAllSangpums() {
		List<MyShopDto> list=new Vector<>();
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="select * from myshop order by price asc";
		
		//db연결
		conn=db.getMysqlConnection();
		//pstmt 생성
		try {
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				//db에서 가져와서 dto에 담기 (순서 상관없음)
				MyShopDto dto=new MyShopDto();
				dto.setNum(rs.getString("num"));
				dto.setSangpum(rs.getString("sangpum"));
				dto.setPhoto(rs.getString("photo"));
				dto.setColor(rs.getString("color"));
				dto.setPrice(rs.getInt("price"));
				dto.setIpgoday(rs.getString("ipgoday"));
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
	
	//insert
	public void insertShop(MyShopDto dto) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql="insert into myshop values (null,?,?,?,?,?,now())";
		
		//db연결
		conn=db.getMysqlConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			//바인딩
			pstmt.setString(1, dto.getSangpum());
			pstmt.setString(2, dto.getPhoto());
			pstmt.setString(3, dto.getColor());
			pstmt.setInt(4, dto.getPrice());
			pstmt.setString(5, dto.getIpgoday());
			//실행
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(conn, pstmt);
		}
	}
	
	//num에 해당하는 dto 반환
	public MyShopDto getSangpum(String num) {
		MyShopDto dto=new MyShopDto();
		Connection conn=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql="select * from myshop where num=?";
		
		//db연결
		conn=db.getMysqlConnection();
		//pstmt 생성
		try {
			pstmt=conn.prepareStatement(sql);
			//바인딩
			pstmt.setString(1, num);
			
			rs=pstmt.executeQuery();
			if(rs.next())
			{
				//db에서 가져와서 dto에 담기 (순서 상관없음)
				dto.setNum(rs.getString("num"));
				dto.setSangpum(rs.getString("sangpum"));
				dto.setPhoto(rs.getString("photo"));
				dto.setColor(rs.getString("color"));
				dto.setPrice(rs.getInt("price"));
				dto.setIpgoday(rs.getString("ipgoday"));
				dto.setWriteday(rs.getTimestamp("writeday"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(conn, pstmt, rs);
		}
		return dto;
	}
	
	//dto를 받아서 수정
	public void updateShop(MyShopDto dto) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql="update myshop set sangpum=?,photo=?,color=?,price=?,ipgoday=? where num=?";
		
		//db연결
		conn=db.getMysqlConnection();
		try {
			pstmt=conn.prepareStatement(sql);
			//바인딩
			pstmt.setString(1, dto.getSangpum());
			pstmt.setString(2, dto.getPhoto());
			pstmt.setString(3, dto.getColor());
			pstmt.setInt(4, dto.getPrice());
			pstmt.setString(5, dto.getIpgoday());
			pstmt.setString(6, dto.getNum());
			//실행
			pstmt.execute();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			db.dbClose(conn, pstmt);
		}
	}
	
	//삭제
	public void deleteShop(String num) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		String sql="delete from myshop where num=?";
		
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
}












