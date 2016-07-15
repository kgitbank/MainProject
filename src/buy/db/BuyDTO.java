package buy.db;

import java.sql.Array;
import java.util.ArrayList;

public class BuyDTO {
	private int p_num;
	private String m_name;
	private Array p_amount;
	private Array p_code;
	public Array getP_amount() {
		return p_amount;
	}
	public void setP_amount(Array p_amount) {
		this.p_amount = p_amount;
	}
	public Array getP_code() {
		return p_code;
	}
	public void setP_code(Array p_code) {
		this.p_code = p_code;
	}
	public BuyDTO() {
	}
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}

	
	
	
}
