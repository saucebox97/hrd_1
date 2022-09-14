CREATE SEQUENCE seq_money_tbl_02;
DROP SEQUENCE seq_money_tbl_02;

DROP TABLE money_tbl_02;
CREATE TABLE money_tbl_02 (
    cust_no NUMBER(6) NOT NULL, -- 회원번호
    salenol NUMBER(8) NOT NULL, -- 판매번호
    p_cost NUMBER(8), -- 단가
    amount NUMBER(4), -- 수량
    price NUMBER(8), -- 가격
    p_code VARCHAR(4), -- 상품코드
    s_date DATE DEFAULT SYSDATE, -- 판매일자
    CONSTRAINT pk_money_tbl_02 PRIMARY KEY (cust_no, salenol)
);

insert into money_tbl_02
(cust_no, salenol, p_cost, amount, price, p_code)
VALUES
('100001', 2022 || LPAD(seq_money_tbl_02.nextval, 4, '0'), '500', '5', '2500', 'A001');

insert into money_tbl_02
(cust_no, salenol, p_cost, amount, price, p_code)
VALUES
('100001', 2022 || LPAD(seq_money_tbl_02.nextval, 4, '0'), '1000', '4', '4000', 'A002');

insert into money_tbl_02
(cust_no, salenol, p_cost, amount, price, p_code)
VALUES
('100001', 2022 || LPAD(seq_money_tbl_02.nextval, 4, '0'), '500', '3', '1500', 'A008');

insert into money_tbl_02
(cust_no, salenol, p_cost, amount, price, p_code)
VALUES
('100002', 2022 || LPAD(seq_money_tbl_02.nextval, 4, '0'), '2000', '1', '2000', 'A004');

insert into money_tbl_02
(cust_no, salenol, p_cost, amount, price, p_code)
VALUES
('100002', 2022 || LPAD(seq_money_tbl_02.nextval, 4, '0'), '500', '1', '500', 'A001');

insert into money_tbl_02
(cust_no, salenol, p_cost, amount, price, p_code)
VALUES
('100003', 2022 || LPAD(seq_money_tbl_02.nextval, 4, '0'), '1500', '2', '3000', 'A003');

insert into money_tbl_02
(cust_no, salenol, p_cost, amount, price, p_code)
VALUES
('100004', 2022 || LPAD(seq_money_tbl_02.nextval, 4, '0'), '500', '2', '1000', 'A001');

insert into money_tbl_02
(cust_no, salenol, p_cost, amount, price, p_code)
VALUES
('100004', 2022 || LPAD(seq_money_tbl_02.nextval, 4, '0'), '300', '1', '300', 'A005');

insert into money_tbl_02
(cust_no, salenol, p_cost, amount, price, p_code)
VALUES
('100004', 2022 || LPAD(seq_money_tbl_02.nextval, 4, '0'), '600', '1', '600', 'A006');

insert into money_tbl_02
(cust_no, salenol, p_cost, amount, price, p_code)
VALUES
('100004', 2022 || LPAD(seq_money_tbl_02.nextval, 4, '0'), '3000', '1', '3000', 'A007');
------------------------------------------------------------


SELECT *
FROM money_tbl_02
;