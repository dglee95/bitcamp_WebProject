package data.dto;

public class FoodDto {
	private int no;
	private String foodName;
	private String foodPhoto;
	private int price;
	private String day;
	
	public FoodDto() {
		super();
	}

	public FoodDto(int no, String foodName, String foodPhoto, int price, String day) {
		super();
		this.no = no;
		this.foodName = foodName;
		this.foodPhoto = foodPhoto;
		this.price = price;
		this.day = day;
	}



	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getFoodName() {
		return foodName;
	}

	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}
	
	public String getFoodPhoto() {
		return foodPhoto;
	}

	public void setFoodPhoto(String foodPhoto) {
		this.foodPhoto = foodPhoto;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getDay() {
		return day;
	}

	public void setDay(String day) {
		this.day = day;
	}
	
	
}
