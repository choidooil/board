package com.example.board.board.entity;

import lombok.Data;

import javax.persistence.Column;
import java.io.Serializable;

@Data
public class Board_Comment_PK implements Serializable {
    @Column(name = "board_ID")
    private Integer boardID;
    @Column(name = "board_comment_ID")
    private Integer boardCommentID;

}