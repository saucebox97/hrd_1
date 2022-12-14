<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>

    <style>

        html, body, div, span, applet, object, iframe,
        h1, h2, h3, h4, h5, h6, p, blockquote, pre,
        a, abbr, acronym, address, big, cite, code,
        del, dfn, em, img, ins, kbd, q, s, samp,
        small, strike, strong, sub, sup, tt, var,
        b, u, i, center,
        dl, dt, dd, ol, ul, li,
        fieldset, form, label, legend,
        table, caption, tbody, tfoot, thead, tr, th, td,
        article, aside, canvas, details, embed, 
        figure, figcaption, footer, header, hgroup, 
        menu, nav, output, ruby, section, summary,
        time, mark, audio, video {
            margin: 0;
            padding: 0;
            border: 0;
            font-size: 100%;
            font: inherit;
            vertical-align: baseline;
        }
        /* HTML5 display-role reset for older browsers */
        article, aside, details, figcaption, figure, 
        footer, header, hgroup, menu, nav, section {
            display: block;
        }
        body {
            line-height: 1;
        }
        ol, ul {
            list-style: none;
        }
        blockquote, q {
            quotes: none;
        }
        blockquote:before, blockquote:after,
        q:before, q:after {
            content: '';
            content: none;
        }
        table {
            border-collapse: collapse;
            border-spacing: 0;
        }

        /*  */

        .header {
            background: blue;
            color: white;
            text-align: center;
            padding: 20px;
            font-weight: 700;
        }
        .header h1 {
            height: 20px;
        }
        .nav {
            color: white;
            background: skyblue;
            display: flex;
        }
        .nav .btn-write {
            width: 150px;
            text-align: center;
            padding: 5px;
        }
        .nav a {
            color: white;
            font-weight: 700;
        }
        .section {
            background: lightblue;
            height: 500px;
            text-align: center;
        }
        .section h1 {
            padding: 20px;
            font-weight: 700;
        }
        .section div {
            border: 3px solid gray;
            border-bottom: none;
            width: 400px;
            margin: auto;
        }
        .section :nth-child(8) {
            border-bottom: 3px solid gray;
            /* background: tomato; */
        }
        .section div label {
            font-weight: 700;
        }
        /* .section div .form-label {
            width: 200px;
        } */
        /* .section input {
            width: 150px;
            
        } */
    </style>

</head>
<body>

    <div class="wrap">

        <div class="header">
            <h1>쇼핑몰 회원관리 ver 1.0</h1>
        </div>

        <div class="nav">
            <div class="btn-write">
                <a class="insert" href="/mall/write">회원등록</a>
            </div>
            <div class="btn-write">
                <a class="insert" href="/mall/list">회원목록조회/수정</a>
            </div>
            <div class="btn-write">
                <a class="insert" href="/mall/sales">회원매출조회</a>
            </div>
            <div class="btn-write">
                <a class="insert" href="/mall/">홈으로</a>
            </div>
        </div>

        <div class="section">
            <h1>홈쇼핑 회원등록</h1>

            <form id="write-form" action="/mall/write" method="post" autocomplete="off">

                <div>
                    <label for="number-input" class="form-label">회원번호(자동발생)</label>
                    <input type="text" class="form-control" id="number-input" name="custNo"
                    readonly value="${number}">
                </div>
                
                <div>
                    <label for="name-input" class="form-label">회원성명</label>
                    <input type="text" class="form-control" id="name-input" name="custName">
                </div>
                
                <div>
                    <label for="phone-input" class="form-label">회원전화</label>
                    <input type="text" class="form-control" id="phone-input" name="phone">
                </div>
                
                <div>
                    <label for="address-input" class="form-label">회원주소</label>
                    <input type="text" class="form-control" id="address-input" name="address">
                </div>
                
                <div>
                    <label for="join-input" class="form-label">가입일자</label>
                    <input type="text" class="form-control" id="join-input" name="joinDate"
                    readonly value="${date}">
                </div>
    
                <div>
                    <label for="rating-input" class="form-label">고객등급 [A:VIP,B:일반,C:직원]</label>
                    <input type="text" class="form-control" id="rating-input" name="grade">
                </div>
                
                <div>
                    <label for="city-input" class="form-label">도시코드</label>
                    <input type="text" class="form-control" id="city-input" name="city">
                </div>
    
                <div>
                    <button id="reg-btn" type="button">등록</button>
                    <button id="to-list" type="button">조회</button>
                </div>

            </form>

        </div>

    </div>

    <script>
        // msg 확인
        function alertServerMessage() {
            const msg = '${msg}';

            if (msg === 'reg-success') {
                alert('게시물이 정상 등록되었습니다.');
            }
        }

        // 등록 검증

        function validateFormValue() {
            const $numberInput = document.getElementById('number-input');
            const $nameInput = document.getElementById('name-input');
            const $phoneInput = document.getElementById('phone-input');
            const $addressInput = document.getElementById('address-input');
            const $joinInput = document.getElementById('join-input');
            const $ratingInput = document.getElementById('rating-input');
            const $cityInput = document.getElementById('city-input');
            let flag = false; // 입력 제대로하면 true

            console.log('number: ',$numberInput.value);
            console.log('name: ',$nameInput.value);
            console.log('phone: ',$phoneInput.value);
            console.log('address: ',$addressInput.value);
            console.log('join: ',$joinInput.value);
            console.log('rating: ',$ratingInput.value);
            console.log('city: ',$cityInput.value);

            if ($numberInput.value.trim() === '') {
                alert('번호은 필수값입니다~');
            } else if ($nameInput.value.trim() === '') {
                alert('이름은 필수값입니다~');
            } else if ($phoneInput.value.trim() === '') {
                alert('전화는 필수값입니다~');
            } else if ($addressInput.value.trim() === '') {
                alert('주소는 필수값입니다~');
            } else if ($joinInput.value.trim() === '') {
                alert('가입일자는 필수값입니다~');
            } else if ($ratingInput.value.trim() !== 'A' &&
            $ratingInput.value.trim() !== 'B' &&
            $ratingInput.value.trim() !== 'C') {
                alert('A, B, C 중 하나를 입력하세요');
            } else if ($cityInput.value.trim() === '') {
                alert('도시코드는 필수값입니다~');
            } else {
                flag = true;
            }

            console.log('flag:', flag);

            return flag;
        }

        // 등록 버튼
        const $regBtn = document.getElementById('reg-btn');

        $regBtn.onclick = e => {
            e.preventDefault(); // 고유동작중지
            console.log("글작성 클릭");
            if (!validateFormValue()) {
                return;
            }

            // 입력값채우면 서브밋
            const $form = document.getElementById('write-form');
            $form.submit();
        }

        //조회 버튼
        const $toList = document.getElementById('to-list');
        $toList.onclick = e => {
            location.href = '/mall/list';
        };

        (function () {

            alertServerMessage(); // 왜해야돼는거지

        })();
    </script>

</body>
</html>