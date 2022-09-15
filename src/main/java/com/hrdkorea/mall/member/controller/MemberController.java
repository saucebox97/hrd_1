package com.hrdkorea.mall.member.controller;

import com.hrdkorea.mall.member.domain.Member;
import com.hrdkorea.mall.member.service.MemberService;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

@Controller
@Log4j2
@RequiredArgsConstructor
@RequestMapping("/mall")
public class MemberController {

    private final MemberService memberService;

    @GetMapping("/")
    public String home() {
//        log.info("welcome");

        return "mall/index";
    }

    // 게시물 목록 요청
    @GetMapping("/list")
    public String list(Model model) {

        log.info("36 controller request /mall/list GET!");

        Map<String, Object> MemberMap = memberService.findAllService();

        log.info("40 return data - {}", MemberMap);

        model.addAttribute("mList", MemberMap.get("mList"));

        return "mall/mall-list";
    }

    // 회원 등록 화면 요청
    @GetMapping("/write")
    public String write(Member member, Model model) {
        log.info("48 controller request /mall/write GET");

        Map<String, Object> MemberMap = memberService.findAllService();

//        log.info("40 return data - {}", MemberMap.get);

//        Map<String, Object> MemberAuto = memberService.autoService(member);

//        log.info("58 return data - {}", MemberAuto);

//        Map<String, Object> MemberAuto = memberService.autoService();
//
//        log.info("50 {}", MemberAuto);

        Map<String, Object> MemberNumber = memberService.findAllService();

        log.info("68 return data - {}", MemberNumber);

        log.info("70 {}", member.getCustNo());

        Date today = new Date();
        SimpleDateFormat date = new SimpleDateFormat("yyyyMMdd");

//        Map<String, Object> memberMap = memberService.saveService(member);

        model.addAttribute("number", memberService.autoService());
        model.addAttribute("date", date.format(today));
        return "mall/mall-write";
    }

    // 회원 등록 요청
    @PostMapping("/write")
    public String write(Member member, RedirectAttributes ra) {
        log.info("80 controller request /member/write POST! - {}", member);

        boolean flag = memberService.saveService(member);

        if (flag) ra.addFlashAttribute("msg", "reg-success");

        return flag ? "redirect:/mall-write" : "/mall-write";
    }

    // 수정 화면 요청
    @GetMapping("/modify/{custNo}")
    public String modify(@PathVariable Long custNo, Model model) {
        Member member = memberService.findOneService(custNo);
        log.info("86 find {}", member);

        model.addAttribute("member", member);
        return "mall/mall-modify";
    }

    // 수정 처리 요청
    @PostMapping("/modify")
    public String modify(Member member) {
        log.info("95 controller request /mall/modify POST! - {}", member);
        boolean flag = memberService.modifyService(member);
        return flag ? "redirect:/mall/modify/" + member.getCustNo() : "redirect:/";
    }

    // 회원 매출 조회
//    @GetMapping("/sales")
//    public String sales(Model model) {
//
//        log.info("85 controller request /mall/sales GET!");
//
//        Map<String, Object> MemberMap = memberService.findAllService();
//
//        log.info("40 return data - {}", MemberMap);
//
//        model.addAttribute("mList", MemberMap.get("mList"));
//
//        return "mall/mall-list";
//    }

}
