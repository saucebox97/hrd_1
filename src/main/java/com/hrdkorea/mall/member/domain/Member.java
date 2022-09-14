package com.hrdkorea.mall.member.domain;

import lombok.*;

import java.util.Date;

@Setter @Getter @ToString @EqualsAndHashCode
@NoArgsConstructor @AllArgsConstructor
public class Member {

    int custNo;
    String custName;
    String phone;
    String address;
    Date joinDate;
    char grade;
    char city;
}
