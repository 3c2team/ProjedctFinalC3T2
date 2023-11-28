package com.itwillbs.garge.vo;

import com.google.protobuf.Timestamp;

import lombok.Data;

@Data
public class DepositVO {
	private String deposit_bank;
	private String deposit_acc;
	private String owner_bank;
	private String owner_acc;
	private String commission; 
	private String product_price; 
	private String member_id; 
	private String method;
	private String buy_check; 
	private Timestamp deposit_date;
	private String member_name;

}
