package com.example.demo;
import com.example.demo.model.Consts;
import com.example.demo.model.GameServer;
import org.apache.tomcat.util.bcel.Const;
import org.mybatis.logging.LoggerFactory;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.boot.autoconfigure.condition.ConditionalOnSingleCandidate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableAsync;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.sql.SQLOutput;
import java.util.Date;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.logging.Logger;

//HashSet

@SpringBootApplication
		//(scanBasePackages={"com.example.demo.model.GameServer"})
@EnableScheduling
public class DemoApplication {

	public static void main(String[] args) {

		SpringApplication.run(DemoApplication.class, args);
		//System.out.println("hello,world");
	}

	/***
	 *Check game server connection timeout
	 * Remove disconnected server from serverMap
	 */
	@Scheduled(fixedRate = 500L)
	void checkServerConnection() throws InterruptedException{
		//System.out.println("Now is "+new Date().getTime());
		long timeNow=new Date().getTime();

		Consts.serverMap.forEach((serverId, gameServer) -> {
			if(timeNow-gameServer.getLastUpdated()>3000)
				Consts.serverMap.remove(serverId);

		});
		System.out.println(Consts.serverMap);
	}
}

@Configuration
@EnableScheduling
@ConditionalOnProperty(name="scheduling.enabled",matchIfMissing=true)
class  SchedulingConfiguration{ }

