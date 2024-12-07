package com.klef.jfsd.springboot;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
public class SpringBootMvcsdpProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootMvcsdpProjectApplication.class, args);
		System.out.println("HI SPRING BOOT");
	}

}