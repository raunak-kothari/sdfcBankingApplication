package com.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.web.entity.Customers;
import com.web.entity.TransferDetails;
import com.web.userRepo.CustomerRepo;

@Service
public class CustomerServiceImp implements CustomerService {

	@Autowired
	private CustomerRepo repo;

	@Override
	public Customers saveDetails(Customers customers) {
		return repo.save(customers);
	}

	public Customers createAccount(Customers customers) {
		customers.setStatus("active");
		return repo.save(customers);
	}

	@Override
	public Boolean verifyPass(String pass, String c_pass) {
		if (pass.equals(c_pass)) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public Boolean deleteCustomer(int acc_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Customers updateCustomer(Customers customers, int acc_no) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Customers getAccDetail(int acc_no) {
		Customers cust = repo.findById(acc_no).get();
		return cust;
	}

	@Override
	public Boolean verifyDetails(Customers customers) {

		// try {

		Customers userDtls = getAccDetail(customers.getAcc_no());

		System.out.println("=====================================");
		System.out.println(userDtls);
		System.out.println("=====================================");

		System.out.println("=====================================");
		System.out.println(customers.getAcc_no());
		System.out.println("=====================================");

		Customers cust = getAccDetail(customers.getAcc_no());
		if (cust.getName() != null) {
			if (cust.getName().equalsIgnoreCase(customers.getName()) && cust.getPwd().equals(customers.getPwd())) {
				return true;

			} else {
				return false;

			}
		} else {
			return false;
		}
		// } catch (Exception e) {
		// return false;
		// }

	}

	@Override
	public Customers getBal(int acc_no) {
		return getAccDetail(acc_no);
	}

	@Override
	public Boolean depBal(double amt, String pass, int acc_no) {

		Customers cust = getAccDetail(acc_no);

		if (cust.getPwd().equals(pass)) {
			cust.setBal(cust.getBal() + amt);
			repo.save(cust);
			return true;
		} else {
			return false;
		}

	}

	@Override
	public String withBal(double amt, String pass, int acc_no) {

		Customers cust = getAccDetail(acc_no);

		if (cust.getPwd().equals(pass)) {

			if (cust.getBal() >= amt) {

				cust.setBal(cust.getBal() - amt);
				repo.save(cust);
				return "balOk";

			} else {
				return "balNotOk";
			}
		} else {
			return "passNotOk";
		}
	}

	@Override
	public Customers closeAcc(int acc_no) {
		Customers c = getAccDetail(acc_no);
		c.setStatus("close");
		return repo.save(c);
	}

	@Override
	public boolean checkAccStatus(int acc_no) {

		if (getAccDetail(acc_no).getStatus().equals("active")) {
			return true;
		} else {
			return false;
		}

	}

	public String transferAmount(TransferDetails trfDtls) {

		String status = "";

		Customers sender = getAccDetail((int) trfDtls.getAcc_no());

		Customers receiver = getAccDetail((int) trfDtls.getReceiver_acc_no());

		if (sender.getBal() >= (double) trfDtls.getTrf_amt()) {
			if (checkAccStatus(receiver.getAcc_no()) == true) {

				double senderNewBal = sender.getBal() - trfDtls.getTrf_amt();
				sender.setBal(senderNewBal);

				double receiverNewBal = receiver.getBal() + trfDtls.getTrf_amt();
				receiver.setBal(receiverNewBal);

				saveDetails(sender);
				saveDetails(receiver);

				status = "AllOk";

			} else {
				status = "Acc_Inactive";
			}
		} else {
			status = "low_Bal";
		}
		return status;
	}

}
