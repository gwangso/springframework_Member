package com.icia.member.controller;

import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;

    @GetMapping("/save")
    public String memberSave(){
        return "memberSave";
    }

    @PostMapping("/save")
    public String memberSave(@ModelAttribute MemberDTO memberDTO){
        memberService.save(memberDTO);
        return "redirect:/members";
    }

    @GetMapping("/members")
    public String memberList(Model model){
        List<MemberDTO> memberDTOList = memberService.findAll();
        model.addAttribute("memberList", memberDTOList);
        return "memberList";
    }

    @GetMapping("/login")
    public String memberLogin(){
        return "memberLogin";
    }

    @PostMapping("/login")
    public String memberLogin(@ModelAttribute MemberDTO memberDTO,
                              Model model,
                              HttpSession session){
        MemberDTO result = memberService.login(memberDTO);
        if (result!=null){
            // 로그인 성공시 사용자의 이메일을 세션에 저장
            session.setAttribute("member", result);
//            model.addAttribute("member",result);
            return "redirect:/main";
        }else {
            return "redirect:/";
        }
    }

    @GetMapping("/main")
    public String memberMain(HttpSession session){
        return "memberMain";
    }

    @GetMapping("/member")
    public String memberDetail(@RequestParam("id") Long id, Model model){
        MemberDTO memberDTO = memberService.findById(id);
        model.addAttribute("member",memberDTO);
        return "memberDetail";
    }

    @GetMapping("/update")
    public String memberUpdate(@RequestParam("id") Long id, Model model){
        MemberDTO memberDTO = memberService.findById(id);
        model.addAttribute("member",memberDTO);
        return "memberUpdate";
    }

    @PostMapping("/update")
    public @ResponseBody boolean memberUpdate(@RequestBody MemberDTO memberDTO){
        boolean result = memberService.update(memberDTO);
        if (result){
            return true;
        }else {
            return false;
        }
    }

    @GetMapping("/delete")
    public String memberDelete(@RequestParam("id") Long id){
        boolean result = memberService.delete(id);
        if (result){
            return "index";
        }else {
            return "redirect:/member?id="+id;
        }
    }
    @GetMapping("/logout")
    public String logout(HttpSession session){
//        session.removeAttribute("member");
        session.invalidate();
        return "redirect:/";
    }

    @PostMapping("/duplicate-check")
    public @ResponseBody int duplicateCheck(@RequestParam("memberEmail") String memberEmail){
        MemberDTO memberDTO = memberService.duplicatedCheck(memberEmail);
        if (memberDTO==null){
            return 1;
        }else {
            return 0;
        }
    }
}
