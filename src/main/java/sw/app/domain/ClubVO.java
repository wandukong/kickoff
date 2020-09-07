package sw.app.domain;

public class ClubVO {
	
	private String club;
	private String groupf;
	private Integer win;
	private Integer draw;
	private Integer lose;
	private Integer gf;
	private Integer ga;
	private String manager;
	private String stadium;
	private String location;
	
	public String getClub() {
		return club;
	}
	public void setClub(String club) {
		this.club = club;
	}
	public String getGroupf() {
		return groupf;
	}
	public void setGroupf(String groupf) {
		this.groupf = groupf;
	}
	public Integer getWin() {
		return win;
	}
	public void setWin(Integer win) {
		this.win = win;
	}
	public Integer getDraw() {
		return draw;
	}
	public void setDraw(Integer draw) {
		this.draw = draw;
	}
	public Integer getLose() {
		return lose;
	}
	public void setLose(Integer lose) {
		this.lose = lose;
	}
	public Integer getGf() {
		return gf;
	}
	public void setGf(Integer gf) {
		this.gf = gf;
	}
	public Integer getGa() {
		return ga;
	}
	public void setGa(Integer ga) {
		this.ga = ga;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getStadium() {
		return stadium;
	}
	public void setStadium(String stadium) {
		this.stadium = stadium;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	@Override
	public String toString() {
		return "ClubVO [club=" + club + ", groupf=" + groupf + ", win=" + win + ", draw=" + draw + ", lose=" + lose
				+ ", gf=" + gf + ", ga=" + ga + ", manager=" + manager + ", stadium=" + stadium + ", location="
				+ location + "]";
	}
		
}
