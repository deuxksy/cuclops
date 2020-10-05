package com.fourdreplay.cyclops;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@EnableConfigServer
@RestController
public class FourDReplayApplication {

  public static void main(String[] args) {
    SpringApplication.run(FourDReplayApplication.class, args);
  }

  @GetMapping("/")
  public String index() {
    return "OK";
  }

}