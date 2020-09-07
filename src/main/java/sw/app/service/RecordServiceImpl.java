package sw.app.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import sw.app.domain.RecordVO;
import sw.app.persistence.RecordDAO;

@Service
public class RecordServiceImpl implements RecordService{
	
	@Inject
	private RecordDAO dao;
	
	@Override
	public List<RecordVO> listRecordEpl() throws Exception {
		
		return dao.listRecordEpl();
	}

	@Override
	public List<RecordVO> listRecordLaliga() throws Exception {
		
		return dao.listRecordLaliga();
	}

	@Override
	public List<RecordVO> listRecordBundesliga() throws Exception {
		
		return dao.listRecordBundesliga();
	}

	@Override
	public List<RecordVO> listRecordSeriea() throws Exception {

		return dao.listRecordSeriea();
	}

	@Override
	public List<RecordVO> listChamsGoal() throws Exception {
		
		return dao.listChamsGoal();
	}

	@Override
	public List<RecordVO> listChamsAssist() throws Exception {

		return dao.listChamsAssist();
	}

	@Override
	public List<RecordVO> listChamsPass() throws Exception {
		
		return dao.listChamsPass();
	}
}
