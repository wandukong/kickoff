package sw.app.service;

import java.util.List;

import sw.app.domain.TransferVO;

public interface TransferService {

	public List<TransferVO> listAllTrans() throws Exception;
	
	public List<TransferVO> listTransTop10() throws Exception;
}
