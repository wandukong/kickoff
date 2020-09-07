package sw.app.service;

import java.util.List;

import sw.app.domain.FixtureVO;

public interface FixtureService {
	
	public List<FixtureVO> listFixtureEpl(String keyword) throws Exception;
	
	public List<FixtureVO> listFixtureLaliga(String keyword) throws Exception;
	
	public List<FixtureVO> listFixtureBundesliga(String keyword) throws Exception;
	
	public List<FixtureVO> listFixtureSeriea(String keyword) throws Exception;
	
	public List<FixtureVO> listFixtureChamsGS() throws Exception;
	
	public List<FixtureVO> listFixtureChams16() throws Exception;
	
	public List<FixtureVO> listFixtureChams8() throws Exception;
	
	public List<FixtureVO> listFixtureChams4() throws Exception;
	
	public List<FixtureVO> listFixtureChamsF() throws Exception;
}
