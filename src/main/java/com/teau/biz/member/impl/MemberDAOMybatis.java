package com.teau.biz.member.impl;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.teau.biz.member.MemberVO;

@Repository
public class MemberDAOMybatis {
	@Autowired
	private SqlSessionTemplate mybatis;

	public void insertMember(MemberVO vo) {
		System.out.println("마이바티스로 insertmember 처리");
		mybatis.insert("MemberDAO.insertMember", vo);
	}

	public void updateMember(MemberVO vo) {
		System.out.println();
		mybatis.update("MemberDAO.updateMember", vo);
	}

	public void deleteMember(MemberVO vo) {
		mybatis.delete("MemberDao.deleteMember", vo);
	}

	public MemberVO getMember(MemberVO vo) {
		return (MemberVO) mybatis.selectOne("MemberDAO.getMember", vo);
	}
	//
	public int memberPasscheck(MemberVO vo) {
		int result = mybatis.selectOne("MemberDAO.memberPasscheck", vo);
		return result;
	}

	public int memberIdcheck(MemberVO vo) {
		int result = mybatis.selectOne("MemberDAO.memberIdcheck", vo);
		return result;
	}

	public void MemberSub(MemberVO vo) {
		System.out.println("mybatis로 Membersub 값 변경");
		mybatis.update("MemberDAO.memberSub", vo);
	}
	
	// 추가
	public void updateAdmin(MemberVO vo) {
		System.out.println("MemberDAO.updateAdmin");
		mybatis.update("MemberDAO.updateAdmin", vo);
	}
	
	// 페이징관련
    // 랭킹 보드 목록보기
    public List<MemberVO> getMemberList(MemberVO vo) {
        System.out.println("===> Mybatis로  getMemberList() 기능 처리");
        return mybatis.selectList("MemberDAO.getMemberList", vo);
    }

    // 페이징 관련
    public int totalCnt() {
        System.out.println("===> Mybatis로 totalCnt");
        return mybatis.selectOne("MemberDAO.getTotalCnt");
    }
    
	/*
	 * public int disableMember(Map<String, String> disable) {
	 * System.out.println("MemberDAO.disableMember"); return
	 * mybatis.update("MemberDAO.disableMember",disable); }
	 */
}
