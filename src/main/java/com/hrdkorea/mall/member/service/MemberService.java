package com.hrdkorea.mall.member.service;

import com.hrdkorea.mall.member.domain.Member;
import com.hrdkorea.mall.member.repository.MemberMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
@Log4j2
@RequiredArgsConstructor
public class MemberService {

    private final MemberMapper mapper;

    public boolean saveService(Member member) {
        log.info("save service start - {}", member);
        return mapper.save(member);
    }

    public Map<String, Object> findAllService() {
        log.info("32 findAll service start");

        Map<String, Object> findDataMap = new HashMap<>();

        List<Member> memberList = mapper.findAll();
//
//        Date today = new Date();
//        SimpleDateFormat date = new SimpleDateFormat("yyyy년-MM월-dd일");
//
//        findDataMap.put("date", date.format(today));

        return findDataMap;
    }

}
