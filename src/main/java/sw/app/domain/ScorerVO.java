package sw.app.domain;

public class ScorerVO {

	private String name;
	private Integer goal;
	private Integer matches;
	private String year;
	private String club;
	private String country;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getGoal() {
		return goal;
	}
	public void setGoal(Integer goal) {
		this.goal = goal;
	}
	public Integer getMatches() {
		return matches;
	}
	public void setMatches(Integer matches) {
		this.matches = matches;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getClub() {
		return club;
	}
	public void setClub(String club) {
		this.club = club;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	@Override
	public String toString() {
		return "ScorerVO [name=" + name + ", goal=" + goal + ", matches=" + matches + ", year=" + year + ", club="
				+ club + ", country=" + country + "]";
	}
}
