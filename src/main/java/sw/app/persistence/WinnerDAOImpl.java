package sw.app.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import sw.app.domain.WinnerVO;

@Repository
public class WinnerDAOImpl implements WinnerDAO{

	@Inject
	private SqlSession session;
	
	private static String namespace ="sw.app.mapper.HistoryMapper";
	
	@Override
	public List<WinnerVO> listWinnerChams() throws Exception {
		
		return session.selectList(namespace+".listWinnerChams");
	}

}
