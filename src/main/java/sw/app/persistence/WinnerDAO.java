package sw.app.persistence;

import java.util.List;

import sw.app.domain.WinnerVO;

public interface WinnerDAO {
	
	public List<WinnerVO> listWinnerChams() throws Exception;
}
