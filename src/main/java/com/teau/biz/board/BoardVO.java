package com.teau.biz.board;

import java.sql.Date;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonFormat;

@XmlAccessorType(XmlAccessType.FIELD)
// 일반게시글(씨앗/새싹)
public class BoardVO {
//hahaha
    // 게시판 번호
    private int boardId;

    // 게시판 구분 1 일반 2 랭킹
    private int boardCate;

    // 게시글 작성자
    private String boardWriter;

    // 게시글 제목
    private String boardTitle;

    // 게시글 내용
    private String boardContent;

    // 썸네일 사진
    private String boardImgm;

    // 멀티파트
    private MultipartFile uploadFile;

    // 게시글 날짜
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
    private Date boardRegdate;

    // 게시글 댓글수
    private int replyCount;

    private int pageNum = 1; // 페이지 번호
    private int amount = 9; // 일반 게시판 페이지당 데이터 갯수
    private int amountR = 4; // 랭킹 게시판 페이지당 데이터 갯수
    
    private int boardLikeCount; // 게시판 좋아요 숫자

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public int getAmountR() {
        return amountR;
    }

    public void setAmountR(int amountR) {
        this.amountR = amountR;
    }

    public int getBoardId() {
        return boardId;
    }

    public void setBoardId(int boardId) {
        this.boardId = boardId;
    }

    public int getBoardCate() {
        return boardCate;
    }

    public void setBoardCate(int boardCate) {
        this.boardCate = boardCate;
    }

    public String getBoardWriter() {
        return boardWriter;
    }

    public void setBoardWriter(String boardWriter) {
        this.boardWriter = boardWriter;
    }

    public String getBoardTitle() {
        return boardTitle;
    }

    public void setBoardTitle(String boardTitle) {
        this.boardTitle = boardTitle;
    }

    public String getBoardContent() {
        return boardContent;
    }

    public void setBoardContent(String boardContent) {
        this.boardContent = boardContent;
    }

    public String getBoardImgm() {
        return boardImgm;
    }

    public void setBoardImgm(String boardImgm) {
        this.boardImgm = boardImgm;
    }

    public Date getBoardRegdate() {
        return boardRegdate;
    }

    public void setBoardRegdate(Date boardRegdate) {
        this.boardRegdate = boardRegdate;
    }

    public MultipartFile getUploadFile() {
        return uploadFile;
    }

    public void setUploadFile(MultipartFile uploadFile) {
        this.uploadFile = uploadFile;
    }

    public int getReplyCount() {
        return replyCount;
    }

    public void setReplyCount(int replyCount) {
        this.replyCount = replyCount;
    }

    public int getBoardLikeCount() {
		return boardLikeCount;
	}

	public void setBoardLikeCount(int boardLikeCount) {
		this.boardLikeCount = boardLikeCount;
	}

	@Override
    public String toString() {
        return "BoardVO [boardId=" + boardId + ", boardCate=" + boardCate + ", boardWriter=" + boardWriter
                + ", boardTitle=" + boardTitle + ", boardContent=" + boardContent + ", boardImgm=" + boardImgm
                + ", uploadFile=" + uploadFile + ", boardRegdate=" + boardRegdate + ", replyCount=" + replyCount
                + ", pageNum=" + pageNum + ", amount=" + amount + ", amountR=" + amountR + ", boardLikeCount=" + boardLikeCount + "]";
    }

}
