package sw.app.persistence;

import java.util.List;

import sw.app.domain.ScorerVO;

public interface ScorerDAO {
	
	public List<ScorerVO> listScorerChams() throws Exception;

}
