package sw.app.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import sw.app.domain.RoundVO;

@Repository
public class RoundDAOImpl implements RoundDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace ="sw.app.mapper.RoundMapper";

	@Override
	public List<RoundVO> listRoundEpl(String home, String away, Integer round) throws Exception {
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("home",home);
		map.put("away",away);
		map.put("round",round);
		
		return session.selectList(namespace+".listRoundEpl",map);
	}

}
