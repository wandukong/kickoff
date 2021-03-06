package sw.app.service;

import java.util.List;

import sw.app.domain.RecordVO;

public interface RecordService {
	
	public List<RecordVO> listRecordEpl() throws Exception;
	
	public List<RecordVO> listRecordLaliga() throws Exception;
	
	public List<RecordVO> listRecordBundesliga() throws Exception;
	
	public List<RecordVO> listRecordSeriea() throws Exception;
	
	public List<RecordVO> listChamsGoal() throws Exception;
	
	public List<RecordVO> listChamsAssist() throws Exception;
	
	public List<RecordVO> listChamsPass() throws Exception;

}
