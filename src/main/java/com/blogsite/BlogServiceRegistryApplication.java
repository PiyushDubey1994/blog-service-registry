package com.blogsite;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.server.EnableEurekaServer;

@SpringBootApplication
@EnableEurekaServer
public class BlogServiceRegistryApplication {

	public static void main(String[] args) {
		SpringApplication.run(BlogServiceRegistryApplication.class, args);
	}

}
