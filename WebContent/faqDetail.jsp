<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*, java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String sid = (String) session.getAttribute("id");
	int no = Integer.parseInt(request.getParameter("no"));
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

    .frm { border:2px solid #333; padding: 24px; width: 780px; margin:50px auto; }
    .tb { display:table; margin:40px auto; width:600px; border-collapse:collapse;  font-size:13px; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border-bottom:1px solid #000; color:#000; border-left:2px solid #fff; border-right:1px solid #fff; background-color:#fff; 
    width:120px; }
    .tb td { height: 48px; border-bottom:1px solid #000; text-align:left;
    padding-left:80px; border-right:2px solid #fff; }
    .tb tr:first-child th { border-top:2px solid #000; }
    .tb tr:first-child td { border-top:2px solid #000; }
    .tb tr:last-child th { border-bottom:2px solid #000; }
    .tb tr:last-child td { border-bottom:2px solid #000; }
    
	.btn_group { clear:both; width:580px; margin:20px auto; }
	.btn_group .btn { display:block; float:left; margin:20px; margin-left:40px; min-width:100px; padding:8px; font-size:13px;
	line-height:24px; border:1.5px solid; text-align:center; }
	.btn_group .btn.primary { background-color:transparent; color:#000; }
	.btn_group .btn.primary:hover { border-color: transparent; background-color:#fff; color:#000; transition-duration:0.8s; }
    </style>
    <link rel="stylesheet" href="./css/footer.css">
</head>
<body>
<%@ include file="connectionPool.conf" %>
<div class="wrap">
    <header class="hd">
		<%@ include file="nav.jsp" %>
    </header>
    <div class="content">
        <figure class="vs">
            <img src="./img/water.jpg" alt="?????????">
        </figure>
        <div class="bread">
            <div class="bread_fr">
                <a href="index.jsp" class="home">HOME</a> &gt;
                <span class="sel">FAQ ????????????</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">FAQ</h2>
  				<div class="tb_fr">
  					<table class="tb">
<%
		sql = "select * from faqa where no=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setInt(1, no);
		rs = pstmt.executeQuery();
		String author = ""; 
		if(rs.next()){
%>
  						<tbody>  
							<tr>
								<th>??????</th>
								<td><%=rs.getString("title") %></td>
							</tr>
							<tr>
								<th>??????</th>
								<td><%=rs.getString("content") %></td>
							</tr>
						</tbody> 
					<%
							}
					%>
					</table>
					<div class="btn_group">
						<a href="faq.jsp" class="btn primary">??????</a>
						<%
							if(sid.equals("admin")) {
						%>
						<a href='faqModify.jsp?no=<%=no %>' class="btn primary">??????</a>
						<a href='faqDel.jsp?no=<%=no %>' class="btn primary">??????</a>
						<% } %>
					</div>
				</div>
			</div>
        </section>
    </div>
    <footer class="ft">
		<%@ include file="footer.jsp" %>
    </footer>
</div>
<%@ include file="connectionClose2.conf" %>
</body>
</html>