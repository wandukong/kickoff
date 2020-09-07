package sw.app.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import sw.app.domain.WinnerVO;
import sw.app.persistence.WinnerDAO;

@Service
public class WinnerServiceImpl implements WinnerService{

	@Inject
	private WinnerDAO dao;
	
	@Override
	public List<WinnerVO> listWinnerChams() throws Exception {
		
		return dao.listWinnerChams();
	}

}
