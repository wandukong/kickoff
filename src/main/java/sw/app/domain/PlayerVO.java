package sw.app.domain;

import java.sql.Date;

public class PlayerVO {
	
	private String name;
	private	Integer backNum;
	private String position;
	private Date birth;
	private String country;
	private Integer height;
	private Integer weight;
	
	private String stadium;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getBackNum() {
		return backNum;
	}
	public void setBackNum(Integer backNum) {
		this.backNum = backNum;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
		this.birth = birth;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public Integer getHeight() {
		return height;
	}
	public void setHeight(Integer height) {
		this.height = height;
	}
	public Integer getWeight() {
		return weight;
	}
	public void setWeight(Integer weight) {
		this.weight = weight;
	}
	public String getStadium() {
		return stadium;
	}
	public void setStadium(String stadium) {
		this.stadium = stadium;
	}
	
	@Override
	public String toString() {
		return "PlayerVO [name=" + name + ", backNum=" + backNum + ", position=" + position
				+ ", birth=" + birth + ", country=" + country + ", height=" + height + ", weight=" + weight
				+ ", stadium=" + stadium + "]";
	}
}
