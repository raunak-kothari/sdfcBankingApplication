package com.web.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Value;

@Entity
@Table(name = "BANKING_APPN_CUST_DETAILS")
public class Customers {

	@Id
	@Column(name = "Account_Number")
	private int acc_no;

	@Column(name = "Acc_Holder_Name")
	private String name;

	@Column(name = "Password")
	private String pwd;

	@Column(name = "Address")
	private String addr;

	@Column(name = "Balance")
	private double bal;

	@Column(name = "Mobile_Number")
	private long mno;
	
	@Column(name = "Account_Status")
	@Value("active")
	private String status;

	public Customers() {
		super();
	}

	public Customers(int acc_no, String name, String pwd, String addr, double bal, long mno, String status) {
		super();
		this.acc_no = acc_no;
		this.name = name;
		this.pwd = pwd;
		this.addr = addr;
		this.bal = bal;
		this.mno = mno;
		this.status = status;
	}

	public int getAcc_no() {
		return acc_no;
	}

	public void setAcc_no(int acc_no) {
		this.acc_no = acc_no;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public double getBal() {
		return bal;
	}

	public void setBal(double bal) {
		this.bal = bal;
	}

	public long getMno() {
		return mno;
	}

	public void setMno(long mno) {
		this.mno = mno;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Customers [acc_no=" + acc_no + ", name=" + name + ", pwd=" + pwd + ", addr=" + addr + ", bal=" + bal
				+ ", mno=" + mno + ", status=" + status + "]";
	}

}
