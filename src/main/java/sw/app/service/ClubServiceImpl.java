package sw.app.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import sw.app.domain.ClubVO;
import sw.app.persistence.ClubDAO;

@Service
public class ClubServiceImpl implements ClubService {

	@Inject
	private ClubDAO dao;
	
	@Override
	public List<ClubVO> listAllEpl() throws Exception {
		
		return dao.listAllEpl();
	}

	@Override
	public List<ClubVO> listAllLaliga() throws Exception {
		
		return dao.listAllLaliga();
	}

	@Override
	public List<ClubVO> listAllBundesliga() throws Exception {
		
		return dao.listAllBundesliga();
	}

	@Override
	public List<ClubVO> listAllSeriea() throws Exception {
		
		return dao.listAllSeriea();
	}

	@Override
	public List<ClubVO> listChamsGroup() throws Exception {

		return dao.listChamsGroup();
	}

}
