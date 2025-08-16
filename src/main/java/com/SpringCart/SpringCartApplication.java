package com.SpringCart;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan({"com.SpringCart.Controller","com.SpringCart.Service"})
public class SpringCartApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringCartApplication.class, args);
	}

}
