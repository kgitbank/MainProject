package member.db;

public interface MemberDAO {
	int pwCheck(String m_id, String m_pw);
	MemberDTO infoSetting(String m_id);
	boolean checkMember(String ssn1, String ssn2);
	public int insertMember(MemberDTO dto);
}
