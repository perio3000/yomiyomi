package edu.global.ex.controller;

import edu.global.ex.page.Criteria;
import edu.global.ex.service.NoticeService;
import edu.global.ex.vo.BoardVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Slf4j
@RestController
public class RestfulNoticeController {

    private final NoticeService noticeService;

    public RestfulNoticeController(NoticeService noticeService) {
        this.noticeService = noticeService;
    }


    @GetMapping("/FAQ/{category}")
    public List<BoardVO> FAQ(@PathVariable (name = "category") int category) {
        log.info("CONTROLLER : FAQ()...");


        return noticeService.category(category);
    }


}
