package com.icia.member.service;

import com.icia.member.dto.MemberDTO;
import com.icia.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;

    public boolean save(MemberDTO memberDTO) {
        int result = memberRepository.save(memberDTO);
        if (result>0){
            return true;
        }else {
            return false;
        }
    }

    public List<MemberDTO> findAll() {
        return memberRepository.findAll();
    }

    public MemberDTO login(MemberDTO memberDTO) {
        return memberRepository.login(memberDTO);

    }

    public MemberDTO findById(Long id) {
        return memberRepository.findById(id);
    }

    public boolean update(MemberDTO memberDTO) {
        int result = memberRepository.update(memberDTO);
        if (result>0){
            return true;
        }else {
            return false;
        }
    }

    public boolean delete(Long id) {
        int result = memberRepository.delete(id);
        if (result>0){
            return true;
        }else {
            return false;
        }
    }

    public MemberDTO duplicatedCheck(String memberEmail) {
        return memberRepository.duplicateCheck(memberEmail);

    }
}
