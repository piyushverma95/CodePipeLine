package com.example.CodePipeline.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {
	
	@GetMapping("/")
	public String hello() {
		return "Good Job Piyush, you did it :-D";
	}
	
}
