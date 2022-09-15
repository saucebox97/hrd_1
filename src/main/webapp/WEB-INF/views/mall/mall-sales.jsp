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
            <h1>회원매출조회</h1>

            <table>
                <tr>
                    <th>회원번호</th>
                    <th>회원성명</th>
                    <th>고객등급</th>
                    <th>매출</th>
                </tr>

                <c:forEach var="m" items="${mList}">
                    <tr>
                        <td>${m.custNo}</td>
                        <td>${m.custName}</td>
                        <td>${m.rating}</td>
                        <td>${m.sales}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>

    </div>

</body>
</html>