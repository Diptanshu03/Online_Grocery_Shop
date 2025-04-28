package com.jsp.Controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.jsp.Dao.StoreDao;
import com.jsp.Dto.Store;

@Controller
public class StoreController {

	@Autowired
	StoreDao dao;

	@RequestMapping("/add")
	public ModelAndView addItem() {
		ModelAndView mv = new ModelAndView();
		mv.addObject("store", new Store());
		mv.setViewName("create");
		return mv;
	}

	@RequestMapping("/save")
	@ResponseBody
	public ModelAndView saveItems(@ModelAttribute Store store) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("massege", dao.insertItems(store));
		mv.setViewName("massege");
		return mv;
	}

	@RequestMapping("/all")
	public ModelAndView displayAll() {
		List<Store> list = dao.fetchAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("store", list);
		mv.setViewName("displayall");
		return mv;
	}

	@RequestMapping("search")
	public String getSearchForm() {
		return "search";
	}

	@RequestMapping("/byname")
	public ModelAndView searchByName(@RequestParam String name) {
		List<Store> list = dao.getByName(name);
		ModelAndView mv = new ModelAndView();
		if (!list.isEmpty()) {
			mv.addObject("store", list);
			mv.setViewName("displayitems");
		} else {
			mv.addObject("massege", "Data Not Found🚫🚫🚫");
			mv.setViewName("error");
		}
		return mv;
	}

	@RequestMapping("/bycategory")
	public ModelAndView searchByCategory(@RequestParam String category) {
		List<Store> list = dao.getByCategory(category);
		ModelAndView mv = new ModelAndView();
		if (!list.isEmpty()) {
			mv.addObject("store", list);
			mv.setViewName("displayitems");
		} else {
			mv.addObject("massege", "Data Not Found🚫🚫🚫");
			mv.setViewName("error");
		}
		return mv;
	}

	@RequestMapping("/buy")
	public String getPurchaseForm() {
		return "purchase";
	}

	@RequestMapping("/purchase")
	public ModelAndView getPurchaseItem(@RequestParam String name, @RequestParam int quantity) {
	    double price = dao.getPrice(name);
	    if (price != -1) {
	        int originalQuantity = dao.getQuantity(name);
	        int newQuantity = originalQuantity - quantity;
	        if (newQuantity >= 0) {
	            int n = dao.updateQuantity(newQuantity, name);
	            if (n != -1) {
	                return displayBill(price, quantity);
	            } else {
	                return errorMessage("Some Technical Error Occurred");
	            }
	        } else {
	            return errorMessage("Your required product stock is not available 🚫🚫🚫");
	        }
	    } else {
	        return errorMessage("Product is not available ❌❌❌");
	    }
	}



	private ModelAndView errorMessage(String message) {
		ModelAndView mv = new ModelAndView("error");
		mv.addObject("massege", message);
		mv.setViewName("error");
		return mv;
	}

	private ModelAndView displayBill(double price, int quantity) {
		double bill = price * quantity;
		ModelAndView mv = new ModelAndView("invoice");
		mv.addObject("bill", bill);
		mv.setViewName("invoice");
		return mv;
	}

}
