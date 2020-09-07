package sw.app.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import sw.app.domain.ScorerVO;
import sw.app.persistence.ScorerDAO;

@Service
public class ScorerServiceImpl implements ScorerService{

	@Inject
	private ScorerDAO dao;
	
	@Override
	public List<ScorerVO> listScorerChams() throws Exception {
		
		return dao.listScorerChams();
	}

}
