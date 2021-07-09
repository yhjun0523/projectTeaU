package com.teau.controller.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.teau.biz.member.MemberService;
import com.teau.biz.member.MemberVO;

@Controller
public class LoginController {
    @Autowired
    MemberService memberService;

    // 구독

    @RequestMapping(value="/loginView.do")
    // "memberId"의 파라미터를 요청해서 String id에 넣어달라(폼에서 사용자가 작성한 memberId가 넘어오게 된다)
    public String loginView(@RequestParam("memberId") String id, @RequestParam("memberPass") String password,
            @RequestParam("referer") String referer, HttpSession session, Model model, HttpServletRequest request) {
        MemberVO vo = new MemberVO();
        vo.setMemberId(id);
        

        // id 미입력시
        if (vo.getMemberId() == null || vo.getMemberId().equals("")) {
            throw new IllegalArgumentException("아이디를 입력해주세요");
        }

        // id값을 저장한 객체 vo를 사용해 memberservice에서 멤버객체 가져오기
        MemberVO member = memberService.getMember(vo);
        System.out.println(member);

        // 아이디와 패스워드가 일치하는지 체크
        if (member != null) {
            //중지회원인지 검사
            if (!member.getMemberRole().equals("2")) {
                // 아이디와 비밀번호 모두 일치
                if (id.equals(member.getMemberId()) && password.equals(member.getMemberPass())) {
                    session.setAttribute("member", member);
                    System.out.println(member.getMemberId());
                    System.out.println("로그인 성공");
                    
                    if(referer != null && !referer.equals("")) {
                        return "redirect:" + referer;
                    } else {
                        return "redirect:index.jsp";
                    }
                    
                    

                } else {
                    // 아이디와 비밀번호가 일치하지 않음
                    System.out.println("아이디 또는 비밀번호가 잘못되었습니다");
                    model.addAttribute("msg", "아이디 또는 비밀번호가 잘못되었습니다");
                    return "login";
                }
            } else {
                model.addAttribute("msg", "중지된 회원입니다. 관리자에게 문의하세요. 이메일:admin@teau.com");
                return "login";
            }
        } else {
            System.out.println("아이디 또는 비밀번호가 잘못되었습니다.");
            model.addAttribute("msg", "아이디 또는 비밀번호가 잘못되었습니다");
            return "login";
        }

    }

    // 로그인 상태와 비로그인 상태 구분?
    @RequestMapping(value="/login.do")
    public String login(HttpServletRequest request, Model model) {
        String referer = request.getHeader("Referer");
        model.addAttribute("referer", referer.substring(referer.lastIndexOf("/")+1, referer.length()));
        
        return "login";
    }

    /*
    * // 유저 참고
    * 
    * @RequestMapping(value="/login.do", method=RequestMethod.GET) public String
    * loginView(@ModelAttribute("member")MemberVO vo) { vo.setMemberId("test");
    * vo.setMemberId("test"); return "WEB-INF/JSP/login.jsp"; }
    * 
    * @RequestMapping(value="/login.do", method=RequestMethod.POST) public String
    * login(MemberVO vo, MemberDAOMybatis memberDAO, HttpSession session) {
    * if(vo.getMemberId() == null || vo.getMemberId().equals("")){ throw new
    * IllegalArgumentException("아이디를 입력해주세요"); }
    * 
    * MemberVO member = memberService.getMember(vo);
    * System.out.println(member.toString()); if(member != null) {
    * session.setAttribute("member", member); return "index.jsp"; } else return
    * "WEB-INF/JSP/login.do"; }
    */

    @RequestMapping("/logout.do")
    public String logout(HttpSession session) {
        System.out.println("로그아웃 성공");
        session.invalidate();
        return "redirect:index.jsp";
    }
    //   
    //   @Autowired
    //   private KakaoService kakaoService;
    //   // 카카로 로그인 
    //   @RequestMapping("/kakaoLogin.do")
    //   public String kakaoLogin(@RequestParam(value = "code", required = false) String code) throws Exception {
    //	   System.out.println("카카오 로그인 보이나?");
    //	   System.out.println("code: " + code);
    //	   String access_Token = kakaoService.getAccessToken(code);
    //	   return "index";
    //   }

}