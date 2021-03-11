package com.example.demo.service;

//import com.example.demo.dao.GameServerDao;
import com.example.demo.model.Consts;
import com.example.demo.model.Equip;
import com.example.demo.model.GameServer;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class GameServerService {
    //@Autowired
    //private GameServerDao gameServerDao;

    /***
     * update servermap according to the json message received
     * @param host
     * @param gameServer
     * @return
     */
    public int updateStatus(String host,GameServer gameServer) {
        gameServer.setHost(host);

        String serverId=gameServer.getServerId();
        if(Consts.serverMap.containsKey(serverId)==false)
            Consts.serverMap.put(serverId,gameServer);
        else {
            Consts.serverMap.put(serverId,gameServer);
            //Consts.serverMap.get(serverId).setLastUpdated(new Date().getTime());
        }
        return 1;
    }

    public String fetchStatus() throws JsonProcessingException {
        ObjectMapper mapper =new ObjectMapper();
        String jsonList= mapper.writeValueAsString(Consts.serverMap);
        return jsonList;
    }
}
