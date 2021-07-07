package com.teau.controller.member;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.teau.biz.member.MemberService;
import com.teau.biz.member.MemberVO;
import com.teau.biz.member.PageMakerM;

@Controller

public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	//회원가입페이지
	
	// 회원가입 화면으로 이동
	@RequestMapping("/signup.do")
	public String join() {
//		return "WEB-INF/JSP/signup.jsp";
		return "join";
	}
	
	/*
	 * @RequestMapping(value = "/signUp.do", method = RequestMethod.GET) public
	 * String signUpGET() throws IOException{ return "WEB-INF/JSP/signUp.jsp"; }
	 */
	
	
	//회원가입 처리
	/*
	 * @RequestMapping(value = "/signUn.do", method = RequestMethod.POST) public
	 * String signUpPOST(MemberVO membervo, RedirectAttributes redirectAttributes)
	 * throws IOException{
	 * 
	 * }
	 */
	
	
	// 회원 가입 기능 처리
	@RequestMapping("/insertMember.do")
	public String insertMember(MemberVO vo, Model model) throws IOException {
		int result = memberService.memberIdcheck(vo);
		
		if(result == 0 ) {
			System.out.println("회원가입  성공");
			memberService.insertMember(vo);
			return "redirect:login.do";
		} else {
			model.addAttribute("msg", "중복된 아이디입니다.");
//			return "WEB-INF/JSP/signup.jsp";
			return "join";
		}

	}
	
	// 마이페이지 회원정보 화면
	@RequestMapping(value="/mypage_edit.do")
	public String mypageEdit(HttpServletRequest request, Model model) throws Exception{
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		System.out.println(member);
		if(member != null) {
			System.out.println(member.getMemberId());
		}
		model.addAttribute("member", member);
		return "mypage_edit";
	}
	
	// 회원 수정
	@RequestMapping("/updateMember.do")
	public String updateMember(MemberVO vo, Model model, HttpSession session) {
		System.out.println("updateMember");
		System.out.println("updateMember");
		System.out.println("memberName :" + vo.getMemberName());
		System.out.println("memberAddress :" + vo.getMemberAddress());
		System.out.println("memberEmail :" + vo.getMemberEmail());
		System.out.println("memberPass :" + vo.getMemberPass());
		System.out.println("memberPhone :" + vo.getMemberPhone());
		
		//추가
		session.setAttribute("member", vo);
		
		memberService.updateMember(vo);
		return "redirect:mypage.do";
	}
	
	
	
	// 회원 탈퇴
	@RequestMapping("/deleteMember.do")
	public String deleteMember(MemberVO vo, HttpSession session) throws IOException{
		System.out.println("deleteMember");
		session.setAttribute("member", vo);
		memberService.deleteMember(vo);
		return "redirect:index.jsp";
	}
	
	// 마이페이지 - 회원정보 받아오기
	@RequestMapping("/getMember.do")
	public String getMember(@RequestParam("memberId") String id, Model model) throws IOException{
		
		MemberVO vo = new MemberVO();
		vo.setMemberId(id);
		System.out.println("getMember");
		
//		MemberVO member = memberService.getMember(vo);
		model.addAttribute("member", memberService.getMember(vo));
		return "redirect:mypage.do";
	}
	
//
	@RequestMapping("/getMember1.do")
	public String getMember(MemberVO vo, Model model) {
		System.out.println("getMember");
		MemberVO member = memberService.getMember(vo);
		model.addAttribute("member", member);
		return "myPage";
	}
	
	// admin 관련추가
	@RequestMapping("/updateAdmin.do")
	public String updateAdmin(MemberVO vo, Model model, HttpSession session) {
		System.out.println("updateAdmin");
		System.out.println("memberRole :" + vo.getMemberRole());
		
		//추가
		session.setAttribute("member", vo);
		
		memberService.updateAdmin(vo);
		return "redirect:getMemberList.do";
	}
	
	@RequestMapping("/admin.do")
	public String admin() {
		return "admin";
	}
	
	@RequestMapping("/getMemberList.do")
	public String getMemberList(MemberVO vo, Model model) {
        //List<BoardVO> boardList = boardService.getBoardList(cri);
        System.out.println("멤버 목록 조회 처리");

        int total = memberService.totalCnt();

        // Model 정보 저장
        model.addAttribute("pagingM", new PageMakerM(vo, total));
        model.addAttribute("memberList", memberService.getMemberList(vo));
        return "member_management";
	}
	
	/*
	 * @RequestMapping("/disableMember.do") public String
	 * disableMember(@RequestParam Map<String, String> disable) {
	 * memberService.disableMember(disable); return "member_management"; }
	 */

}
