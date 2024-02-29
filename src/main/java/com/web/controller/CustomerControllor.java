package com.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.web.entity.Customers;
import com.web.entity.TransferDetails;
import com.web.entity.UserDetails;
import com.web.service.CustomerServiceImp;

@Controller
public class CustomerControllor {

	@Autowired
	private CustomerServiceImp service;

	int user_acc;

	@RequestMapping("/")
	public String loginPage() {
		return "Login_Page";
	}

	@RequestMapping("/login")
	public String loginVerify(Customers customers, @RequestParam int acc_no , UserDetails userDtls) {

		
		boolean status = service.checkAccStatus(acc_no);

		Boolean res = service.verifyDetails(customers);

		if (res == true) {
			user_acc = acc_no;

			if (status == true) {
				return "redirect:/home";
			}

			else {
				return "redirect:/Close_Info";
			}

		} else {
			return "Invalid_Pass_Page";
		}

	}

	@RequestMapping("/home")
	public String homePage() {

		return "Home_Page";
	}

	@RequestMapping("/Close_Info")
	public String closeInfo() {
		return "Close_Info";
	}

	@RequestMapping("/trasferPage")
	public String transferPage() {
		return "Transfer_Page";
	}

	@RequestMapping("/about")
	public String aboutUsPage() {

		return "About_Us";
	}

	@RequestMapping("/viewDetails")
	public String viewAccBal(ModelMap model) {

		Customers cust = service.getAccDetail(user_acc);
		model.put("command", cust);
		return "View_Details";
	}

	@RequestMapping("/newAcc")
	public String accDetails() {
		return "New_Account";
	}

	@RequestMapping("/register")
	public String verifyPass(@RequestParam String pwd, @RequestParam String c_pwd, Customers customers) {
		boolean res = service.verifyPass(pwd, c_pwd);
		if (res == true) {
			service.createAccount(customers);
			return "Sucess_Page";
		} else {
			return "Confirm_Pass";
		}
	}

	@RequestMapping("/depPage")
	public String amtDeposit(ModelMap model) {
		Customers cust = service.getAccDetail(user_acc);
		model.put("command", cust);
		return "Dep_Amt_Page";
	}

	@RequestMapping("/deposit")
	public String depositBal(@RequestParam double amt, @RequestParam String pass) {

		boolean res = service.depBal(amt, pass, user_acc);
		if (res == true) {
			return "redirect:/viewDetails";
		} else {
			return "Invalid_Pass_Page";
		}
	}

	@RequestMapping("/withdrawPage")
	public String amtWithdraw(ModelMap model) {
		Customers cust = service.getAccDetail(user_acc);
		model.put("command", cust);
		return "Withdraw_Amt_Page";
	}

	@RequestMapping("/withdraw")
	public String withdrawBal(@RequestParam double amt, @RequestParam String pass) {

		String res = service.withBal(amt, pass, user_acc);
		if (res.equals("balOk")) {

			return "redirect:/viewDetails";
		} else if (res.equals("balNotOk")) {
			return "Insufficient_Bal_Page";
		} else {
			return "Invalid_Pass_Page";
		}

	}

	@RequestMapping("/Close_Page")
	public String closeAccountPage() {
		return "Close_Page";
	}

	@RequestMapping("/close")
	public String closeAccount() {
		service.closeAcc(user_acc);
		return "Close_Sucess";
	}

	@RequestMapping("/transferPage")
	public String transferPage(ModelMap model) {
		Customers cust = service.getAccDetail(user_acc);
		model.put("command", cust);
		return "Transfer_Page";
	}

	@RequestMapping("/inActive")
	public String loadInactivePage() {
		return "inActive_Page";
	}

	@RequestMapping("/transfer")
	public String transferMoney(TransferDetails trfDtls) {

		try {
			String status = service.transferAmount(trfDtls);
			if (status.equals("low_Bal")) {
				return "/Insufficient_Bal_Page";
			} else if (status.equals("Acc_Inactive")) {
				return "redirect:/inActive";
			} else if (status.equals("AllOk")) {
				return "redirect:/viewDetails";
			} else {
				return null;
			}
		} catch (Exception e) {
			System.out.println("error");
			return null;
		}

	}

}
