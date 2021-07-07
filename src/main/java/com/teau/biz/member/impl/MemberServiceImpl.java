package com.teau.biz.member.impl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teau.biz.member.MemberService;
import com.teau.biz.member.MemberVO;

@Service("memberService")
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAOMybatis MemberDAO;
	
	public MemberServiceImpl() {
		
	}
	
	public void insertMember(MemberVO vo) {
		MemberDAO.insertMember(vo);

	}

	public void updateMember(MemberVO vo) {
		MemberDAO.updateMember(vo);

	}
	
	public void memberSub(MemberVO vo) {
		MemberDAO.MemberSub(vo);
	}

	public void deleteMember(MemberVO vo) {
		MemberDAO.deleteMember(vo);
	}

	public MemberVO getMember(MemberVO vo) {
		return MemberDAO.getMember(vo);
	}

	public int memberPasscheck(MemberVO vo) {
		int result = MemberDAO.memberPasscheck(vo);	
		return result;
	}
	
	public int memberIdcheck(MemberVO vo) {
		int result = MemberDAO.memberIdcheck(vo);	
		return result;
	}
	
	public void updateAdmin(MemberVO vo) {
		MemberDAO.updateAdmin(vo);
	}

	
	public List<MemberVO> getMemberList(MemberVO vo) {
		return MemberDAO.getMemberList(vo);
	}

	public int totalCnt() {
		return MemberDAO.totalCnt();
	}
	
	/*
	 * public int disableMember(Map<String, String> disable) { return
	 * MemberDAO.disableMember(disable); }
	 */
}

