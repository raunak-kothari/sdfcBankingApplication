package com.web.entity;

public class TransferDetails {

	private int acc_no;
	private String name;
	private double bal;
	private int receiver_acc_no;
	private double trf_amt;

	public TransferDetails() {
		super();
	}

	public TransferDetails(int acc_no, String name, double bal, int receiver_acc_no, double trf_amt) {
		super();
		this.acc_no = acc_no;
		this.name = name;
		this.bal = bal;
		this.receiver_acc_no = receiver_acc_no;
		this.trf_amt = trf_amt;
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

	public double getBal() {
		return bal;
	}

	public void setBal(double bal) {
		this.bal = bal;
	}

	public int getReceiver_acc_no() {
		return receiver_acc_no;
	}

	public void setReceiver_acc_no(int receiver_acc_no) {
		this.receiver_acc_no = receiver_acc_no;
	}

	public double getTrf_amt() {
		return trf_amt;
	}

	public void setTrf_amt(double trf_amt) {
		this.trf_amt = trf_amt;
	}

	@Override
	public String toString() {
		return "TransferDetails [acc_no=" + acc_no + ", name=" + name + ", bal=" + bal + ", receiver_acc_no="
				+ receiver_acc_no + ", trf_amt=" + trf_amt + "]";
	}

}
