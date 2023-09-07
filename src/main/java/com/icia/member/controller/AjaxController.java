package com.icia.member.controller;

import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class AjaxController {
    @GetMapping("/ajax01")
    public String ajax01(){
        return "index";
    }

    @GetMapping("/ajax02")
    public String ajax02(){
        return "index";
    }

    @GetMapping(value ="/ajax03", produces = "application/text; charset=utf-8")
    public @ResponseBody String ajax03(){
        String returnValue = "리턴 값 입니다.";
        return returnValue;
    }

    @GetMapping(value="/ajax04")
    public @ResponseBody String ajax04(@RequestParam("p1") String p1, @RequestParam("p2") String p2){
        System.out.println("p1 = " + p1 + ", p2 =" + p2);
        return "ok";
    }

    @PostMapping(value = "/ajax05", produces = "application/text; charset=utf-8")
    public @ResponseBody String ajax05(@RequestParam("p1") String p1, @RequestParam("p2") String p2){
        System.out.println("p1 = " + p1 + ", p2 =" + p2);
        return p2;
    }

    @PostMapping("/ajax06")
    public @ResponseBody String ajax06(@ModelAttribute MemberDTO memberDTO){
        System.out.println(memberDTO);
        return "ok";
    }

    @Autowired
    private MemberService memberService;

    @GetMapping("/ajax07")
    public @ResponseBody MemberDTO ajax07(){
        MemberDTO memberDTO = memberService.findById(2L);
        return memberDTO;
    }

    @GetMapping("/ajax08")
    public @ResponseBody List<MemberDTO> ajax08(){
        List<MemberDTO> memberDTOList = memberService.findAll();
        return memberDTOList;
    }

    @PostMapping("/ajax09")
    public @ResponseBody MemberDTO ajax09(@RequestBody MemberDTO memberDTO){
        System.out.println("memberDTO = " + memberDTO);
        return memberDTO;
    }

    @PostMapping("/ajax10")
    public @ResponseBody List<MemberDTO> ajax10(@ModelAttribute MemberDTO memberDTO){
        memberService.save(memberDTO);
        List<MemberDTO> memberDTOList = memberService.findAll();
        return memberDTOList;
    }

    @PostMapping(value = "/ajax11", produces = "application/text; charset=utf-8")
    public ResponseEntity ajax11(@ModelAttribute MemberDTO memberDTO){
        // responseBody역할 + code도 다룰 수 있음
        try {
            memberService.save(memberDTO);
        } catch (Exception e){
            // 이메일이 중복되는 상황에서 conflict라는 응답코드를 줌
            return new ResponseEntity("이메일이 중복되었습니다.", HttpStatus.CONFLICT);
        }


        List<MemberDTO> memberDTOList = memberService.findAll();
        // 문제가 없다면 회원리스트 데이터와 200 코드를 응답으로 줌
        return new ResponseEntity<>(memberDTOList, HttpStatus.OK);
    }


}