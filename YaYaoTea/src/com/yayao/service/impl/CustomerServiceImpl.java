package com.yayao.service.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.yayao.bean.Customer;
import com.yayao.dao.CustomerDao;
import com.yayao.service.CustomerService;
/**
 * 客户管理接口实现
 * @author yy
 *
 */
@Service("customerService")
public class CustomerServiceImpl implements CustomerService {
	@Resource(name="customerDao")
	private CustomerDao customerDao;
	/**
	 * 查询单个客户
	 */
	public Customer selectCustomerByID(Integer id) {
		Customer customer = customerDao.selectCustomerByID(id);
		return customer;
	}
	/**
	 * 用户提交需求
	 */
	public void addCustomerContent(Customer customer) {
		customerDao.addCustomerContent(customer);
	}
	/**
	 * 查询10个客户
	 */
	public List<Customer> showCustomer(Map<String,Object>map){
		List<Customer> list = customerDao.showCustomer(map);
		return list;
	}
	/**
	 * 修改订单状态
	 */
	public void updateCustomerIndex(Customer customer) {
		customerDao.updateCustomerIndex(customer);
	};
	
}
