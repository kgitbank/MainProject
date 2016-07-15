package member;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;	
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import member.db.MemberDAO;
import member.db.MemberDTO;

@Controller
public class MemberController {
	private MemberDAO memberDAO;
	 
	public void setMemberDAO(MemberDAO memberDAO) {
		this.memberDAO = memberDAO;
	}
	
	@RequestMapping(value="/login.do", method=RequestMethod.GET)
	protected ModelAndView loginForm(HttpServletRequest arg0, 
			HttpServletResponse arg1) throws Exception {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("member/login.jsp");
		return mav;
	}
	
	@RequestMapping(value="/loginOk.do", method=RequestMethod.POST)
	protected ModelAndView loginOk(HttpServletRequest arg0, 
			HttpServletResponse arg1) throws Exception {
		ModelAndView mav = new ModelAndView();
		String saveId = arg0.getParameter("saveId");
		String id = arg0.getParameter("m_id");
		String pw = arg0.getParameter("m_pw");
		//üũ�� �Ǿ������� on, üũ�� �ȵǾ� ������ null
		MemberDTO loginOk = new MemberDTO();
		int res = memberDAO.pwCheck(id, pw);
		String msg = null;
		String url = null;
		switch(res){
		case 1 : 
			loginOk.setM_id(id);
			try {
				loginOk = memberDAO.infoSetting(id);
				if (loginOk != null){
					Cookie ck = new Cookie("saveId", loginOk.getM_id());
					if (saveId != null) {
						ck.setMaxAge(12*60*60);
					}else {
						ck.setMaxAge(0);
					}
					arg1.addCookie(ck);
					HttpSession session = arg0.getSession();
					session.setAttribute("mbId", loginOk.getM_id());
					session.setAttribute("mbName", loginOk.getM_name());
					msg = loginOk.getM_name()+"��, ȯ���մϴ�.";
					String back = "true";
					arg0.setAttribute("msg",msg);
					arg0.setAttribute("back",back);
					mav.setViewName("/back.jsp");
					return mav;
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
			break;
		case 2 :
			msg="���̵� �������� �ʽ��ϴ�.";
			url="login.do";
			break;
		case 3 :
			msg="��й�ȣ�� Ʋ�Ƚ��ϴ�.";
			url="login.do";
			break;
		case -1 :
			msg="���������߻�!! �����ڿ��� �����ϼ���";
			url="login.do";
			break;
		}
		arg0.setAttribute("msg",msg);
		arg0.setAttribute("url",url);
		mav.setViewName("/message.jsp");
		return mav;
	}
	
	@RequestMapping(value="/admin_member.do", method=RequestMethod.GET)
	protected ModelAndView listMember(HttpServletRequest arg0, 
			HttpServletResponse arg1) throws Exception {
		ModelAndView mav = new ModelAndView();
		List memberList = memberDAO.listMember();
		mav.addObject("memberList", memberList);
		mav.setViewName("admin/admin_member.jsp");
		return mav;
	}
	
	
	
	@RequestMapping(value="/memberSsn.do", method=RequestMethod.GET)
	protected ModelAndView memberSsn(HttpServletRequest arg0, 
			HttpServletResponse arg1) throws Exception {
		return new ModelAndView("member/memberSsn.jsp");
	}
	
	@RequestMapping(value="/check.do", method=RequestMethod.POST)
	protected ModelAndView memberChk(HttpServletRequest arg0, 
			HttpServletResponse arg1) throws Exception {
		ModelAndView mav = new ModelAndView();
		String ssn1 = arg0.getParameter("m_ssn1");
		String ssn2 = arg0.getParameter("m_ssn2");
		String name = arg0.getParameter("m_name");
		boolean chk = false;
		chk= memberDAO.checkMember(ssn1, ssn2);
		if(chk){
			arg0.setAttribute("msg","�̹� ��ϵ� ȸ���Դϴ�. �α��� ���ּ���!!" );
			arg0.setAttribute("url","login.do" );
			mav.setViewName("/message.jsp");
		}else {
			arg0.setAttribute("msg","ȸ�������������� �̵��մϴ�." );
			arg0.setAttribute("url","member/member.jsp" );
			mav.setViewName("/message.jsp");
		}
		return mav;
	}
	

}
