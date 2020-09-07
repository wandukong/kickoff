package sw.app.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import sw.app.domain.FixtureVO;
import sw.app.persistence.FixtureDAO;

@Service
public class FixtureServiceImpl implements FixtureService{
	
	@Inject
	private FixtureDAO dao;

	@Override
	public List<FixtureVO> listFixtureEpl(String keyword) throws Exception {
		
		return dao.listFixtureEpl(keyword);
	}

	@Override
	public List<FixtureVO> listFixtureLaliga(String keyword) throws Exception {
		
		return dao.listFixtureLaliga(keyword);
	}

	@Override
	public List<FixtureVO> listFixtureBundesliga(String keyword) throws Exception {
		
		return dao.listFixtureBundesliga(keyword);
	}

	@Override
	public List<FixtureVO> listFixtureSeriea(String keyword) throws Exception {
		
		return dao.listFixtureSeriea(keyword);
	}

	@Override
	public List<FixtureVO> listFixtureChamsGS() throws Exception {
		
		return dao.listFixtureChamsGS();
	}

	@Override
	public List<FixtureVO> listFixtureChams16() throws Exception {
		
		return dao.listFixtureChams16();
	}

	@Override
	public List<FixtureVO> listFixtureChams8() throws Exception {
		
		return dao.listFixtureChams8();
	}

	@Override
	public List<FixtureVO> listFixtureChams4() throws Exception {
		
		return dao.listFixtureChams4();
	}

	@Override
	public List<FixtureVO> listFixtureChamsF() throws Exception {
		
		return dao.listFixtureChamsF();
	}

}
