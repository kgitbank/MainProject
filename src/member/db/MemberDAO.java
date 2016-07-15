package member.db;

import java.util.List;

public interface MemberDAO {
	public int pwCheck(String m_id, String m_pw);
	public MemberDTO infoSetting(String m_id);
	public boolean checkMember(String ssn1, String ssn2);
	public int insertMember(MemberDTO dto);
	public List listMember();
}
