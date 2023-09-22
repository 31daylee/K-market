package kr.co.kmarket.controller.product;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import kr.co.kmarket.dto.CartDTO;
import kr.co.kmarket.dto.MemberDTO;
import kr.co.kmarket.dto.OrderDTO;
import kr.co.kmarket.service.CartService;
import kr.co.kmarket.service.OrderService;

@WebServlet("/product/productcomplete.do")
public class ProductCompleteController extends HttpServlet{
	
	CartService service = CartService.INSTANCE;
	OrderService orservice = OrderService.INSTANCE;
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		MemberDTO sessiondto = (MemberDTO) session.getAttribute("user");
		String userid = sessiondto.getUid();

		List<CartDTO> list = orservice.selectOrdersItem(userid);
		OrderDTO ordto = orservice.selectOrderComplite(userid);
		
		logger.debug("ordto = "+ordto.toString());
		
		req.setAttribute("list", list);
		req.setAttribute("ordto", ordto);
			 
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/product/productComplete.jsp");
		dispatcher.forward(req, resp);	
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		MemberDTO sessiondto = (MemberDTO) session.getAttribute("user");
		String userid = sessiondto.getUid();
		String count = req.getParameter("ordercount");
		String ordernodiscount = req.getParameter("ordernodiscount");
		String orderdiscount = req.getParameter("orderdiscount");
		String orderpointdiscount = req.getParameter("orderpointdiscount");
		String orderdelivery = req.getParameter("orderdelivery");
		String orderpoint = req.getParameter("orderpoint");
		String ordertotal = req.getParameter("ordertotal");
		String orderer = req.getParameter("orderer");
		String hp = req.getParameter("hp");
		String km_zip = req.getParameter("km_zip");
		String km_addr1 = req.getParameter("km_addr1");
		String km_addr2 = req.getParameter("km_addr2");
		String payment = req.getParameter("payment");
		System.out.println("count" + count);
		System.out.println("ordernodiscount" + ordernodiscount);
		System.out.println("orderdiscount" + orderdiscount);
		System.out.println("orderpointdiscount" + orderpointdiscount);
		System.out.println("orderdelivery" + orderdelivery);
		System.out.println("orderpoint" + orderpoint);
		System.out.println("ordertotal" + ordertotal);
		OrderDTO dto = new OrderDTO();
		dto.setUid(userid);
		dto.setOrdCount(count);
		dto.setOrdPrice(ordernodiscount);
		dto.setOrdDiscount(orderdiscount);
		dto.setOrdDelivery(orderdelivery);
		dto.setSavePoint(orderpoint);
		dto.setUsedPoint(orderpointdiscount);
		dto.setOrdTotPrice(ordertotal);
		dto.setRecipName(orderer);
		dto.setRecipHp(hp);
		dto.setRecipZip(km_zip);
		dto.setRecipAddr1(km_addr1);
		dto.setRecipAddr2(km_addr2);
		dto.setOrdPayment(payment);
		dto.setOrdComplete(1);
		orservice.insertOrderComplite(dto);
		
		
		resp.sendRedirect("/K-market/product/productcomplete.do");
	}
}
