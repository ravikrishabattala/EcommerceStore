package com.app.store.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.app.store.entities.Product;
import com.app.store.service.MyService;

import net.bytebuddy.matcher.ModifierMatcher.Mode;

@Controller
public class MyController {

//	return page keliye <a href = "${pageContext.request.contextPath}/"
	@Autowired
	private MyService service;
	
	public MyService getService() {
		return service;
	}

	public void setService(MyService service) {
		this.service = service;
	}
	
	@RequestMapping(path = "/app",method = RequestMethod.GET)
	public String home(Model model) {
		List<Product> products = service.getAllProducts();
		model.addAttribute("products", products);
		System.out.println(products);
		return "home";
	}	
	
	@RequestMapping(path = "/app",method = RequestMethod.POST)
	public String displayView(@ModelAttribute("product") Product product,Model model) {
		int r = service.save(product);
		List<Product> products = service.getAllProducts();
		model.addAttribute("products", products);
		return "home";
	}
	
	@RequestMapping(path = "/delete",method = RequestMethod.POST)
	public String deleteProduct(@RequestParam("id") int id,Model model){	
		service.deleteProduct(id);	
		List<Product> products = service.getAllProducts();
		model.addAttribute("products", products);
		return "home";
	}
	
	@RequestMapping(path = "/display",method = RequestMethod.POST)
	public String productView(@RequestParam("id") int id,Model model) {		
		Product r = service.getProduct(id);
		model.addAttribute("product", r);
		return "display";
	}
	

}
