package sw.app.service;

import java.util.List;

import sw.app.domain.RoundVO;

public interface RoundService {

	public List<RoundVO> listRoundEpl(String home, String away, Integer round) throws Exception;
}
