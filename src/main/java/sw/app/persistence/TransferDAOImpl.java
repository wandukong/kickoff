package sw.app.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import sw.app.domain.TransferVO;

@Repository
public class TransferDAOImpl implements TransferDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace ="sw.app.mapper.TransferMapper";

	@Override
	public List<TransferVO> listAllTrans() throws Exception {
		
		return session.selectList(namespace+".listAllTrans");
	}

	@Override
	public List<TransferVO> listTransTop10() throws Exception {
		
		return session.selectList(namespace+".listTransTop10");
	}

}
