package com.cg.entity;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

public class TransferBean {
	
	@NotNull(message="From Account ID is mandatory")
	private Integer fromAccountId;
	
	@NotNull(message="From Account ID is mandatory")
	private Integer toAccountId;
	
	@NotNull(message="Amount is mandatory")
	@Min(value=1000, message="Can transfer minimum Rs.1000")
	@Max(value=50000,message="Can transfer maxmimum Rs.50000")
	private double amt;

	public Integer getFromAccountId() {
		return fromAccountId;
	}

	public void setFromAccountId(Integer fromAccountId) {
		this.fromAccountId = fromAccountId;
	}

	public Integer getToAccountId() {
		return toAccountId;
	}

	public void setToAccountId(Integer toAccountId) {
		this.toAccountId = toAccountId;
	}

	public double getAmt() {
		return amt;
	}

	public void setAmt(double amt) {
		this.amt = amt;
	}
	
	
	

}
