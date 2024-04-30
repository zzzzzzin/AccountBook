<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>게시판</title>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <style>
    .board-section {
      display: flex;
      flex-wrap: wrap;
    }
    
    .board-block {
      position: relative;
      width: calc(50% - 20px);
      margin: 10px;
      padding: 10px;
      border: 1px solid #ddd;
      box-sizing: border-box;
    }
    
    .board-block h3 {
      font-size: 18px;
      font-weight: bold;
      margin-bottom: 10px;
    }
    
    .board-list {
      width: 100%;
      border-collapse: collapse;
    }
    
    .board-list td {
      padding: 8px;
      border-bottom: 1px solid #ddd;
    }
    
    .board-list td:last-child {
      text-align: right;
    }
    
    .more-link {
      position: absolute;
      top: 10px;
      right: 10px;
      color: #999;
      text-decoration: none;
    }
    
    .more-link:hover {
      color: #333;
    }
    
    .material-icons {
      vertical-align: middle;
    }

    .btn {
      display: inline-block;
      padding: 0 30px;
      font-size: 15px;
      font-weight: 400;
      background: transparent;
      text-align: center;
      white-space: nowrap;
      vertical-align: middle;
      -ms-touch-action: manipulation;
      touch-action: manipulation;
      cursor: pointer;
      -webkit-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
      border: 1px solid transparent;
      text-transform: uppercase;
      -webkit-border-radius: 0;
      -moz-border-radius: 0;
      border-radius: 0;
      -webkit-transition: all 0.3s;
      -moz-transition: all 0.3s;
      -ms-transition: all 0.3s;
      -o-transition: all 0.3s;
      transition: all 0.3s;
    }
    

    .btn-dark {
      background: #555;
      color: #fff;
    }
    .btn-dark:hover, .btn-dark:focus {
      background: #373737;
      border-color: #373737;
      color: #fff;
    }

    #board-search .search-window {
      padding: 15px 0;
      background-color: #f9f7f9;
    }
    #board-search .search-window .search-wrap {
      position: relative;
      display: flex;
      align-items: center;
      margin: 0 auto;
      width: 80%;
      max-width: 564px;
    }
    #board-search .search-window .search-wrap select {
      width: 20%;
      height: 40px;
      font-size: 12px;
      padding: 7px 14px;
      border: 1px solid #ccc;
      margin-right: 10px;
    }
    #board-search .search-window .search-wrap input {
      height: 40px;
      width: 70%;
      font-size: 12px;
      padding: 7px 14px;
      border: 1px solid #ccc;
    }
    #board-search .search-window .search-wrap input:focus {
      border-color: #333;
      outline: 0;
      border-width: 1px;
    }
    #board-search .search-window .search-wrap .btn {
      width: 10%;
      height: 40px;
      padding: 0;
      font-size: 12px;
      margin-left: 10px;
    }
    .blind {
      position: absolute;
      overflow: hidden;
      clip: rect(0 0 0 0);
      margin: -1px;
      width: 1px;
      height: 1px;
    }
  <%@include file="/WEB-INF/views/inc/asset.jsp"%>
  </style>
</head>
<body>
  <%@include file="/WEB-INF/views/inc/header.jsp"%>
  <div class="container">
    <div id="board-search">
      <div class="container">
        <div class="search-window">
          <form action="">
            <div class="search-wrap">
              <select>
                <option>제목+내용</option>
                <option>제목</option>
                <option>내용</option>
              </select>
              <label for="search" class="blind">게시판 검색</label>
              <input id="search" type="search" name="" placeholder="검색어를 입력해주세요." value="">
              <button type="submit" class="btn btn-dark">검색</button>
            </div>
          </form>
        </div>
      </div>
    </div>
   
    <div class="board-section">
      <div class="board-block">
        <h3>공지사항</h3>
        <table class="board-list">
          <tbody>
            <tr><td>개시글 제목</td><td>작성</td></tr>
            <tr><td>개시글 제목</td><td>작성</td></tr>
            <tr><td>개시글 제목</td><td>작성</td></tr>
            <tr><td>개시글 제목</td><td>작성</td></tr>
            <tr><td>개시글 제목</td><td>작성</td></tr>
          </tbody>
        </table>
        <a href="/account/board/noticeBoard.do" class="more-link"><i class="material-icons">chevron_right</i></a>
      </div>
      <div class="board-block">
        <h3>자유게시판</h3>
        <table class="board-list">
          <tbody>
            <tr><td>개시글 제목</td><td>작성</td></tr>
            <tr><td>개시글 제목</td><td>작성</td></tr>
            <tr><td>개시글 제목</td><td>작성</td></tr>
            <tr><td>개시글 제목</td><td>작성</td></tr>
            <tr><td>개시글 제목</td><td>작성</td></tr>
          </tbody>
        </table>
        <a href="/account/board/freeBoard.do" class="more-link"><i class="material-icons">chevron_right</i></a>
      </div>
      <div class="board-block">
        <h3>건의사항</h3>
        <table class="board-list">
          <tbody>
            <tr><td>개시글 제목</td><td>작성</td></tr>
            <tr><td>개시글 제목</td><td>작성</td></tr>
            <tr><td>개시글 제목</td><td>작성</td></tr>
            <tr><td>개시글 제목</td><td>작성</td></tr>
            <tr><td>개시글 제목</td><td>작성</td></tr>
          </tbody>
        </table>
        <a href="/account/board/reportBoard.do" class="more-link"><i class="material-icons">chevron_right</i></a>
      </div>
      <div class="board-block">
        <h3>출석게시판</h3>
        <table class="board-list">
          <tbody>
            <tr><td>개시글 제목</td><td>작성</td></tr>
            <tr><td>개시글 제목</td><td>작성</td></tr>
            <tr><td>개시글 제목</td><td>작성</td></tr>
            <tr><td>개시글 제목</td><td>작성</td></tr>
            <tr><td>개시글 제목</td><td>작성</td></tr>
          </tbody>
        </table>
        <a href="/account/board/attendanceBoard.do" class="more-link"><i class="material-icons">chevron_right</i></a>
      </div>
    </div>
  </div>
</body>
</html>
