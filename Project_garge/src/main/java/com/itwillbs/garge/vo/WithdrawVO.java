package com.itwillbs.garge.vo;

import com.google.protobuf.Timestamp;

import lombok.Data;

@Data
public class WithdrawVO {
	private String owner_bank;
	private String owner_acc;
	private String withdraw_bank; 
	private String withdraw_acc;
	private String product_price; 
	private String member_id;
	private String method;
	private Timestamp withdraw_date;
	private String member_name;
}
