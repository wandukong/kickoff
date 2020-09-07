package sw.app.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import sw.app.domain.ScorerVO;

@Repository
public class ScorerDAOImpl implements ScorerDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace ="sw.app.mapper.HistoryMapper";

	@Override
	public List<ScorerVO> listScorerChams() throws Exception {
		
		return session.selectList(namespace+".listScorerChams");
	}
}
