package com.teau.biz.member.impl;

import java.util.List;

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

	public List<MemberVO> getMemberList(MemberVO vo) {
		return mybatis.selectList("MemberDAO.getMemberList", vo);
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

}
