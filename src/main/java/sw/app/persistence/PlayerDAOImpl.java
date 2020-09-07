package sw.app.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import sw.app.domain.PlayerVO;

@Repository
public class PlayerDAOImpl implements PlayerDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace ="sw.app.mapper.PlayerMapper";

	@Override
	public List<PlayerVO> listPlayerEpl(String club) throws Exception {
		
		return session.selectList(namespace+".listPlayerEpl",club);
	}

	@Override
	public List<PlayerVO> listPlayerLaliga(String club) throws Exception {
		
		return session.selectList(namespace+".listPlayerLaliga");
	}

	@Override
	public List<PlayerVO> listPlayerBundesliga(String club) throws Exception {
		
		return session.selectList(namespace+".listPlayerBundesliga");
	}

	@Override
	public List<PlayerVO> listPlayerSeriea(String club) throws Exception {
		
		return session.selectList(namespace+".listPlayerSeriea");
	}

}
