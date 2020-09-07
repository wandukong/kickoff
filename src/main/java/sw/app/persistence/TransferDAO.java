package sw.app.persistence;

import java.util.List;

import sw.app.domain.TransferVO;

public interface TransferDAO {
	
	public List<TransferVO> listAllTrans() throws Exception;
	
	public List<TransferVO> listTransTop10() throws Exception;
}
