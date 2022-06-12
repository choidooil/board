package com.example.board.board.entity;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Data
@Entity
@IdClass(Board_Comment_PK.class)
@Getter @Setter
public class Board_Comment implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "board_ID")
    private Integer boardID;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "board_comment_ID")
    private Integer boardCommentID;

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "board_comment_content")
    private String boardCommentContent;

    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "board_comment_User_ID")
    private String boardCommentUserID;
}
