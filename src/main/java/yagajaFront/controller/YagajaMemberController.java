package yagajaFront.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.YagajaMemberDAO;
import member.YagajaMemberImpl;
import member.YagajaMemberVO;

@Controller
public class YagajaMemberController {

	/*
	servlet-context.xml에서 생성한 빈을 자동으로 주입받기 위한 설정으로 MyBoardDAO를 기반으로 생성한 빈을 자동주입받기
 	때문에 new MyBoardDAO()로 객체를 별도로 생성할 필요 없이 dao.메소드()형태로 즉시 호출할 수 있다.
	 */

	@Autowired
	YagajaMemberDAO dao;
	public void setDao(YagajaMemberDAO dao) {
		this.dao = dao;
	}

	@Autowired
	private SqlSession sqlSession;
	
	
	//야가자 메인페이지
	@RequestMapping("/main/main.do")
	public String main(Model model, HttpServletRequest req) {
		return "Main/main";
	}

	//회원가입 동의페이지
	@RequestMapping("/member/memberjoin.do")
	public String memberjoin(Model model, HttpServletRequest req) {
		return "member/memberjoin";
	}
	
	//회원가입 페이지
	@RequestMapping("/member/memberjoinForm.do")
	public String memberjoinForm(Model model, HttpServletRequest req) {
		return "member/memberjoinForm";
	}

	//로그인 페이지
	@RequestMapping("/member/login.do")
	public String login(Model model) {	
	
		return "member/login";
	}

	// 로그인처리
	@RequestMapping("/member/loginAction.do")
	public ModelAndView loginAction(HttpServletRequest req, HttpSession session) {

		// JDBCTemplate 사용
		// MemberVO vo = dao.login(req.getParameter("id"),req.getParameter("pass"));

		// Mybatis사용
		YagajaMemberVO vo = sqlSession.getMapper(YagajaMemberImpl.class).login(req.getParameter("id"),req.getParameter("pass"));

		ModelAndView mv = new ModelAndView();
		
		if (vo == null) {
			// 로그인 실패시
			mv.addObject("LoginNG", "아이디/패스워드가 틀렸습니다.");
			mv.setViewName("member/login");
			return mv;
		} else {
			// 로그인 성공시
			session.setAttribute("siteUserInfo", vo);
		}

		// 로그인 후 페이지 이동
		String backUrl = req.getParameter("backUrl");
		if (backUrl == null || backUrl.equals("")) {
			mv.setViewName("member/login");
		} else {
			mv.setViewName(backUrl);
		}
		return mv;
	}
}
