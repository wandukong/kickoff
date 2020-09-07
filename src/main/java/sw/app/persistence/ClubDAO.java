package sw.app.persistence;

import java.util.List;

import sw.app.domain.ClubVO;

public interface ClubDAO {
	
	public List<ClubVO> listAllEpl() throws Exception;
	
	public List<ClubVO> listAllLaliga() throws Exception;
	
	public List<ClubVO> listAllBundesliga() throws Exception;
	
	public List<ClubVO> listAllSeriea() throws Exception;
	
	public List<ClubVO> listChamsGroup() throws Exception;
}


