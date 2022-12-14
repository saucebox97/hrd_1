CREATE SEQUENCE seq_member_tbl_02;
DROP SEQUENCE seq_member_tbl_02;

DROP TABLE member_tbl_02;
CREATE TABLE member_tbl_02 (
    cust_no NUMBER(6) NOT NULL,
    cust_name VARCHAR2(20),
    phone VARCHAR2(13),
    address VARCHAR2(60),
    join_date DATE DEFAULT SYSDATE,
    grade CHAR(1),
    city CHAR(2),
    CONSTRAINT pk_member_tbl_02 PRIMARY KEY (cust_no)
);

insert into member_tbl_02
(cust_no, cust_name, phone, address, grade, city)
VALUES
(1 || LPAD(seq_member_tbl_02.nextval, 5, '0'), '김행복', '010-1111-2222', '서울 동대문구 휘경1동', 'A', '01');

insert into member_tbl_02
(cust_no, cust_name, phone, address, grade, city)
VALUES
(1 || LPAD(seq_member_tbl_02.nextval, 5, '0'), '이축복', '010-1111-3333', '서울 동대문구 휘경2동', 'B', '01');

insert into member_tbl_02
(cust_no, cust_name, phone, address, grade, city)
VALUES
(1 || LPAD(seq_member_tbl_02.nextval, 5, '0'), '장믿음', '010-1111-4444', '울릉군 울릉읍 독도1리', 'B', '30');

insert into member_tbl_02
(cust_no, cust_name, phone, address, grade, city)
VALUES
(1 || LPAD(seq_member_tbl_02.nextval, 5, '0'), '최사랑', '010-1111-5555', '울릉군 울릉읍 독도2리', 'A', '30');

insert into member_tbl_02
(cust_no, cust_name, phone, address, grade, city)
VALUES
(1 || LPAD(seq_member_tbl_02.nextval, 5, '0'), '진평화', '010-1111-6666', '제주도 제주시 외나무골', 'B', '60');

SELECT *
FROM member_tbl_02
;

SELECT TO_CHAR(SYSDATE, 'YYYY-MM-DD')
FROM dual
;