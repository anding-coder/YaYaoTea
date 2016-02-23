package com.yayao.dao;

import java.util.List;
import java.util.Map;

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
	 * 查询10个客户
	 */
	public List<Customer> showCustomer(Map<String,Object> map);
	/**
	 * 用户提交需求
	 */
	public void addCustomerContent(Customer customer);
	/**
	 * 修改订单状态
	 */
	public void updateCustomerIndex(Customer customer);
	
}
