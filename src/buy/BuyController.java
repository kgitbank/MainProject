package buy;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.portlet.ModelAndView;

import buy.db.BuyDAO;
@Controller
public class BuyController {
	private BuyDAO buyDAO;
	
	public void setBuyDAO(BuyDAO buyDAO) {
		this.buyDAO = buyDAO;
	}

	@RequestMapping(value="/buy_list.do", method=RequestMethod.GET)
	protected ModelAndView orderList(HttpServletRequest arg0, 
			HttpServletResponse arg1){
		ModelAndView mav = new ModelAndView();
		List list = buyDAO.buyList();
		mav.addObject("orderList", list);
		mav.setViewName("order/insert.jsp");
		return mav;
	}
	
	
}
