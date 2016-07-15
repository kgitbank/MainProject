package member.db;


import com.ibatis.common.resources.Resources;

import java.io.Reader;
import java.io.IOException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


/**
 * This is not a best practices class.  It's just an example
 * to give you an idea of how iBATIS works.  For a more complete
 * example, see JPetStore 5.0 at http://www.ibatis.com.
 */
public class MemberManager {

  /**
   * SqlMapClient instances are thread safe, so you only need one.
   * In this case, we'll use a static singleton.  So sue me.  ;-)
   */
  private static SqlSessionFactory sqlMapper;

  /**
   * It's not a good idea to put code that can fail in a class initializer,
   * but for sake of argument, here's how you configure an SQL Map.
   */
  static {
    try {
      Reader reader = Resources.getResourceAsReader("SqlMapConfig.xml");
      sqlMapper = new SqlSessionFactoryBuilder().build(reader);
      reader.close(); 
    } catch (IOException e) {
      // Fail fast.
      throw new RuntimeException("Something bad happened while building the SqlMapClient instance." + e, e);
    }
  }

  public static String pwChk(String m_id){
	  String pw="";
	  SqlSession session = sqlMapper.openSession();
	  pw = session.selectOne("pwChk", m_id);
	  session.close();
	  return pw;
  }
  
  public static MemberDTO infoSetting(String m_id){
	  MemberDTO chk = null;
	  SqlSession session = sqlMapper.openSession();
	  chk = session.selectOne("infoSetting", m_id);
	  session.close();
	  return chk;
  }
  
  public static List listMember(){
	  List memberList = null;
	  SqlSession session = sqlMapper.openSession();
	  memberList = session.selectList("listMember");
	  session.close();
	  return memberList;
  }
//
//
//  
//  public static void insertBoard(BoardDTO dto){
//	  SqlSession session = sqlMapper.openSession();
//	  session.insert("insertBoard", dto);
//	  session.commit();
//	  session.close();
//  }
//  
//  public static void deleteBoard(int seq){
//	  SqlSession session = sqlMapper.openSession();
//	  session.delete("deleteBoard", seq);
//	  session.commit();
//	  session.close();
//  }
//  
//  public static void updateBoard(BoardDTO dto){
//	  SqlSession session = sqlMapper.openSession();
//	  session.delete("updateBoard", dto);
//	  session.commit();
//	  session.close();
//  }
}











