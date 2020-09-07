package sw.app.persistence;

import java.util.List;

import sw.app.domain.RoundVO;

public interface RoundDAO {

	public List<RoundVO> listRoundEpl(String home, String away, Integer round) throws Exception;

}
