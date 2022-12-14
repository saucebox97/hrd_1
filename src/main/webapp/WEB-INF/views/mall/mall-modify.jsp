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
            <h1>????????? ???????????? ver 1.0</h1>
        </div>

        <div class="nav">
            <div class="btn-write">
                <a class="insert" href="/mall/write">????????????</a>
            </div>
            <div class="btn-write">
                <a class="insert" href="/mall/list">??????????????????/??????</a>
            </div>
            <div class="btn-write">
                <a class="insert" href="/mall/sales">??????????????????</a>
            </div>
            <div class="btn-write">
                <a class="insert" href="/mall/">?????????</a>
            </div>
        </div>

        <div class="section">
            <h1>????????? ?????? ?????? ??????</h1>

            <form id="modify-form" action="/mall/modify" method="post">

                <div>
                    <label for="number-input" class="form-label">????????????(????????????)</label>
                    <input type="text" class="form-control" id="number-input" name="custNo"
                    value="${member.custNo}">
                </div>
                
                <div>
                    <label for="name-input" class="form-label">????????????</label>
                    <input type="text" class="form-control" id="name-input" name="custName"
                    value="${member.custName}">
                </div>
                
                <div>
                    <label for="phone-input" class="form-label">????????????</label>
                    <input type="text" class="form-control" id="phone-input" name="phone"
                    value="${member.phone}">
                </div>
                
                <div>
                    <label for="address-input" class="form-label">????????????</label>
                    <input type="text" class="form-control" id="address-input" name="address"
                    value="${member.address}">
                </div>
                
                <div>
                    <label for="join-input" class="form-label">????????????</label>
                    <input type="text" class="form-control" id="join-input" name="joinDate"
                    value="${member.joinDate}">
                </div>
    
                <div>
                    <label for="rating-input" class="form-label">???????????? [A:VIP,B:??????,C:??????]</label>
                    <input type="text" class="form-control" id="rating-input" name="grade"
                    value="${member.grade}">
                </div>
                
                <div>
                    <label for="city-input" class="form-label">????????????</label>
                    <input type="text" class="form-control" id="city-input" name="city"
                    value="${member.city}">
                </div>
    
                <div>
                    <button id="mod-btn" type="button">??????</button>
                    <button id="to-list" type="button">??????</button>
                </div>
            </form>

        </div>

    </div>

    <script>

        // msg ??????
        function alertServerMessage() {
            const msg = '${msg}';

            if (msg === 'reg-success') {
                alert('???????????? ?????? ?????????????????????.');
            }
        }
        
        // ?????? ??????

        function validateFormValue() {
            const $numberInput = document.getElementById('number-input');
            const $nameInput = document.getElementById('name-input');
            const $phoneInput = document.getElementById('phone-input');
            const $addressInput = document.getElementById('address-input');
            const $joinInput = document.getElementById('join-input');
            const $ratingInput = document.getElementById('rating-input');
            const $cityInput = document.getElementById('city-input');
            let flag = false; // ?????? ??????????????? true

            console.log('number: ',$numberInput.value);
            console.log('name: ',$nameInput.value);
            console.log('phone: ',$phoneInput.value);
            console.log('address: ',$addressInput.value);
            console.log('join: ',$joinInput.value);
            console.log('rating: ',$ratingInput.value);
            console.log('city: ',$cityInput.value);

            if ($numberInput.value.trim() === '') {
                alert('????????? ??????????????????~');
            } else if ($nameInput.value.trim() === '') {
                alert('????????? ??????????????????~');
            } else if ($phoneInput.value.trim() === '') {
                alert('????????? ??????????????????~');
            } else if ($addressInput.value.trim() === '') {
                alert('????????? ??????????????????~');
            } else if ($joinInput.value.trim() === '') {
                alert('??????????????? ??????????????????~');
            } else if ($ratingInput.value.trim() !== 'A' &&
            $ratingInput.value.trim() !== 'B' &&
            $ratingInput.value.trim() !== 'C') {
                alert('A, B, C ??? ????????? ???????????????');
            } else if ($cityInput.value.trim() === '') {
                alert('??????????????? ??????????????????~');
            } else {
                flag = true;
            }

            console.log('flag:', flag);

            return flag;
        }

        // ?????? ??????
        const $modBtn = document.getElementById('mod-btn');

        $modBtn.onclick = e => {
            e.preventDefault(); // ??????????????????
            console.log("?????? ??????");
            if (!validateFormValue()) {
                console.log("??????");
                return;
            }
            console.log("?????? ??????");

            // ?????????????????? ?????????
            const $form = document.getElementById('modify-form');
            $form.submit();
        }
        

        //?????? ??????
        const $toList = document.getElementById('to-list');
        $toList.onclick = e => {
            location.href = '/mall/list';
        };

        (function () {

            alertServerMessage(); // ?????????????????????

        })();
    </script>

</body>
</html>