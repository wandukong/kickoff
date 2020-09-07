package sw.app.persistence;

import java.util.List;

import sw.app.domain.RecordVO;

public interface RecordDAO {

	public List<RecordVO> listRecordEpl() throws Exception;
	
	public List<RecordVO> listRecordLaliga() throws Exception;
	
	public List<RecordVO> listRecordBundesliga() throws Exception;
	
	public List<RecordVO> listRecordSeriea() throws Exception;
	
	public List<RecordVO> listChamsGoal() throws Exception;
	
	public List<RecordVO> listChamsAssist() throws Exception;
	
	public List<RecordVO> listChamsPass() throws Exception;
}
