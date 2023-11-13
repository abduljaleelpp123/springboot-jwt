package com.abdul.sa;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.abdul.sa"})
public class LendoHomeProjectRun {

	public static void main(String[] args) {
		System.out.println("Starting ....");
    SpringApplication.run(LendoHomeProjectRun.class, args);
	}

}
