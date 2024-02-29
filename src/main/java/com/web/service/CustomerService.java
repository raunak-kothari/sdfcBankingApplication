package com.web.service;

import com.web.entity.Customers;

public interface CustomerService {

	public Customers saveDetails(Customers customers);

	public Boolean verifyPass(String pass, String c_pass);

	public Boolean deleteCustomer(int acc_no);

	public Customers updateCustomer(Customers customers, int acc_no);

	public Customers getAccDetail(int acc_no);

	public Boolean verifyDetails(Customers customers);

	public Customers getBal(int acc_no);

	public Boolean depBal(double bal, String pass, int acc_no);
	
	public String withBal(double amt, String pass, int acc_no);
	
	public Customers closeAcc(int acc_no);
	
	public boolean checkAccStatus(int acc_no);

}
