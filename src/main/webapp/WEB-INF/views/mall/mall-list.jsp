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
        .section label {
            width: 200px;
        }
        .section input {
            width: 200px;
        }
        .section h1 {
            font-weight: 700;
            padding: 20px;
        }
        .section table tr th{
            text-align: center;
            font-weight: 700;
            border: 3px solid gray;
        }
        .section table tr td {
            border: 3px solid gray;
            font-weight: 700;
        }
        .section table tr :nth-child(1),
        .section table tr :nth-child(2){
            text-align: center;
            width: 100px;
            /* background: tomato; */
            padding: 5px;
        }
        .section table tr :nth-child(3),
        .section table tr :nth-child(5),
        .section table tr :nth-child(6),
        .section table tr :nth-child(7){
            text-align: center;
            width: 150px;
            /* background: yellow; */
            padding: 5px;
        }
        .section table tr :nth-child(4){
            text-align: center;
            width: 300px;
            /* background: blue; */
            padding: 5px;
        }
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
            <h1>회원목록조회/수정</h1>

            <table>
                <tr>
                    <th>회원번호</th>
                    <th>회원성명</th>
                    <th>전화번호</th>
                    <th>주소</th>
                    <th>가입일자</th>
                    <th>고객등급</th>
                    <th>거주지역</th>
                </tr>

                <c:forEach var="m" items="${mList}">
                    <tr>
                        <td> 
                            <a class="modify" href="/mall/modify/${m.custNo}">${m.custNo}</a>
                        </td>
                        <td>${m.custName}</td>
                        <td>${m.phone}</td>
                        <td>${m.address}</td>
                        <td>${m.joinDate}</td>
                        <td>${m.grade}</td>
                        <td>${m.city}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>

    </div>

    

</body>
</html>