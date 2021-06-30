package com.teau.biz.member;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {

	// 회원 아이디
	private String memberId;
	// 비밀번호
	private String memberPass;
	// 이름
	private String memberName;
	// 이메일
	private String memberEmail;
	// 휴대폰번호
	private String memberPhone;
	// private String memberZipcode;
	// 주소
	private String memberAddress;
	// 포인트
	private int memberPoint;
	// 가입일
	private Date memberJoindate;
	// 구독여부
	private String memberSub;

	// 역할(0 일반회원, 1 관리자, 2 정지회원)
	private String memberRole;

}
