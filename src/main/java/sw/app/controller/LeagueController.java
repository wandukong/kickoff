package sw.app.controller;


import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import sw.app.service.FixtureService;
import sw.app.service.ClubService;
import sw.app.service.PlayerService;
import sw.app.service.RecordService;
import sw.app.service.RoundService;
import sw.app.service.ScorerService;
import sw.app.service.TransferService;
import sw.app.service.WinnerService;

@Controller
@RequestMapping("/league/*")
public class LeagueController {
	
	private static final Logger logger = LoggerFactory.getLogger(LeagueController.class);

	@Inject
	private ClubService clubService;
	
	@Inject
	private FixtureService fixtureService;
	
	@Inject
	private RecordService recordService;
	
	@Inject
	private TransferService transferService;
	
	@Inject
	private PlayerService playerService;
	
	@Inject
	private RoundService roundService;
	
	@Inject
	private WinnerService winnerService;
	
	@Inject
	private ScorerService scorerService;
	
	
	/////////////////////////
	//         EPL         //
	/////////////////////////
	
	@RequestMapping(value="/epl",method=RequestMethod.GET)
	public void readEpl(Model model) throws Exception{
		
		logger.info("EPL Info....................");
		
		model.addAttribute("table",clubService.listAllEpl());
		model.addAttribute("record",recordService.listRecordEpl());
		
		model.addAttribute("augFixture",fixtureService.listFixtureEpl("08"));
		model.addAttribute("sepFixture",fixtureService.listFixtureEpl("09"));
		model.addAttribute("octFixture",fixtureService.listFixtureEpl("10"));
		model.addAttribute("novFixture",fixtureService.listFixtureEpl("11"));
		model.addAttribute("decFixture",fixtureService.listFixtureEpl("12"));
		model.addAttribute("janFixture",fixtureService.listFixtureEpl("01"));
		model.addAttribute("febFixture",fixtureService.listFixtureEpl("02"));
		model.addAttribute("marFixture",fixtureService.listFixtureEpl("03"));
		model.addAttribute("aprFixture",fixtureService.listFixtureEpl("04"));
		model.addAttribute("mayFixture",fixtureService.listFixtureEpl("05"));
	}
	
	@RequestMapping(value="/eplClub",method=RequestMethod.GET)
	public void readEplPlayer(Model model, @RequestParam String club) throws Exception{
		
		logger.info("EPL Player Info....................");
	
		model.addAttribute("eplPlayer",playerService.listPlayerEpl(club));
	}
	
	@ResponseBody
	@RequestMapping(value="/data/eplPlayer.json")
	public Object data_eplPlayer_json(@RequestParam String club) throws Exception{
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("eplPlayer",playerService.listPlayerEpl(club));
		
		return map;
	}
	
	@RequestMapping(value="/eplRound",method=RequestMethod.GET)
	public void readEplRound(Model model, @RequestParam("home") String home, @RequestParam("away") String away, @RequestParam("round") Integer round  ) throws Exception{
		
		logger.info("EPL Round Info....................");
	
		model.addAttribute("eplRound",roundService.listRoundEpl(home,away,round));
	}
	
	/////////////////////////
	//        LaLiga       //
	/////////////////////////
	
	@RequestMapping(value="/laliga",method=RequestMethod.GET)
	public void readLaliga(Model model) throws Exception{
	
		logger.info("LaLiga Info....................");
	
		model.addAttribute("table",clubService.listAllLaliga());
//		model.addAttribute("record",recordService.listRecordLaliga());
//		
//		model.addAttribute("augFixture",fixtureService.listFixtureLaliga("08"));
//		model.addAttribute("sepFixture",fixtureService.listFixtureLaliga("09"));
//		model.addAttribute("octFixture",fixtureService.listFixtureLaliga("10"));
//		model.addAttribute("novFixture",fixtureService.listFixtureLaliga("11"));
//		model.addAttribute("decFixture",fixtureService.listFixtureLaliga("12"));
//		model.addAttribute("janFixture",fixtureService.listFixtureLaliga("01"));
//		model.addAttribute("febFixture",fixtureService.listFixtureLaliga("02"));
//		model.addAttribute("marFixture",fixtureService.listFixtureLaliga("03"));
//		model.addAttribute("aprFixture",fixtureService.listFixtureLaliga("04"));
//		model.addAttribute("mayFixture",fixtureService.listFixtureLaliga("05"));
	}
	
	/////////////////////////
	//      BundesLiga     //
	/////////////////////////
	
	@RequestMapping(value="/bundesliga",method=RequestMethod.GET)
	public void readBundesliga(Model model) throws Exception{
	
		logger.info("BundesLiga Info....................");
	
		model.addAttribute("table",clubService.listAllBundesliga());
//		model.addAttribute("record",recordService.listRecordBundesliga());
//		
//		model.addAttribute("augFixture",fixtureService.listFixtureBundesliga("08"));
//		model.addAttribute("sepFixture",fixtureService.listFixtureBundesliga("09"));
//		model.addAttribute("octFixture",fixtureService.listFixtureBundesliga("10"));
//		model.addAttribute("novFixture",fixtureService.listFixtureBundesliga("11"));
//		model.addAttribute("decFixture",fixtureService.listFixtureBundesliga("12"));
//		model.addAttribute("janFixture",fixtureService.listFixtureBundesliga("01"));
//		model.addAttribute("febFixture",fixtureService.listFixtureBundesliga("02"));
//		model.addAttribute("marFixture",fixtureService.listFixtureBundesliga("03"));
//		model.addAttribute("aprFixture",fixtureService.listFixtureBundesliga("04"));
//		model.addAttribute("mayFixture",fixtureService.listFixtureBundesliga("05"));
	}
	
	/////////////////////////
	//       Seire A       //
	/////////////////////////
	
	@RequestMapping(value="/seriea",method=RequestMethod.GET)
	public void readSeriea(Model model) throws Exception{
	
		logger.info("Seire A Info....................");
		
		model.addAttribute("table",clubService.listAllSeriea());
//		model.addAttribute("record",recordService.listRecordSeriea());
//		
//		model.addAttribute("augFixture",fixtureService.listFixtureSeriea("08"));
//		model.addAttribute("sepFixture",fixtureService.listFixtureSeriea("09"));
//		model.addAttribute("octFixture",fixtureService.listFixtureSeriea("10"));
//		model.addAttribute("novFixture",fixtureService.listFixtureSeriea("11"));
//		model.addAttribute("decFixture",fixtureService.listFixtureSeriea("12"));
//		model.addAttribute("janFixture",fixtureService.listFixtureSeriea("01"));
//		model.addAttribute("febFixture",fixtureService.listFixtureSeriea("02"));
//		model.addAttribute("marFixture",fixtureService.listFixtureSeriea("03"));
//		model.addAttribute("aprFixture",fixtureService.listFixtureSeriea("04"));
//		model.addAttribute("mayFixture",fixtureService.listFixtureSeriea("05"));
	}
	
	@RequestMapping(value="/chams",method=RequestMethod.GET)
	public void readChams(Model model) throws Exception{
	
		logger.info("Champions League Info....................");
		
		model.addAttribute("chamsGroup",clubService.listChamsGroup());
		model.addAttribute("chamsFixtureGS",fixtureService.listFixtureChamsGS());
		model.addAttribute("chamsFixture16",fixtureService.listFixtureChams16());
		model.addAttribute("chamsFixture8",fixtureService.listFixtureChams8());
		model.addAttribute("chamsFixture4",fixtureService.listFixtureChams4());
		model.addAttribute("chamsFixtureF",fixtureService.listFixtureChamsF());
		
		model.addAttribute("chamsGoal",recordService.listChamsGoal());
		model.addAttribute("chamsAssist",recordService.listChamsAssist());
		model.addAttribute("chamsPass",recordService.listChamsPass());
		
		model.addAttribute("chamsWinner",winnerService.listWinnerChams());
		model.addAttribute("chamsScorer",scorerService.listScorerChams());
	}
	
	@RequestMapping(value="/transfer",method=RequestMethod.GET)
	public void readTransfer(Model model) throws Exception{
	
		logger.info("Transfer Market Info....................");
		
		model.addAttribute("transListAll",transferService.listAllTrans());
	}
	
	@ResponseBody
	@RequestMapping(value="/data/transfer.json")
	public Object data_transfer_json() throws Exception{
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("transListAll",transferService.listAllTrans());
		map.put("transListTop10",transferService.listTransTop10());
		
		return map;
	}
}
