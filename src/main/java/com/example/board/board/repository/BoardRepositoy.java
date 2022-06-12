package com.example.board.board.repository;

import com.example.board.board.entity.Board;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface BoardRepositoy extends JpaRepository<Board, Integer> { // 파라미터 값은 Entity엣서 선언한 테이블명, 기본키의 데이터타입(Entity에서 선언한)
}
