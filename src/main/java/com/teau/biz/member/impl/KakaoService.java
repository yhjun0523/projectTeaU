package com.teau.biz.member.impl;

import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.stereotype.Service;

//@Service
public class KakaoService {

	public String getAccessToken(String authorize_code) {
		String access_Token = "";
		String refresh_Token = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";
		
		try {
			URL url = new URL(reqURL);
			
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			
			
			// post 요청에 필요로 요구하는 파라미터 스트링을  통해 전송
			BufferWriter bw = new BufferWriter(new OutputStreamWriter(conn.getOutputStream()));
		}
		
	}

}
