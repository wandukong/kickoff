package sw.app.domain;

public class RoundVO {
	
	private String name;
	private String position;
	private Integer backNum;
	private Integer inTime;
	private Integer outTime;
	private Integer goal;
	private Integer assist;
	private Integer yellowCard;
	private Integer redCard;
	private Integer homeAway;
		
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public Integer getBackNum() {
		return backNum;
	}
	public void setBackNum(Integer backNum) {
		this.backNum = backNum;
	}
	public Integer getInTime() {
		return inTime;
	}
	public void setInTime(Integer inTime) {
		this.inTime = inTime;
	}
	public Integer getOutTime() {
		return outTime;
	}
	public void setOutTime(Integer outTime) {
		this.outTime = outTime;
	}
	public Integer getGoal() {
		return goal;
	}
	public void setGoal(Integer goal) {
		this.goal = goal;
	}
	public Integer getAssist() {
		return assist;
	}
	public void setAssist(Integer assist) {
		this.assist = assist;
	}
	public Integer getYellowCard() {
		return yellowCard;
	}
	public void setYellowCard(Integer yellowCard) {
		this.yellowCard = yellowCard;
	}
	public Integer getRedCard() {
		return redCard;
	}
	public void setRedCard(Integer redCard) {
		this.redCard = redCard;
	}
	public Integer getHomeAway() {
		return homeAway;
	}
	public void setHomeAway(Integer homeAway) {
		this.homeAway = homeAway;
	}
	
	@Override
	public String toString() {
		return "RoundVO [name=" + name + ", position=" + position + ", backNum=" + backNum + ", inTime=" + inTime
				+ ", outTime=" + outTime + ", goal=" + goal + ", assist=" + assist + ", yellowCard=" + yellowCard
				+ ", redCard=" + redCard + ", homeAway=" + homeAway + "]";
	}
	
}
