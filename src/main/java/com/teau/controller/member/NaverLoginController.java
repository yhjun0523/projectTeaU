package com.teau.controller.member;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.teau.biz.member.NaverLoginBO;
 
//@Controller
public class NaverLoginController {

	private NaverLoginBO naverLoginBO;
	private String apiResult = null;

	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}

	// 로그인 첫 화면 요청 메소드
	@RequestMapping(value = "/NaverLogin.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String NaverLogin(Model model, HttpSession session) {

		/* 네이버아이디로 인증 URL을 생성하기 위하여 naverLoginBO클래스의 getAuthorizationUrl메소드 호출 */
		String naverAuthUrl = naverLoginBO.getAuthorizationURL(session);

		// https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
		// redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
		System.out.println("네이버:" + naverAuthUrl);
		// 네이버
		model.addAttribute("url", naverAuthUrl);
		return "NaverLogin.do";

	}
	// object mapper , json view
	// 네이버 로그인 성공시 callback호출 메소드
	@RequestMapping(value = "/callback.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException, ParseException {

		System.out.println("callback init()");
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);

		// 1. 로그인 사용자 정보 읽어오기
		apiResult = naverLoginBO.getUserProfile(oauthToken); // String 형식의 json데이터

		// 2. String 형식의 apiResult를 json으로 형변환
		JSONParser parser = new JSONParser();
		Object obj = parser.parse(apiResult);
		JSONObject jsonObj = (JSONObject) obj;

		// 3. 데이터 파싱
		// TOP 레벨 단계 _response 파싱
		JSONObject response_obj = (JSONObject)jsonObj.get("response");
		// response 의 name값 파싱
		String name = (String) response_obj.get("name");

		System.out.println("name");

		// 4. 파싱 네임 세션으로 저장
		session.setAttribute("sessionName", name);

		model.addAttribute("result", apiResult);

		return "NaverLogin.do";
	}

	// 로그아웃
	@RequestMapping(value="/NaverLogout", method= {RequestMethod.GET, RequestMethod.POST})
	public String NaverLogout(HttpSession session) throws IOException{
		System.out.println("NaverLogout");
		session.invalidate();
		
		return "redirect:index.jsp";
	}
}
