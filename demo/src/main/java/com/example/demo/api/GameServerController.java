package com.example.demo.api;
import com.example.demo.model.Consts;
import com.example.demo.model.GameServer;
import com.example.demo.service.GameServerService;
import com.example.demo.service.PersonService;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.apache.tomcat.util.http.parser.Host;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;


@RequestMapping("api/v1/gameServer")
@RestController
@CrossOrigin
public class GameServerController {

    private GameServerService gameServerService;

    @Autowired
    public GameServerController(GameServerService gameServerService) {
        this.gameServerService = gameServerService;
    }
    //server update status list
    @PostMapping(value="/servers/updateStatus")
    public int updateStatus(@RequestHeader("Host") String host,@RequestBody GameServer gameServer){
        return gameServerService.updateStatus(host, gameServer);
    }
    //client fetch server status list
    @PostMapping(value="/servers/fetchStatus")
    public String fetchStatus() throws JsonProcessingException {
        return gameServerService.fetchStatus();
    }

}
