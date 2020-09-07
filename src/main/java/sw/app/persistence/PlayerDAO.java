package sw.app.persistence;

import java.util.List;

import sw.app.domain.PlayerVO;

public interface PlayerDAO {

public List<PlayerVO> listPlayerEpl(String club) throws Exception;
	
	public List<PlayerVO> listPlayerLaliga(String club) throws Exception;
	
	public List<PlayerVO> listPlayerBundesliga(String club) throws Exception;
	
	public List<PlayerVO> listPlayerSeriea(String club) throws Exception;
}
