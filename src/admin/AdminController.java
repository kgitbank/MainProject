package admin;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

import admin.db.CateDAO;
import admin.db.ProdDAO;
@Controller
public class AdminController {
	CateDAO cateDAO;
	ProdDAO prodDAO;
	public void setCateDAO(CateDAO cateDAO) {
		this.cateDAO = cateDAO;
	}
	public void setProdDAO(ProdDAO prodDAO) {
		this.prodDAO = prodDAO;
	}
	
	@RequestMapping(value="/cate_list.do", method=RequestMethod.GET)
	protected ModelAndView cateList(HttpServletRequest arg0, 
			HttpServletResponse arg1){
		ModelAndView mav = new ModelAndView();
		return mav;
	}
	
	
}
