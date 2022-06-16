package com.example.board.board.Controller;

import com.example.board.board.entity.Board;
import com.example.board.board.entity.Board_Comment;
import com.example.board.board.entity.Board_Comment_PK;
import com.example.board.board.service.BoardService;
import net.bytebuddy.TypeCache;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@Controller //스프링 프레임워크의 메인.
public class BoardController {

    private Board_Comment_PK board_comment_pk = new Board_Comment_PK();
    @Autowired // 생성자 자동적용
    private BoardService boardService; // 정의한 서비스를 선언. 서비스에는 보통 동작이되는 메서드가 들어가있음.
    //해당 서비스에는 @Repository를 사용한 메서드 들어가있고, @Repository는 @Entity를 이용한 메서드가 있음

    @GetMapping("/board/write") //어떤 url로 접근할지? // localhost:8080/board/write 로들어가면 BoardWrite.xml 화면을 반환.
    public String boardWrtieForm(Model model){
        LocalDate nowTime = LocalDate.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String formatNow = nowTime.format(formatter);


        model.addAttribute("time",formatNow);


        return "BoardWrite";

    }
    @GetMapping("/board/list") //localhost:8080/board/list
    public String boardList(Model model,@PageableDefault(page = 0,size = 10,sort = "boardID",direction = Sort.Direction.DESC) Pageable pageable){
                                        //페이지 디폴트셋팅 어노테이션, page는 시작페이지, size는 레코드 수, sort는 정렬기준 필드, direction은 정렬방법

        Page<Board> list = boardService.boardList(pageable);

        int nowPage = list.getPageable().getPageNumber()+1; //Pageable 에서 현재페이지를 받아옴.
        int startPage = Math.max(nowPage - 4,1); // 표시되는 시작페이지는 현재페이지 기준 -4페이지 까지, 단 1보다 작지않음.
        int endPage = Math.min(nowPage + 5, list.getTotalPages());// 최대 페이지는 현재페이지 기준 +5페이지 까지, 단 최대페이지보다 크지 않음.



        model.addAttribute("list",list);
        model.addAttribute("nowPage", nowPage);
        model.addAttribute("startPage", startPage);
        model.addAttribute("endPage", endPage);
        return "BoardList";

    }
    @GetMapping("/board/view") //localhost:8080/board/view?id=1 로 접근하면 id값을 받을수있음.(Get방식)
    public String boardView(Model model, Integer id){ //값을 넘겨줄때는 매개변수에 model을 넣어야함


        board_comment_pk.setBoardID(id);
        board_comment_pk.setBoardCommentID(1);;
        model.addAttribute("board",boardService.boardView(id));
        model.addAttribute("Board_Comment",boardService.boardCommentList(board_comment_pk));
        System.out.println(model.getAttribute("Board_Comment"));
        return "BoardView";//html

    }

    @GetMapping("/board/delete")
    public String boardDelete(Integer id){
        boardService.boardDelete(id);
        return "redirect:/board/list";

    }


    @GetMapping("/board/modify/{boardID}") // 대괄호 안의 변수를 받으면 아래의 @PathVariable에서 Integer 형태의 id로 받음.
    public String boardModify(Model model, @PathVariable("boardID") Integer id){
        model.addAttribute("board",boardService.boardView(id));
        return "BoardModify";
    }

    @PostMapping("/board/writePro") //해당 url로 들어오는 포스트값을맵핑
    public String boardWritePro(Board brd){//Entity 선언한 클래스(테이블을 클래스화)
        boardService.write(brd); //선언된 url로 Post값이 들어오면 서비스의 기능 실행.

        return "redirect:/board/list";

    }
    @PostMapping("/board/writeCommentPro") //해당 url로 들어오는 포스트값을맵핑
    public String boardWriteContentPro(Board_Comment brdc){//Entity 선언한 클래스(테이블을 클래스화)
        System.out.println(brdc);
        boardService.writeComment(brdc); //선언된 url로 Post값이 들어오면 서비스의 기능 실행.
        return "redirect:/board/view?id="+brdc.getBoardID();

    }

    @PostMapping("/board/Update/{boardID}")
    public String boardUpdate(@PathVariable("boardID") Integer id, Board brd){

        Board boardTemp = boardService.boardView(id);  //기존의 게시글 정보 임시 저장
        boardTemp.setBoardTitle(brd.getBoardTitle());
        boardTemp.setCreateDate(brd.getCreateDate());
        boardTemp.setUserID(brd.getUserID());
        boardTemp.setBoardContent(brd.getBoardContent());
        System.out.println("boardid:"+boardTemp);
        boardService.write(boardTemp); //임시
        return "redirect:/board/list";
    }

}
