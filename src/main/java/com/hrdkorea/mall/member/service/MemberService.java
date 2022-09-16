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
        log.info("23 save service start - {}", member);
        return mapper.save(member);
    }

    public Map<String, Object> findAllService() {
        log.info("28 findAll service start");

        Map<String, Object> findDataMap = new HashMap<>();

        List<Member> memberList = mapper.findAll();

        log.info("34 {}", memberList);

        for (int i = 0; i < memberList.size(); i++) {
            log.info("37 {}", memberList);

//        log.info("34 {}", memberList.joinDate);

//        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
//
//        String changeFormat = simpleDateFormat.format(joinDate)
        }

        findDataMap.put("mList", memberList);

        return findDataMap;
    }

    // 게시물 수정 요청 중간 처리
    public boolean modifyService(Member member) {
        log.info("51 modify service start - {}", member);
        return mapper.modify(member);
    }

    // 상세보기
    public Member findOneService(Long custNo) {
        log.info("52 findOne service start - {}", custNo);
        Member member = mapper.findOne(custNo);

        return member;
    }

    // 자동
    public int autoService() {

        int auto = mapper.auto();

        return auto;
    }

    public Map<String, Object> findAllService2() {
        log.info("74 findAll2 service start");

        Map<String, Object> findDataMap = new HashMap<>();

        List<Member> memberList = mapper.findAll();

        log.info("34 {}", memberList);

        for (int i = 0; i < memberList.size(); i++) {
            log.info("37 {}", memberList);

//        log.info("34 {}", memberList.joinDate);

//        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
//
//        String changeFormat = simpleDateFormat.format(joinDate)
        }

        findDataMap.put("mList", memberList);

        return findDataMap;
    }
}
