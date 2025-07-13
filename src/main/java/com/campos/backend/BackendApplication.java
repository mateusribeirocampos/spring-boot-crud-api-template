package com.campos.backend;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import io.github.cdimascio.dotenv.Dotenv;

@SpringBootApplication
public class BackendApplication {

	public static void main(String[] args) {
		// Carregar variáveis do .env
		Dotenv dotenv = Dotenv.configure().ignoreIfMissing().load();
		dotenv.entries().forEach(entry -> 
			System.setProperty(entry.getKey(), entry.getValue()));
		
		SpringApplication.run(BackendApplication.class, args);
	}

}
