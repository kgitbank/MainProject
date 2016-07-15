package member.db;

import java.util.Date;

public class MemberDTO {
	private	String m_id;
	private	String m_name;
	private	String m_pw;
	private	String m_ssn;
	private	String m_gender;
	private	String m_phone;
	private	String m_tell;
	private	String m_zipcode;
	private	String m_addr1;
	private	String m_addr2;
	private	String m_email;
	private	Date m_joindate;
	private	int m_point;
	private	Date m_logindate;
	private	int m_visitCount;

	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_pw() {
		return m_pw;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}
	public String getM_ssn() {
		return m_ssn;
	}
	public void setM_ssn(String m_ssn) {
		this.m_ssn = m_ssn;
	}

	public String getM_gender() {
		return m_gender;
	}
	public void setM_gender(String m_gender) {
		this.m_gender = m_gender;
	}
	public String getM_phone() {
		return m_phone;
	}
	public void setM_phone(String m_phone) {
		this.m_phone = m_phone;
	}
	public String getM_tell() {
		return m_tell;
	}
	public void setM_tell(String m_tell) {
		this.m_tell = m_tell;
	}
	public String getM_zipcode() {
		return m_zipcode;
	}
	public void setM_zipcode(String m_zipcode) {
		this.m_zipcode = m_zipcode;
	}
	public String getM_addr1() {
		return m_addr1;
	}
	public void setM_addr1(String m_addr1) {
		this.m_addr1 = m_addr1;
	}
	public String getM_addr2() {
		return m_addr2;
	}
	public void setM_addr2(String m_addr2) {
		this.m_addr2 = m_addr2;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public Date getM_joindate() {
		return m_joindate;
	}
	public void setM_joindate(Date m_joindate) {
		this.m_joindate = m_joindate;
	}
	public int getM_point() {
		return m_point;
	}
	public void setM_point(int m_point) {
		this.m_point = m_point;
	}
	public Date getM_logindate() {
		return m_logindate;
	}
	public void setM_logindate(Date m_logindate) {
		this.m_logindate = m_logindate;
	}
	public int getM_visitCount() {
		return m_visitCount;
	}
	public void setM_visitCount(int m_visitCount) {
		this.m_visitCount = m_visitCount;
	}

}
