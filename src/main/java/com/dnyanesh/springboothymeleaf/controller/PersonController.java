package com.dnyanesh.springboothymeleaf.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.dnyanesh.springboothymeleaf.beans.Person;

@Controller
public class PersonController {

	@GetMapping("/")
	public String showForm(Person person) {
		return "register";
	}

	@PostMapping("/")
	public String register(@Valid Person person, Errors errors, Model model) {
		if (errors.hasErrors()) {
			return "register";
		} else {
			model.addAttribute("message", "Registration successfully...");
			return "register";
		}

	}

	@GetMapping("/nmb")
	public String payNow() {

		return "testnmbpay";

	}
}
