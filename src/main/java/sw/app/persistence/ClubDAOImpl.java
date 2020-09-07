package sw.app.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import sw.app.domain.ClubVO;

@Repository
public class ClubDAOImpl implements ClubDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace ="sw.app.mapper.ClubMapper";
	
	@Override
	public List<ClubVO> listAllEpl() throws Exception {
		
		return session.selectList(namespace+".listAllEpl");
	}

	@Override
	public List<ClubVO> listAllLaliga() throws Exception {
		
		return session.selectList(namespace+".listAllLaliga");
	}

	@Override
	public List<ClubVO> listAllBundesliga() throws Exception {
		
		return session.selectList(namespace+".listAllBundesliga");
	}

	@Override
	public List<ClubVO> listAllSeriea() throws Exception {
	
		return session.selectList(namespace+".listAllSeriea");
	}

	@Override
	public List<ClubVO> listChamsGroup() throws Exception {
		
		return session.selectList(namespace+".listChamsGroup");
	}
}
