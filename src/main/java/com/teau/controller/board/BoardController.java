package com.teau.controller.board;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.teau.biz.board.BoardVO;
import com.teau.biz.board.PageMaker;
import com.teau.biz.board.PageMakerB;
import com.teau.biz.board.PageMakerR;
import com.teau.biz.board.ReplyVO;
import com.teau.biz.member.MemberVO;
import com.teau.biz.service.board.BoardService;
import com.teau.biz.service.board.ReplyService;

@Controller
@SessionAttributes("board")
public class BoardController {
    @Autowired
    private BoardService boardService;

    @Autowired
    private ReplyService replyService;

    @Resource(name = "uploadPath")
    private String uploadPath;

    // 글 등록화면으로 이동
    @RequestMapping(value = "/boardCreateMove.do")
    public String boardCreateView() throws IOException {
        return "boardCreate";
    }

    // 글 등록 처리
    @RequestMapping(value = "/boardCreate.do")
    public String insertBoard(BoardVO vo, HttpServletRequest request) throws Exception {
        System.out.println(vo.getUploadFile());
        MultipartFile file = vo.getUploadFile();
        String imgUploadPath = uploadPath + File.separator + "";

        // File f = new File(root_path + attach_path + filename);
        if (file.isEmpty()) {
            vo.setBoardImgm("");
        } else if (!file.isEmpty()) {
            vo.setBoardImgm(file.getOriginalFilename());
            file.transferTo(new File(imgUploadPath + file.getOriginalFilename()));
        }

        System.out.println("글 등록 처리");
        boardService.insertBoard(vo);
        if (vo.getBoardCate() == 1) {
            return "redirect:toBoard.do";
        } else if (vo.getBoardCate() == 2) {
            return "redirect:tbBoard.do";
        } else {
            return "redirect:rankBoard.do";
        }
    }

    // 글 등록처리 에이잭스
    @RequestMapping(value = "/createBoardDetail.do", produces = "application/json; charset=utf8")
    @ResponseBody
    public String createBoardDetail(BoardVO vo, @RequestParam("boardId") String boardId)
            throws JsonProcessingException {
        System.out.println(boardId);
        vo.setBoardId(Integer.parseInt(boardId));
        Map<String, Object> hashmap = new HashMap<String, Object>();
        BoardVO board = boardService.getBoard(vo);
        hashmap.put("board", board);
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashmap);
        return json;
    }

    // 글 수정 화면으로 이동
    @RequestMapping("/boardUpdateMove.do")
    public String updateBoardmove(BoardVO vo) {
        System.out.println("글 수정 페이지 이동");
        return "boardUpdate";
    }

    // 글 수정 처리
    @RequestMapping("/boardUpdate.do")
    public String updateBoard(BoardVO vo) {
        System.out.println("글 수정 처리");
        boardService.updateBoard(vo);
        // return "redirect:boardViewer.do";
        return "redirect:/boardViewer.do?boardId=" + vo.getBoardId() + "&boardImgm=" + vo.getBoardImgm();
        // return "redirect:boardViewer.do?boardId="+vo.getBoardId();
    }

    // 글 수정처리 에이잭스
    @RequestMapping(value = "/updateBoardDetail.do", produces = "application/json; charset=utf8")
    @ResponseBody
    public String updateBoardDetail(BoardVO vo, @RequestParam("boardId") String boardId)
            throws JsonProcessingException {
        System.out.println(boardId);
        vo.setBoardId(Integer.parseInt(boardId));
        Map<String, Object> hashmap = new HashMap<String, Object>();
        BoardVO board = boardService.getBoard(vo);
        hashmap.put("board", board);
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashmap);
        return json;
    }

    // 글 삭제
    @RequestMapping("/boardDelete.do")
    public String deleteBoard(BoardVO vo) {
        System.out.println("글 삭제 처리");
        boardService.deleteBoard(vo);
        return "redirect:toBoard.do";
    }

    // 글 상세 조회페이지로 이동
    @RequestMapping("/boardViewer.do")
    public String getBoard(BoardVO vo, HttpServletRequest request, Model model, @RequestParam("boardId") int boardId)
            throws Exception {

        HttpSession session = request.getSession();
        MemberVO member = (MemberVO) session.getAttribute("member");
        model.addAttribute("member", member);

        // 댓글 조회
        List<ReplyVO> reply = null;
        reply = replyService.listReply(boardId);
        model.addAttribute("reply", reply);

        System.out.println("글 상세글본다고");
        return "boardViewer";
    }

    // 글 상세 조회
    @RequestMapping(value = "/getReviewDetail.do", produces = "application/json; charset=utf8")
    @ResponseBody
    public String getReviewDetail(BoardVO vo, @RequestParam("boardId") String boardId) throws JsonProcessingException {
        System.out.println(boardId);

        vo.setBoardId(Integer.parseInt(boardId));
        Map<String, Object> hashmap = new HashMap<String, Object>();
        BoardVO board = boardService.getBoard(vo);
        hashmap.put("board", board);
        ObjectMapper mapper = new ObjectMapper();
        String json = mapper.writerWithDefaultPrettyPrinter().writeValueAsString(hashmap);
        return json;
    }

    // 씨앗 목록 조회
    @RequestMapping("/toBoard.do")
    public String getBoardListO(BoardVO vo, Model model) {
        // List<BoardVO> boardList = boardService.getBoardList(cri);
        System.out.println("씨앗 목록 조회 처리");

        int total = boardService.totalCnt();

        // Model 정보 저장
        model.addAttribute("paging", new PageMaker(vo, total));
        model.addAttribute("boardListO", boardService.getBoardListO(vo));
        return "toBoard";
    }

    // 새싹 목록 조회
    @RequestMapping("/tbBoard.do")
    public String getBoardListB(BoardVO vo, Model model) {
        System.out.println("새싹 목록 조회 처리");

        int total = boardService.totalCntB();
        // Model 정보 저장
        model.addAttribute("pagingB", new PageMakerB(vo, total));
        model.addAttribute("boardListB", boardService.getBoardListB(vo));
        return "tbBoard";
    }

    // 랭킹 목록 조회
    @RequestMapping("/rankBoard.do")
    public String getBoardListR(BoardVO vo, Model model) {
        System.out.println("글 리스트 처리");

        int total = boardService.totalCntR();
        // Model 정보 저장
        model.addAttribute("pagingR", new PageMakerR(vo, total));
        model.addAttribute("boardListR", boardService.getBoardListR(vo));
        return "rankBoard";
    }
    
}