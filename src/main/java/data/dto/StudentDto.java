package data.dto;

public class StudentDto {
	private String name;
	private String address;
	private int score;
	
	public StudentDto() {
		super();
	}

	public StudentDto(String name, String address, int score) {
		super();
		this.name = name;
		this.address = address;
		this.score = score;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getScore() {
		return score;
	}

	public void setScore(int score) {
		this.score = score;
	}
	
	
	
}
