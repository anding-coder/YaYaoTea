package com.yayao.controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.validation.Valid;
import javax.validation.Validator;

import org.apache.commons.lang.time.DateUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yayao.bean.Customer;
import com.yayao.service.CustomerService;
import com.yayao.util.DateUtil;

/**
 * 用户控制类
 * @author yy
 *
 */
@Scope("prototype")
@Controller("customer")
public class CustomerController {
	@Resource(name="customerService")
	private CustomerService customerService;
	@Resource
	Validator validator;
	
	@RequestMapping(value="/selectNewsByID",method=RequestMethod.POST )
	public String selectNewsByID(@RequestParam("customerID")Integer id,ModelMap model){
		Customer customer = customerService.selectCustomerByID(id);
		model.addAttribute("customer", customer);
		return "foreground/contactUS";
		
	}
	/*同步提交
	 * @RequestMapping(value="/addCustomerContent",method=RequestMethod.POST )
	//@TokenHandler(remove=true)
	public String addCustomerContent(@ModelAttribute Customer customer,@RequestParam("token") String token,ModelMap model,HttpServletRequest request){
		if(TokenSession.isrepeattoken(request)){
			return "foreground/contactUS";
		}
		customerService.addCustomerContent(customer);
		System.out.println(customer.getContent());
		model.addAttribute("customer", customer);
		request.getSession().setAttribute("customer", customer);
		 request.getSession( false ).setAttribute( "token" ,UUID.randomUUID().toString()); 
		return "foreground/contactUS";
		
	}*/
	/**
	 * 异步提交
	 */
	/*@RequestMapping(value="/addCustomerContent",method=RequestMethod.POST)
	public ResponseEntity<Customer> addCustomerContent(@ModelAttribute Customer customer){
			customerService.addCustomerContent(customer);
			return new ResponseEntity<Customer>(customer, HttpStatus.OK);
		}*/
	@RequestMapping(value="/addCustomerContent",method=RequestMethod.POST)
	public @ResponseBody Customer addCustomerContent(@Valid @ModelAttribute Customer customer,BindingResult result){
		if(result.hasErrors()){
			//customer.setContent(result.getFieldError().getDefaultMessage());
			return null;
		}
		customer.setReferTime(DateUtil.getCurrentTime());
		customerService.addCustomerContent(customer);
		return  customer;
	}
}
