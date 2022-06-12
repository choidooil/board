package com.example.board.board.repository;

import com.example.board.board.entity.Board_Comment;
import com.example.board.board.entity.Board_Comment_PK;
import org.springframework.data.domain.Example;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.FluentQuery;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.function.Function;

@Repository
public interface BoardCommentRepository extends JpaRepository<Board_Comment, Board_Comment_PK> {

    public List<Board_Comment> findByBoardID(Integer BoardID); //findBy 사용시 언더바 인식불가
    public void deleteByBoardID(Integer BoardID);
}
