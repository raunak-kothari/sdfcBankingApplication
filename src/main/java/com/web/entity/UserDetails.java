package com.web.entity;

public class UserDetails {

	private int acc_no;

	public UserDetails() {
		super();
	}

	public UserDetails(int acc_no) {
		super();
		this.acc_no = acc_no;
	}

	public int getAcc_no() {
		return acc_no;
	}

	public UserDetails setAcc_no(int acc_no) {
		this.acc_no = acc_no;
		return null;
	}

	@Override
	public String toString() {
		return "UserDetails [acc_no=" + acc_no + "]";
	}

}
