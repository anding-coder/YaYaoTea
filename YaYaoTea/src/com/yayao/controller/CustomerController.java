package com.yayao.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import javax.validation.Validator;

import org.apache.commons.lang.time.DateUtils;
import org.springframework.context.annotation.Scope;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
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
	/**
	 * 查询单个客户
	 * @param id
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/selectCustomerByID",method=RequestMethod.POST )
	public ResponseEntity<Customer> selectCustomerByID(@RequestParam("customerID")Integer id,ModelMap model){
		Customer customer = customerService.selectCustomerByID(id);
		model.addAttribute("customer", customer);
		//session.setAttribute("customer", customer);
		return new ResponseEntity<Customer>(customer,HttpStatus.OK);
		
	}
	/**
	 * 每次查询10个固定客户
	 * @param firstid
	 * @param sizeid
	 * @param model
	 * @return
	 */
	@RequestMapping(value="/showCustomer",method=RequestMethod.POST )
	public ResponseEntity<List<Customer>> showCustomer(@RequestParam("firstid")Integer firstid,@RequestParam("sizeid")Integer sizeid,ModelMap model){
		Map<String, Object> map=new HashMap<String,Object>();
		map.put("firstid", firstid);
		map.put("sizeid", sizeid);
		List<Customer> list = customerService.showCustomer(map);
		model.addAttribute("customerList", list);
		//session.setAttribute("customerList", list);
		return new ResponseEntity<List<Customer>>(list,HttpStatus.OK);
		
	}
	
	@RequestMapping(value="/updateCustomerIndex",method=RequestMethod.POST )
	public @ResponseBody Customer updateCustomerIndex(@RequestParam("id")Integer id,@RequestParam("orderStatus")String orderStatus,ModelMap model){
		Customer customer = customerService.selectCustomerByID(id);
		if(orderStatus.equals("新订单")){
			customer.setOrderStatus(0);
		}else if(orderStatus.equals("已经发货")){
			customer.setOrderStatus(1);
		}else if(orderStatus.equals("交易完成")){
			customer.setOrderStatus(2);
		}
		
		customerService.updateCustomerIndex(customer);
		model.addAttribute("customer", customer);
		//session.setAttribute("customerList", list);
		return customer;
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
	 * 增加客户
	 * @param customer
	 * @param result
	 * @return
	 */
	@RequestMapping(value="/addCustomerContent",method=RequestMethod.POST)
	public @ResponseBody Customer addCustomerContent(@Valid @ModelAttribute Customer customer,BindingResult result){
		if(result.hasErrors()){
			//customer.setContent(result.getFieldError().getDefaultMessage());
			return null;
		}
		customer.setReferTime(DateUtil.getCurrentTime());
		customer.setOrderStatus(0);
		customerService.addCustomerContent(customer);
		return  customer;
	}
}
