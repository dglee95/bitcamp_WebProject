package data.dto;

import java.sql.Date;
import java.sql.Timestamp;

public class SubwayUserDto {
	private String num;
	private String myirum;
	private String myid;
	private String mypass;
	private String myhp;
	private String mynick;
	private Date birthday;
	private int birthiden;
	private String myaddr;
	private String power;
	private String myphoto;
	private Timestamp register;
	
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	
	public String getMyirum() {
		return myirum;
	}
	public void setMyirum(String myirum) {
		this.myirum = myirum;
	}
	public String getMyid() {
		return myid;
	}
	public void setMyid(String myid) {
		this.myid = myid;
	}
	public String getMypass() {
		return mypass;
	}
	public void setMypass(String mypass) {
		this.mypass = mypass;
	}
	public String getMyhp() {
		return myhp;
	}
	public void setMyhp(String myhp) {
		this.myhp = myhp;
	}
	public String getMynick() {
		return mynick;
	}
	public void setMynick(String mynick) {
		this.mynick = mynick;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public int getBirthiden() {
		return birthiden;
	}
	public void setBirthiden(int birthiden) {
		this.birthiden = birthiden;
	}
	public String getMyaddr() {
		return myaddr;
	}
	public void setMyaddr(String myaddr) {
		this.myaddr = myaddr;
	}
	public String getPower() {
		return power;
	}
	public void setPower(String power) {
		this.power = power;
	}
	public String getMyphoto() {
		return myphoto;
	}
	public void setMyphoto(String myphoto) {
		this.myphoto = myphoto;
	}
	public Timestamp getRegister() {
		return register;
	}
	public void setRegister(Timestamp register) {
		this.register = register;
	}
	
	
	
	
}
