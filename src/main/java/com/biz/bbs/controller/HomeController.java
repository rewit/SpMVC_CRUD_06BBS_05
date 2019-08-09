package com.biz.bbs.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.biz.bbs.model.BBsDto;
import com.biz.bbs.model.MenuDto;
import com.biz.bbs.service.BBsService;
import com.biz.bbs.service.MenuService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	MenuService menuService;
	
	@Autowired
	BBsService bbsService;
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(HttpSession httpSession, Model model) {

		List<MenuDto> menuList = menuService.getDBMenu();
		//model.addAttribute("MENUS",menuService.makeMenu());
//		model.addAttribute("MENUS",menuList);
		httpSession.setAttribute("MENUS",menuList);
		
		List<BBsDto> bbsList = bbsService.bbsListForFile();
		model.addAttribute("LIST",bbsList);
		
		bbsList = bbsService.bbsList();
		model.addAttribute("LIST",bbsList);
		
		return "home";
	}
	
	@RequestMapping(value="menu",method=RequestMethod.GET)
	public String menu(Model model) {
		
		List<MenuDto> menuList = menuService.getDBMenu();
		model.addAttribute("MENUS",menuList);
		
		return "include/include-header";
	}
	
}
