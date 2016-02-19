package com.yayao.bean;

import java.io.Serializable;
import java.util.Date;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

/**
 * 用户实体类
 * @author yy
 *
 */
public class Customer implements Serializable {
	
	private static final long serialVersionUID = 8198930199550185349L;
	private Integer id;
	@NotEmpty
	@Length(min=2,max=16)
	private String userName;
	@NotEmpty
	@Length(min=7,max=11)
	private String cellPhone;
	@NotEmpty
	@Email
	private String email;
	@NotEmpty
	private String teaType;
	@NotEmpty
	private String totaladdress;
	
	private String referTime;
	
	public Customer() {
		super();
	}

	
	public Customer(Integer id, String userName, String cellPhone,
			String email, String teaType, String totaladdress,String referTime) {
		super();
		this.id = id;
		this.userName = userName;
		this.cellPhone = cellPhone;
		this.email = email;
		this.teaType = teaType;
		this.totaladdress = totaladdress;
		this.referTime=referTime;
	}


	public String getTeaType() {
		return teaType;
	}


	public void setTeaType(String teaType) {
		this.teaType = teaType;
	}


	public String getTotaladdress() {
		return totaladdress;
	}


	public void setTotaladdress(String totaladdress) {
		this.totaladdress = totaladdress;
	}


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getCellPhone() {
		return cellPhone;
	}

	public void setCellPhone(String cellPhone) {
		this.cellPhone = cellPhone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}


	public String getReferTime() {
		return referTime;
	}


	public void setReferTime(String referTime) {
		this.referTime = referTime;
	}

	
	
}
