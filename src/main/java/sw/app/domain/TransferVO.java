package sw.app.domain;

public class TransferVO {
	
	private String name;
	private Integer age;
	private float price;
	private String preClub;
	private String club;
	private Integer preLeague;
	private Integer league;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getAge() {
		return age;
	}
	public void setAge(Integer age) {
		this.age = age;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getPreClub() {
		return preClub;
	}
	public void setPreClub(String preClub) {
		this.preClub = preClub;
	}
	public String getClub() {
		return club;
	}
	public void setClub(String club) {
		this.club = club;
	}
	public Integer getPreLeague() {
		return preLeague;
	}
	public void setPreLeague(Integer preLeague) {
		this.preLeague = preLeague;
	}
	public Integer getLeague() {
		return league;
	}
	public void setLeague(Integer league) {
		this.league = league;
	}
	
	@Override
	public String toString() {
		return "TransferVO [name=" + name + ", age=" + age + ", price=" + price + ", preClub=" + preClub + ", club=" + club + ", preLeague=" + preLeague + ", league="
				+ league + "]";
	}

}
