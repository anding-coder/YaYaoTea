package com.yayao.dao;

import com.yayao.bean.Customer;
/**
 * 客户管理接口
 * @author yy
 *
 */
public interface CustomerDao {
	/**
	 * 查询单个客户
	 */
	public Customer selectCustomerByID(Integer id);
	/**
	 * 用户提交需求
	 */
	public void addCustomerContent(Customer customer);
}
