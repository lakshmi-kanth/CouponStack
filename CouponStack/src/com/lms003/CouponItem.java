package com.lms003;

public class CouponItem {
	String couponId;
	String companyId;
	String couponCode;
	int discount;
	String discount_type;
	String coupon_type;
	String validity_from;
	String validity_to;
	public CouponItem(String a,String b,String c,int d,String e,String f,String g,String h) {
		this.couponId=a;
		this.companyId=b;
		this.couponCode=c;
		this.discount=d;
		this.discount_type=e;
		this.coupon_type=f;
		this.validity_from=g;
		this.validity_to=h;
	}
	public String getCouponId() {
		return couponId;
	}
	public String getCouponCode() {
		return couponCode;
	}
	public String getCompanyId() {
		return companyId;
	}
	public int getDiscount() {
		return discount;
	}
	public String getDiscountType() {
		return discount_type;
	}
	public String getCouponType() {
		return coupon_type;
	}
	public String getValidityFrom() {
		return validity_from;
	}
	public String getValidityTo() {
		return validity_to;
	}
}
