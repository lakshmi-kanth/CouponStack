package com.lms003;

public class CpnItm {
	int cpn_val;
	String dis_mes;
	String dis_des;
	String payvia;
	int moa;
	String freq;
	
	CpnItm(int cpn_val,String dis_mes,String dis_des,String payvia,int moa, String freq) {
		this.cpn_val = cpn_val;
		this.dis_mes = dis_mes;
		this.dis_des = dis_des;
		this.payvia = payvia;
		this.moa = moa;
		this.freq = freq;
	}
	
	public int getCpnVal() {
		return cpn_val;
	}
	public String getDisMes() {
		return dis_mes;
	}
	public String getDisDes() {
		return dis_des;
	}
	public String getPayVia() {
		return payvia;
	}
	public int getMoa() {
		return moa;
	}
	public String getFreq() {
		return freq;
	}
}
