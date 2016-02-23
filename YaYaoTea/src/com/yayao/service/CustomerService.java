package com.yayao.service;

import java.util.List;
import java.util.Map;

import com.yayao.bean.Customer;

/**
 * 客户管理接口
 * @author yy
 *
 */
public interface CustomerService {
	/**
	 * 查询单个客户
	 */
	public Customer selectCustomerByID(Integer id);
	/**
	 * 用户提交需求
	 */
	public void addCustomerContent(Customer customer);
	/**
	 * 查询10个客户
	 */
	public List<Customer> showCustomer(Map<String,Object> map);
	/**
	 * 修改订单状态
	 */
	public void updateCustomerIndex(Customer customer);
}
