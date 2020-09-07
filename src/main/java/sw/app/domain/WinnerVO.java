package sw.app.domain;

public class WinnerVO {
	
	private String season;
	private String winner;
	private String loser;
	private String score;
	private String stadium;
	
	public String getSeason() {
		return season;
	}
	public void setSeason(String season) {
		this.season = season;
	}
	public String getWinner() {
		return winner;
	}
	public void setWinner(String winner) {
		this.winner = winner;
	}
	public String getLoser() {
		return loser;
	}
	public void setLoser(String loser) {
		this.loser = loser;
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
		return "WinnerVO [season=" + season + ", winner=" + winner + ", loser=" + loser + ", score=" + score
				+ ", stadium=" + stadium + "]";
	}
}
