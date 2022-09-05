package data.day0819;

import java.util.ArrayList;
import java.util.List;

import data.dto.FoodDto;

public class MyFood {
	List<FoodDto> list=new ArrayList<>();
	
	public MyFood() {
		list.add(new FoodDto(10, "샌드위치", "1.jpg", 19000, "2022-10-10"));
		list.add(new FoodDto(20, "닭꼬치", "2.jpg", 11000, "2022-05-01"));
		list.add(new FoodDto(30, "망고빙수", "11.jpg", 13000, "2022-12-25"));
		list.add(new FoodDto(40, "순두부라면", "12.jpg", 14000, "2022-11-10"));
		list.add(new FoodDto(50, "햄마요덮밥", "10.jpg", 9000, "2022-10-19"));
	}

	public List<FoodDto> getFoodList(){
		return list;
	}
}
