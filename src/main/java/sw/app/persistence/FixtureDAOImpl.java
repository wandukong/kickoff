package sw.app.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import sw.app.domain.FixtureVO;

@Repository
public class FixtureDAOImpl implements FixtureDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace ="sw.app.mapper.FixtureMapper";
	
	public List<FixtureVO> listFixtureEpl(String keyword) throws Exception {
		
		return session.selectList(namespace+".listFixtureEpl",keyword);
	}

	@Override
	public List<FixtureVO> listFixtureLaliga(String keyword) throws Exception {
		
		return session.selectList(namespace+".listFixtureLaliga",keyword);
	}

	@Override
	public List<FixtureVO> listFixtureBundesliga(String keyword) throws Exception {
		
		return session.selectList(namespace+".listFixtureBundesliga",keyword);
	}

	@Override
	public List<FixtureVO> listFixtureSeriea(String keyword) throws Exception {
		
		return session.selectList(namespace+".listFixtureSeriea",keyword);
	}

	@Override
	public List<FixtureVO> listFixtureChamsGS() throws Exception {
		
		return session.selectList(namespace+".listFixtureChamsGS");
	}

	@Override
	public List<FixtureVO> listFixtureChams16() throws Exception {
		
		return session.selectList(namespace+".listFixtureChams16");
	}

	@Override
	public List<FixtureVO> listFixtureChams8() throws Exception {

		return session.selectList(namespace+".listFixtureChams8");
	}

	@Override
	public List<FixtureVO> listFixtureChams4() throws Exception {

		return session.selectList(namespace+".listFixtureChams4");
	}

	@Override
	public List<FixtureVO> listFixtureChamsF() throws Exception {

		return session.selectList(namespace+".listFixtureChamsF");
	}
}
