package com.yayao.service;

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
}
