package data.dto;

import java.sql.Timestamp;

public class BookingDto {
	private String num;
	private String name;
	private String gender;
	private String bookday;
	private int inwon;
	private String foodphoto;
	private String foodprice;
	private String message;
	private Timestamp writeday;
	
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBookday() {
		return bookday;
	}
	public void setBookday(String bookday) {
		this.bookday = bookday;
	}
	public int getInwon() {
		return inwon;
	}
	public void setInwon(int inwon) {
		this.inwon = inwon;
	}
	public String getFoodphoto() {
		return foodphoto;
	}
	public void setFoodphoto(String foodphoto) {
		this.foodphoto = foodphoto;
	}
	public String getFoodprice() {
		return foodprice;
	}
	public void setFoodprice(String foodprice) {
		this.foodprice = foodprice;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public Timestamp getWriteday() {
		return writeday;
	}
	public void setWriteday(Timestamp writeday) {
		this.writeday = writeday;
	}
	
	

}