package sw.app.domain;

public class RecordVO {
	
	private String name;
	private Integer goal;
	private Integer assist;
	private Integer shoot;
	private Integer shootOnTarget;
	private Integer yellowCard;
	private Integer redCard;
	private Integer penaltyKick;
	private Integer offside;
	private Integer passAttempt;
	private Integer passSuccess;
	private Integer matches;
	
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
	public Integer getAssist() {
		return assist;
	}
	public void setAssist(Integer assist) {
		this.assist = assist;
	}
	public Integer getShoot() {
		return shoot;
	}
	public void setShoot(Integer shoot) {
		this.shoot = shoot;
	}
	public Integer getShootOnTarget() {
		return shootOnTarget;
	}
	public void setShootOnTarget(Integer shootOnTarget) {
		this.shootOnTarget = shootOnTarget;
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
	public Integer getPenaltyKick() {
		return penaltyKick;
	}
	public void setPenaltyKick(Integer penaltyKick) {
		this.penaltyKick = penaltyKick;
	}
	public Integer getOffside() {
		return offside;
	}
	public void setOffside(Integer offside) {
		this.offside = offside;
	}
	public Integer getPassAttempt() {
		return passAttempt;
	}
	public void setPassAttempt(Integer passAttempt) {
		this.passAttempt = passAttempt;
	}
	public Integer getPassSuccess() {
		return passSuccess;
	}
	public void setPassSuccess(Integer passSuccess) {
		this.passSuccess = passSuccess;
	}
	public Integer getMatches() {
		return matches;
	}
	public void setMatches(Integer matches) {
		this.matches = matches;
	}
	
	@Override
	public String toString() {
		return "RecordVO [name=" + name + ", goal=" + goal + ", assist=" + assist + ", shoot=" + shoot
				+ ", shootOnTarget=" + shootOnTarget + ", yellowCard=" + yellowCard + ", redCard=" + redCard
				+ ", penaltyKick=" + penaltyKick + ", offside=" + offside + ", passAttempt=" + passAttempt
				+ ", passSuccess=" + passSuccess + ", matches=" + matches + "]";
	}
}
