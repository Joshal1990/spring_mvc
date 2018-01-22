package com.event.mngmt.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.event.mngmt.entity.LoginAuthentication;
import com.event.mngmt.service.LoginService;

@Controller
@RequestMapping("/webApi")
public class LoginController {

	@Autowired
	protected LoginService loginService;

	@RequestMapping(value = "/passwordValidate", method = RequestMethod.POST)
	public String loginUserValidation(
			@RequestParam("username") String username,
			@RequestParam("password") String password) throws Exception {

		if (username.equals("admin") && password.equals("admin")) {
			//loginService.loginUserValidation(username, password);
			return "passwordValidate";
		} else {
			throw new Exception();
		}
	}

	/*@RequestMapping(value = "create-book")
	public String createBookGet(Model model) {
		model.addAttribute("book", new Book());
		return "create-book";
	}*/

	/*@RequestMapping(value = "create-book", method = RequestMethod.POST)
	public String createBookPost(@ModelAttribute("book") Book book) {
		service.createBook(book);
		return "redirect:books";

	}*/
}
