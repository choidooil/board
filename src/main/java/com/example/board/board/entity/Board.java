package com.example.board.board.entity;

import lombok.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity //JPA에서 테이블을 의미. 즉 Board 테이블과 연결, 해당클래스명은 db상의 테이블명과 동일해야함.
@Data //다른 클래스에서 get을 사용해서  필드를 받을수있게 해줌.
public class Board {

    //아래는 해당 테이블의 필드명과 동일시 해야함.

    @Id // Primary Key를 의미
    @GeneratedValue(strategy = GenerationType.IDENTITY) //mariadb에서는 아이덴티티로
    private Integer board_ID; // xml에서 선언한 name과 필드명이 같아야 제대로 작동

    private String board_title;

    private String board_Content;

    private String user_ID;

    private String Create_Date;
}
