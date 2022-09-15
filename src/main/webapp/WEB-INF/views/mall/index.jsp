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
        }
        .section h1 {
            text-align: center;
            font-weight: 700;
            padding: 10px;
        }
        .section p {
            padding: 2px;
        }
        footer {
            color: white;
            background: blue;
            text-align: center;
            padding: 10px;
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
                <a class="list" href="/mall/list">회원목록조회/수정</a>
            </div>
            <div class="btn-write">
                <a class="sales" href="/mall/sales">회원매출조회</a>
            </div>
            <div class="btn-write">
                <a class="index" href="/mall/">홈으로</a>
            </div>
        </div>

        <div class="section">
            <h1>쇼핑몰회원관리 프로그램</h1>
            <p>쇼핑몰회원정보와 회원매출정보 데이터베이스를 구축하고 회원관리
                프로그램을 작성하는 프로그램이다
            </p>
            <p>프로그램 작성 순서</p>
            <p>1.회원정보 테이블에 생성한다</p>
            <p>2.매출정보 테이블을 생성한다</p>
            <p>3.회원정보,매출정보테이블에 제시된문제지와 참조데이터를 추가 생성한다.</p>
            <p>4.회원정보 입력 화면프로그램을 작성한다.</p>
            <p>5.회원정보 조회 프로그램을 작성한다.</p>
            <p>6.회원매출정보 조회 프로그램을 작성한다.</p>
        </div>

        <footer>
            <p>HRDKOREA Copy</p>
        </footer>

    </div>

    

</body>
</html>