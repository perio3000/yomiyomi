package edu.global.ex.controller;

import edu.global.ex.page.Criteria;
import edu.global.ex.page.PageVO;
import edu.global.ex.service.NoticeService;
import edu.global.ex.vo.BoardVO;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("/notice")
public class NoticeController {

    @Autowired
    private NoticeService noticeService;

    @GetMapping("/JOHN")
    public String john(Criteria criteria, Model model){
        log.info("john()...");

        model.addAttribute("notice_john", noticeService.getList(criteria));

        int total = noticeService.getTotal(criteria);
        log.info("total" + total );

        model.addAttribute("pageMaker", new PageVO(criteria, total));
        return "JOHN";
    }

    @GetMapping("/notice_view")
    public String notice_view(BoardVO boardVO, Model model){
        log.info("notice()..");

        int id = boardVO.getId();
        model.addAttribute("notice_view", noticeService.read(id));

        return "JOHN_detail";
    }

    @GetMapping({"/announcement","/searchNotice"})
    public String announcement(Criteria criteria, Model model){
        log.info("CONTROLLER : announcement()...");

        model.addAttribute("announcement", noticeService.getList(criteria));

        int total = noticeService.getTotal(criteria);
        log.info("total" + total );

        model.addAttribute("pageMaker", new PageVO(criteria, total));
        return "announcement";
    }

    @GetMapping("/announceread")
    public String announceread(BoardVO boardVO, Model model){
        log.info("CONTROLLER : announceread()..");

        int id = boardVO.getId();
        model.addAttribute("announceread", noticeService.read(id));
        model.addAttribute("read_prev",noticeService.read_prev(id));
        model.addAttribute("read_next",noticeService.read_next(id));

        return "announceread";
    }

    @GetMapping("/announcewrite")
    public String announcewrite(BoardVO boardVO, Model model){
        log.info("CONTROLLER : announcewrite()..");

        return "announcewrite";
    }


    @GetMapping({"/FAQ","/searchFAQ"})
    public String FAQ(Criteria criteria, Model model) {

        log.info("CONTROLLER : FAQ()...");

        model.addAttribute("FAQ", noticeService.getFAQ());


        /*
        int total = noticeService.getTotal();
        log.info("total" + total );

        model.addAttribute("pageMaker", new PageVO(criteria, total));
        */



        return "FAQ_";
    }



}
