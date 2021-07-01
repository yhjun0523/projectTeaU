package com.teau.biz.service.board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teau.biz.board.BoardVO;

@Service("boardService")
public class BoardServiceImpl implements BoardService {

    @Autowired
    private BoardDAO boardDAO;

    public BoardServiceImpl() {
    }

    public void insertBoard(BoardVO vo) {
        boardDAO.insertBoard(vo);
    }

    public void updateBoard(BoardVO vo) {
        boardDAO.updateBoard(vo);
    }

    public void updateReplyCount(BoardVO vo) throws Exception {
        boardDAO.updateReplyCount(vo);
    }

    public void deleteBoard(BoardVO vo) {
        boardDAO.deleteBoard(vo);
    }

    public BoardVO getBoard(BoardVO vo) {
        return boardDAO.getBoard(vo);
    }

    public List<BoardVO> getBoardListO(BoardVO vo) {
        return boardDAO.getBoardListO(vo);
    }

    public List<BoardVO> getBoardListB(BoardVO vo) {
        return boardDAO.getBoardListB(vo);
    }

    public List<BoardVO> getBoardListR(BoardVO vo) {
        return boardDAO.getBoardListR(vo);
    }
    
    public void updateBoardLikeCount(BoardVO vo) throws Exception {
        boardDAO.updateBoardLikeCount(vo);
    }

    public int totalCnt() {
        return boardDAO.totalCnt();
    }

    public int totalCntB() {
        return boardDAO.totalCntB();
    }

    public int totalCntR() {
        return boardDAO.totalCntR();
    }

}
