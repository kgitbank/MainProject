package member.db;

<<<<<<< HEAD

import java.util.List;


public class MemberDAOImpl implements MemberDAO {

	//상수선언
	public static final int OK = 1;				//로그인 성공했을때
	public static final int NOT_ID = 2;		//아이디를 못찾았을때
	public static final int NOT_PWD = 3;	//비밀번호가 틀렸을때
	public static final int ERROR = -1;		//SQLException 발생시

	
	public int insertMember(MemberDTO dto) {
		return 1;
	}
	
	public int pwCheck(String id, String pw){
		String m_pw = MemberManager.pwChk(id);
		try{
		if(m_pw!=null){
			if(m_pw.equals(pw)) return OK;
			else return NOT_PWD;
		}else return NOT_ID;
		}catch(Exception e){
			e.printStackTrace();
			return ERROR;
		}
	}
	
	public MemberDTO infoSetting(String m_id) {
		MemberDTO chkMember = MemberManager.infoSetting(m_id);
		return chkMember;
	}

	public boolean checkMember(String ssn1, String ssn2) {
		boolean check=false;
		return check;
	}
	
	public List listMember(){
		List result = MemberManager.listMember();
		return result;
=======
import java.lang.reflect.Member;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import org.springframework.dao.DataAccessException;
import org.springframework.dao.DataRetrievalFailureException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementSetter;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;


public class MemberDAOImpl implements MemberDAO {

	//변수선언
	private String m_id;
	private String m_pw;
	private JdbcTemplate jdbcTemplate;
	
	//상수선언
	public static final int OK = 1;				//로그인 성공했을때
	public static final int NOT_ID = 2;		//아이디를 못찾았을때
	public static final int NOT_PWD = 3;	//비밀번호가 틀렸을때
	public static final int ERROR = -1;		//SQLException 발생시
	
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getM_pw() {
		return m_pw;
	}
	public void setM_pw(String m_pw) {
		this.m_pw = m_pw;
	}

	public void setJdbcTemplate(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	private class MyRowMapper implements RowMapper{
		public Object mapRow(ResultSet arg0, int arg1) throws SQLException {
			MemberDTO dto = new MemberDTO();
			dto.setM_id(arg0.getString("m_id"));
			dto.setM_name(arg0.getString("m_name"));
			dto.setM_pw(arg0.getString("m_pw"));
			dto.setM_ssn(arg0.getString("m_ssn"));
			dto.setM_gender(arg0.getString("m_gender"));
			dto.setM_phone(arg0.getString("m_phone"));
			dto.setM_tell(arg0.getString("m_tell"));
			dto.setM_zipcode(arg0.getString("m_zipcode"));
			dto.setM_addr1(arg0.getString("m_addr1"));
			dto.setM_addr2(arg0.getString("m_addr2"));
			dto.setM_email(arg0.getString("m_email"));
			dto.setM_point(arg0.getInt("m_point"));
			dto.setM_joindate(arg0.getDate("m_joindate"));
			dto.setM_logindate(arg0.getDate("m_logindate"));
			dto.setM_visitCount(arg0.getInt("m_visitCount"));
			return dto;
		}	
	}
	
	public int insertMember(MemberDTO dto) {
		String sql = "insert into member values(?,?,?,?,?,?)";
		Object obj[] = new Object[]{dto.getM_name(), dto.getM_id(), dto.getM_pw(), 
						 dto.getM_ssn(), dto.getM_email(), dto.getM_phone()};
		return (int)jdbcTemplate.update(sql, obj);
	}
	
	public int pwCheck(String id, String pw){
		String m_pw = MemberManager.pwChk(id);
		try{
		if(m_pw!=null){
			if(m_pw.equals(pw)) return OK;
			else return NOT_PWD;
		}else return NOT_ID;
		}catch(Exception e){
			e.printStackTrace();
			return ERROR;
		}
	}
	
	public MemberDTO infoSetting(String m_id) {
		MemberDTO chkMember = MemberManager.infoSetting(m_id);
		return chkMember;
	}

	public boolean checkMember(String ssn1, String ssn2) {
		boolean check=false;
		String sql = "select * from member where m_ssn=?";
		MemberDTO dto = (MemberDTO)jdbcTemplate.query(sql, new MyPreparedStatementSetterKey(ssn1+ssn2), new MyResultSetExtractor());
		if(dto!=null){
			check=true;
		}
		return check;
	}
	
	private class MyPreparedStatementSetterKey implements PreparedStatementSetter{
		private String m_ssn;
		
		public MyPreparedStatementSetterKey(String m_ssn) {
			this.m_ssn = m_ssn;
		}

		public void setValues(PreparedStatement arg0) throws SQLException {
			// TODO Auto-generated method stub
			arg0.setString(1, m_ssn);
		}
		
	}
	private class MyResultSetExtractor implements ResultSetExtractor{
		public Object extractData(ResultSet arg0) throws SQLException, DataAccessException {
			if (arg0.next()){
				MemberDTO dto = new MemberDTO();
				dto.setM_id(arg0.getString("m_id"));
				dto.setM_name(arg0.getString("m_name"));
				dto.setM_pw(arg0.getString("m_pw"));
				dto.setM_ssn(arg0.getString("m_ssn"));
				dto.setM_gender(arg0.getString("m_gender"));
				dto.setM_phone(arg0.getString("m_phone"));
				dto.setM_tell(arg0.getString("m_tell"));
				dto.setM_zipcode(arg0.getString("m_zipcode"));
				dto.setM_addr1(arg0.getString("m_addr1"));
				dto.setM_addr2(arg0.getString("m_addr2"));
				dto.setM_email(arg0.getString("m_email"));
				dto.setM_point(arg0.getInt("m_point"));
				dto.setM_joindate(arg0.getDate("m_joindate"));
				dto.setM_logindate(arg0.getDate("m_logindate"));
				dto.setM_visitCount(arg0.getInt("m_visitCount"));
				return dto;
			}
			else {
				return null;
			}
		}
		
>>>>>>> branch 'master' of https://github.com/kgitbank/MainProject
	}


}
