package com.yangjie.shopmanagement.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.yangjie.shopmanagement.service.ShopDetailService;;

@Controller
@RequestMapping("/view")
public class ShopDetailController {
	
		
		@Autowired
		private ShopDetailService bs;
		
		@RequestMapping("/index")
		public String view(HttpServletRequest request){
			request.setAttribute("list", bs.getAll());
			return "index";
		}
		
		@RequestMapping("/creat")
		public String creat(Integer sortId,Model model){
			model.addAttribute("list", bs.createAll(sortId));
			return "index";
		}

}
