package sw.app.domain;

import java.sql.Date;
import java.sql.Time;

public class FixtureVO {

	private Integer round;
	private String home;
	private String away;
	private Date date;
	private Time time;
	private String score;
	
	private String stadium;
	
	public Integer getRound() {
		return round;
	}
	public void setRound(Integer round) {
		this.round = round;
	}
	public String getHome() {
		return home;
	}
	public void setHome(String home) {
		this.home = home;
	}
	public String getAway() {
		return away;
	}
	public void setAway(String away) {
		this.away = away;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Time getTime() {
		return time;
	}
	public void setTime(Time time) {
		this.time = time;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getStadium() {
		return stadium;
	}
	public void setStadium(String stadium) {
		this.stadium = stadium;
	}
	
	@Override
	public String toString() {
		return "FixtureVO [round=" + round + ", home=" + home + ", away=" + away + ", date=" + date + ", time=" + time
				+ ", score=" + score + ", stadium=" + stadium + "]";
	}
	
}
