package member.db;


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
	}


}
