package com.example.board.board.service;

import com.example.board.board.entity.Board;
import com.example.board.board.entity.Board_Comment;
import com.example.board.board.entity.Board_Comment_PK;
import com.example.board.board.repository.BoardCommentRepository;
import com.example.board.board.repository.BoardRepositoy;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service //의미 공부
public class BoardService {

    @Autowired//의미 공부;
    private BoardRepositoy boardRepositoy;
    @Autowired
    private BoardCommentRepository boardCommentRepository;

    //게시글 작성
    public void write(Board brd){
        boardRepositoy.save(brd); //선언한 레포지토리에서 상속받은 save 실행. entity값이 파라미터.
    }

    public void writeComment(Board_Comment brdc){
        boardCommentRepository.save(brdc); //선언한 레포지토리에서 상속받은 save 실행. entity값이 파라미터.
    }
    //게시글 리스트 뿌려주기
    public List<Board> boardList(){
        return boardRepositoy.findAll();// 반환값 List
    }

    public List<Board_Comment> boardCommentList(Board_Comment_PK bcPk){
//        return boardCommentRepository.findAll();

        return boardCommentRepository.findByBoardID(bcPk.getBoardID());// 반환값 List
    }
    //특정 게시글 불러오기
    public Board boardView(Integer id){
        return boardRepositoy.findById(id).get();
    }

    //특정 게시글 삭제
    public void boardDelete(Integer id){
        boardRepositoy.deleteById(id);
        boardCommentRepository.deleteByBoardID(id);
    }
}
