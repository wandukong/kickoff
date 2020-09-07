package sw.app.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import sw.app.domain.TransferVO;
import sw.app.persistence.TransferDAO;

@Service
public class TransferServiceImpl implements TransferService{

	@Inject
	private TransferDAO dao;
	
	@Override
	public List<TransferVO> listAllTrans() throws Exception {
		
		return dao.listAllTrans();
	}

	@Override
	public List<TransferVO> listTransTop10() throws Exception {

		return dao.listTransTop10();
	}

}
