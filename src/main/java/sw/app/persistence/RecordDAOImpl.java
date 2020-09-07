package sw.app.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import sw.app.domain.RecordVO;

@Repository
public class RecordDAOImpl implements RecordDAO{

	@Inject
	private SqlSession session;
	
	private static String namespace ="sw.app.mapper.RecordMapper";
	
	@Override
	public List<RecordVO> listRecordEpl() throws Exception {
		
		return session.selectList(namespace+".listRecordEpl");
	}

	@Override
	public List<RecordVO> listRecordLaliga() throws Exception {

		return session.selectList(namespace+".listRecordLaliga");
	}

	@Override
	public List<RecordVO> listRecordBundesliga() throws Exception {

		return session.selectList(namespace+".listRecordBundesliga");
	}

	@Override
	public List<RecordVO> listRecordSeriea() throws Exception {
	
		return session.selectList(namespace+".listRecordSeriea");
	}
	
	@Override
	public List<RecordVO> listChamsGoal() throws Exception {
		
		return session.selectList(namespace+".listChamsGoal");
	}
	
	@Override
	public List<RecordVO> listChamsAssist() throws Exception {
		
		return session.selectList(namespace+".listChamsAssist");
	}
	
	@Override
	public List<RecordVO> listChamsPass() throws Exception {
		
		return session.selectList(namespace+".listChamsPass");
	}
}
