package br.com.menubile.MenubileAPI;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@EntityScan(basePackages = {
		"br.com.menubile.entity"
	})
@EnableJpaRepositories(basePackages = {
		"br.com.menubile.repository"
	})


public class MenubileApiApplication {

	public static void main(String[] args) {
		SpringApplication.run(MenubileApiApplication.class, args);
	}
}
