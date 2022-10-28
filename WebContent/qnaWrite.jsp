<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String sid = (String) session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
	<%@ include file="head.jsp" %>
    <link rel="stylesheet" href="./css/reset2.css">
    <link rel="stylesheet" href="./css/header.css">
    <style>
    /* header.css */
    .hd { position:fixed; }

    /* content */
    .vs { clear:both; width: 100%; height:300px; overflow: hidden; }
    .vs img { display:block; width: 100%; height:auto; }
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #fff; }
    .bread_fr { width: 1200px; margin: 0 auto;  font-size:13px; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }

    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }

    .frm1 { padding: 24px; width: 960px; margin:50px auto; }
    .tb { display:table; margin:0 auto; width:900px; border-collapse:collapse;  font-size:13px; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border-bottom:1px solid #000; color:#000; background-color:#fff; 
    width:150px; box-sizing:border-box; }
    .tb td { height: 48px; border-bottom:1px solid #000; text-align:left;
     border-right:2px solid #fff;
    width:600px; box-sizing:border-box; padding:8px; }
    .tb tr:first-child th { border-top:2px solid #000; }
    .tb tr:first-child td { border-top:2px solid #000; }
    .tb tr:last-child th { border-bottom:2px solid #000; }
    .tb tr:last-child td { border-bottom:2px solid #000; }
	.btn_group { clear:both; width:580px; margin:20px auto; }
	.btn_group .btn { display:block; float:left; margin:20px; margin-left:120px; min-width:100px; padding:8px; font-size:13px;
	line-height:24px; border:1.5px solid; text-align:center; }
	.btn_group .btn.primary { background-color:#fff; color:#000; }
	.btn_group .btn.primary:hover { border-color: transparent; background-color:#fff; color:#000; transition-duration:0.8s;  }
	.in_data { display:block; float:left; line-height:36px; padding-left:6px; padding-right:550px; color:#000; border: transparent;}
	textarea { padding:6px; border: transparent;}
    </style>
    <link rel="stylesheet" href="./css/footer.css">
	<title>문의하기</title>
</head>
<body>
<header class="hd">
	<%@ include file="nav.jsp" %>
</header>
<div class="content">
       <figure class="vs">
           <img src="./img/water.jpg" alt="비주얼">
       </figure>
       <div class="bread">
           <div class="bread_fr">
               <a href="index.jsp" class="home">HOME</a> &gt;
               <span class="sel">문의하기</span>
           </div>
       </div>
       <section class="page">
           <div class="page_wrap">
               <h2 class="page_title">문의하기</h2>
			<div class="frm1">
				<form name="frm" class="frm" action="qnaWritePro.jsp" method="post">
					<table class="tb">
						<tbody>
							<tr>
								<th><label for="title">문의사항</label></th>
								<td><input type="text" name="title" id="title" placeholder="문의사항 입력" maxlength="100" class="in_data" required></td>
							</tr>
							<tr>
								<th><label for="author">작성자</label></th>
								<td>
									<input type="text" name="author" id="author" class="in_data" value='<%=sid %>' readonly required>
									<input type="hidden" name="lev" id="lev" value="0">
								</td>
							</tr>
							<tr>
								<th><label for="content">문의 내용</label></th>
								<td>
									<textarea cols="100" rows="10" name="content" id="content" placeholder="문의 내용 입력" maxlength="600" required class="in_data2"></textarea>
								</td>
							</tr>
							<tr>
								<th><label for="sec1">비밀글</label></th>
								<td>
									<input type="radio" name="sec" id="sec1" value="N" checked>
									<label for="">전체공개</label>&nbsp;
									<input type="radio" name="sec" id="sec2" value="Y">
									<label for="">비밀글</label>
								</td>
							</tr>
						</tbody>
					</table>
					<div class="btn_group">
						<button type="submit" class="btn primary">글쓰기</button>
						<a href="qnaList.jsp" class="btn primary">목록</a>
					</div>
				</form>
			</div>
		</div>
	</section>
</div>
<footer class="ft">
	<%@ include file="footer.jsp" %>
</footer>
</body>
</html>
