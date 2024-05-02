<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
	.sidebar {
        width: 300px;
        background-color: #333;
        color: #fff;
        height: 100vh;
}

      .logo {
        padding: 20px;
        font-size: 20px;
        font-weight: bold;
        border-bottom: 1px solid #444;
      }

      nav ul {
        list-style-type: none;
        padding: 0;
        margin: 0;
      }

      nav li {
        padding: 15px 20px;
        border-bottom: 1px solid #444;
      }

      nav li:last-child {
        border-bottom: none;
      }

      nav a {
        color: #fff;
        text-decoration: none;
        display: flex;
        align-items: center;
      }

      nav a i {
        margin-right: 10px;
      }

    .sidebar.hidden {
        width: 0;
        overflow: hidden;
        transition: width 0.5s ease;
    }

    .content.expanded {
        margin-left: 0;
        transition: margin-left 0.5s ease;
    }
</style>
</head>

<div class="sidebar">
            <div class="logo">이미지</div>

          </div>
<script>
		
</script>

</html>