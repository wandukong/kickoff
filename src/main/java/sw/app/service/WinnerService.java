package sw.app.service;

import java.util.List;

import sw.app.domain.WinnerVO;

public interface WinnerService {

	public List<WinnerVO> listWinnerChams() throws Exception;
}
