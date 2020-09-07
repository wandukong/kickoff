package sw.app.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import sw.app.domain.RoundVO;
import sw.app.persistence.RoundDAO;

@Service
public class RoundServiceImpl implements RoundService{

	@Inject
	public RoundDAO dao;
	
	@Override
	public List<RoundVO> listRoundEpl(String home, String away, Integer round) throws Exception {
		
		return dao.listRoundEpl(home, away, round);
	}

}
