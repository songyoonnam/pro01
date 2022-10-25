<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset=UTF-8");
	
	String no = request.getParameter("no");
	String title = "";
	String author = "";
	String resdate = "";
	String content = "";
	
	Connection con = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	String url = "jdbc:oracle:thin:@localhost:1521:xe";
	String dbid = "test3";
	String dbpw = "9876";
	String sql = "";
	
	try {
		Class.forName("oracle.jdbc.OracleDriver");
		con = DriverManager.getConnection(url, dbid, dbpw);
		sql = "select * from boarda where no=?";
		pstmt = con.prepareStatement(sql);
		pstmt.setString(1, no);
		//select된 데이터가 없으면, rs=null이 됨
		rs = pstmt.executeQuery();
		//int cnt = pstmt.executeUpdate();
		
		if(rs.next()){
			no = rs.getString("no");
			title = rs.getString("title");
			author = rs.getString("author");
			resdate = rs.getString("resdate");
			content = rs.getString("content");
		}
	} catch(Exception e){
		e.printStackTrace();
	} finally {
		rs.close();
		pstmt.close();
		con.close();
	}
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
    .bread { clear:both; width: 100%; line-height: 60px; border-bottom:3px solid #eee; }
    .bread_fr { width: 1200px; margin: 0 auto; }
    .page { clear:both; width: 100%; min-height:100vh;}
    .page:after { content:""; display:block; clear:both; }
    .page_wrap { width: 1200px; margin: 0 auto; }

    .page_title { padding-top: 1em; text-align: center; }
    .home { color:#333; }

    .frm { border:2px solid #333; padding: 24px; width: 780px; margin:50px auto; }
    .tb { display:table; margin:40px auto; width:580px; border-collapse:collapse; }
    .tb tr { display:table-row; }
    .tb td, .tb th { display:table-cell; }
    .tb th { height: 48px; border-bottom:2px solid #000; border-top:2px solid #000; 
    color:#fff; background-color:#000; }
    .tb td { height: 48px; border-bottom:1px solid #000; border-top:1px solid #000; border-right:1px solid #000; text-align:center; }
	.tb tr th:first-child { width:80px; text-align:center; }
	.tb tr th:nth-child(2) { width:160px; text-align:center; }
	.tb tr th:nth-child(3) { width:160px; text-align:center; }
	.tb tr th:last-child { text-align:center; }
    </style>
    <link rel="stylesheet" href="./css/footer.css">
</head>
<body>
<div class="wrap">
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
                <span class="sel">글 목록</span>
            </div>
        </div>
        <section class="page">
            <div class="page_wrap">
                <h2 class="page_title">글 목록</h2>
  				<div class="tb_fr">
  					<table class="tb">
  						<tbody>             
							<tr>
								<th>번호</th>
								<td><%=no %></td>
							</tr>
							<tr>
								<th>제목</th>
								<td><%=title %></td>
							</tr>
							<tr>
								<th>작성자</th>
								<td><%=author %></td>
							</tr>
							<tr>
								<th>작성일</th>
								<td><%=resdate %></td>
							</tr>
							<tr>
								<th>내용</th>
								<td><%=content %></td>
							</tr>
						</tbody> 
					</table>
					<a href="boardList.jsp">글 목록</a>
				</div>
			</div>
        </section>
    </div>
    <footer class="ft">
		<%@ include file="footer.jsp" %>
    </footer>
</div>
</body>
</html>