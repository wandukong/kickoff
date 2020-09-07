package sw.app.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import sw.app.domain.PlayerVO;
import sw.app.persistence.PlayerDAO;

@Service
public class PlayerServiceImpl implements PlayerService{

	@Inject
	private PlayerDAO dao;
	
	@Override
	public List<PlayerVO> listPlayerEpl(String club) throws Exception {

		return dao.listPlayerEpl(club);
	}

	@Override
	public List<PlayerVO> listPlayerLaliga(String club) throws Exception {
		
		return dao.listPlayerLaliga(club);
	}

	@Override
	public List<PlayerVO> listPlayerBundesliga(String club) throws Exception {
	
		return dao.listPlayerBundesliga(club);
	}

	@Override
	public List<PlayerVO> listPlayerSeriea(String club) throws Exception {
		
		return dao.listPlayerSeriea(club);
	}

}
