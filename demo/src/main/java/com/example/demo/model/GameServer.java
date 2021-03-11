package com.example.demo.model;

import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Date;
import java.util.UUID;

public class GameServer {
    public enum ServerStatus
    {
        up,
        down,
        error
    }
    //private final int id
    private String host="";
    private final String serverId;
    private final int status;
    private final int capacity;
    private final int playerNumber;
    private long lastUpdated=new Date().getTime();
    private final int port;
    private final String ipAddress;

    public int getPort() {
        return port;
    }

    public GameServer(@JsonProperty("serverId") String serverId,
                      @JsonProperty("status") int status,
                      @JsonProperty("capacity") int capacity,
                      @JsonProperty("playerNumber") int playerNumber,
                      @JsonProperty("ipAddress") String ipAddress,
                      @JsonProperty("port") int port
    ) {
        this.serverId=serverId;
        this.status=status;
        this.capacity=capacity;
        this.playerNumber=playerNumber;
        this.ipAddress=ipAddress;
        this.port=port;
    }

    public String getIpAddress() {
        return ipAddress;
    }

    public Boolean setHost(String host){
        this.host=host;
        return true;
    }

    public long getLastUpdated() {
        return lastUpdated;
    }

    public String getServerId() {
        return serverId;
    }

    public String getHost() {
        return host;
    }

    public int getStatus() {
        return status;
    }

    public int getCapacity() {
        return capacity;
    }

    public int getPlayerNumber() {
        return playerNumber;
    }


    public Boolean setLastUpdated(long lastUpdated){this.lastUpdated=lastUpdated;  return true;}
}
