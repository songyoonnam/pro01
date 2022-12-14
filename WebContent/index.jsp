<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<head>
<%@ include file="head.jsp" %>
</head>

   <link rel="stylesheet" href="./css/reset2.css">
   <link rel="stylesheet" href="./css/header.css">

        <style>
    /* header.css */

    .content { clear:both; width: 100%;}
    .vs { clear:both; width: 100%; height:100vh; overflow:hidden;}
    .vdo { display:block; width:100%; height:auto; }
    .page { clear:both; width: 100%;}
    .page_wrap {width: 1200px; margin: 0 auto;}
    .page_tit { text-align: center; font-size:32px; padding-top: 1.2em; padding-bottom: 0.8em;}
    .lst { clear:both; width: 1200px;}
    .lst:after { content:""; display:block; clear:both; }
    .lst li { margin-bottom: 40px;}
    .lst li.left { float:left; width: 816px; height: 459px;}
    .lst li.right { float:right; width: 350px; height: 459px;}
    .ico_lst { clear: both; width: 100%; overflow: hidden;}
    .ico_lst li a { display: block; background-repeat: no-repeat; background-position: 0px center; background-size: auto 80%; padding-left: 80px;}
    .ico_lst li a.icon1 { background-image: url("./img/icon/1.svg"); background-size: 45px; }
    .ico_lst li a.icon2 { background-image: url("./img/icon/2.svg"); background-size: 48px; }
    .ico_lst li a.icon3 { background-image: url("./img/icon/3.svg"); background-size: 43px; }
    .cate_tit { color: #000; font-size: 20px; padding-bottom: 0.5em;}
    .cate_com { color:#000; font-size: 14px;}
    
    .pic_lst { clear: both; width: 100%; padding-bottom: 80px;}
    .pic_lst:after { content: ""; display: block; clear: both;}
    .pic_lst li { float: left; position: relative; margin-bottom: 40px;}
    .pic_lst li a { display: block; width: 360px; margin-right: 40px; overflow: hidden; height:360px;}
    .pic_lst li a img {display: block; width:360px; height:auto; }
    .pic_lst li a:hover img { margin-left: 0; }
    .pic_lst li a .hv_box { width: 360px; height: 300px; color:#fff; opacity:0; position:absolute; top:0; left: 0; z-index:10; transition-duration:0.8s; background-color:transparent; }
    .pic_lst li a:hover .hv_box { opacity:1; }
    .pic_tit { position:absolute; top:30px; left: 30px; 
    text-shadow:0px 0px 3px #000; }
    .pic_com { position:absolute; right:30px; bottom:30px; 
    background-color: rgba(152, 247, 0, 0.739); color: #000; border-radius:9px;}

    #page3 { background-repeat: no-repeat; 
    background-size: cover; 
    background-position:center; height: 100vh; overflow:hidden; }
    #page3 .page_wrap { width: 100%; }
    .circle_lst { clear:both; width: 4455px; }
    .circle_lst li { width: 200px; height: 200px; position:relative; border-radius:120px; overflow:hidden; background-color: #fff;
    float:left; margin:28px;  }
    .circle_lst.lst2 li { float:right; }
    .circle_lst li a { display:block; width: 100%; height: 100%; }
    .circle_lst li a img { display:block; width:190px; height:auto; 
    position:absolute; top:50%; left: 7px; z-index:11; margin-top: -90px; }
  
	.banner_wraper { height: 220px; width: 1900px; position: absolute; overflow: hidden; }
	.banner_wraper img { width:220px; height: auto; position: absolute;  }

    /* footer */

    </style>
    <link rel="stylesheet" href="./css/footer.css">
    <script>
    $(document).ready(function(){
        $(".hd").css("position", "absolute");
        $("<ul class='circle_lst lst2'></ul>").insertAfter($(".circle_lst"));
        $lst1_obj = $(".circle_lst li").clone();
        $(".circle_lst.lst2").append($lst1_obj);
    });    
    </script>

    <body>
<div class="wrap">
 <header class="hd">
 
 <%@ include file="nav.jsp" %>
 
 </header>
 
<div class="content">
    <figure class="vs">
        <video src="./video/20.mp4" autoplay muted loop class="vdo"></video>
    </figure>
    <section class="page" id="page1">
        <div class="page_wrap"> 
             <h2 class="page_tit">TWISTED TWENTY OF LUSH KOREA</h2>
             <ul class="lst">
                 <li class="left">
                     <iframe name="vdo2" id="vdo2" width="816" height="459" src="https://www.youtube.com/embed/XuyYexBNGXg" title="20 YEARS SHOWCASE ????????? ????????? ???????????? ?????????" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                 </li>
                 <li class="right">
                     <ul class="ico_lst">
                         <li>
                             <a href="https://booking.naver.com/booking/5/bizes/767042" target="_blank" class="icon1"> 
                                 <h3 class="cate_tit">???????????? ?????? ????????????</h3>
                                 <p class="cate_com">?????? LAYER 57<br>(??????????????? ????????? ???????????? 20??? 57)</p>
                             </a>
                         </li>
                         <li>
                             <a href="https://www.youtube.com/embed/XuyYexBNGXg" target="vdo2" class="icon2"> 
                                 <h3 class="cate_tit">???????????? ?????????</h3>
                                 <p class="cate_com">??????????????? | ?????? | ??? | ???????????? <br>????????? | ????????? | ????????? | ????????????</p>
                             </a>
                         </li>
                         <li>
                             <a href="https://www.youtube.com/embed/XuyYexBNGXg" target="vdo2" class="icon3"> 
                                 <h3 class="cate_tit">20?????? ???????????? ??????</h3>
                                 <p class="cate_com">'???????????? ??????' ???????????? ?????? ??????!</p>
                             </a>
                         </li>
                     </ul>
                 </li>
             </ul>
         </div>
     </section>
     <section class="page" id="page2">
         <div class="page_wrap">
             <h2 class="page_tit">ATTENTION</h2>
             <ul class="pic_lst">
                 <li>
                     <a href="https://www.lush.co.kr/mypage/view/1920">
                         <img src="./img/index/logo3.jpg"  width="600" height: auto alt="????????????" class="pic"> 
                         <div class="hv_box">
                             <h3 class="pic_tit">????????????</h3>
                             <p class="pic_com">&nbsp;???????????? ???????????? ?????? ???????????? ?????????&nbsp;</p>
                         </div>
                     </a>
                 </li>
                 <li>
                     <a href="https://www.lush.co.kr/board/article/22284">
                         <img src="./img/index/ralph.PNG"  width="600" height: auto alt="?????? ???????????? ?????????" class="pic">
                         <div class="hv_box">
                             <h3 class="pic_tit">?????? ???????????? ?????????</h3>
                             <p class="pic_com">&nbsp;????????????????????? ????????? ?????? ??????&nbsp;</p>
                         </div>
                     </a>
                 </li>
                 <li>
                     <a href="https://www.lush.co.kr/event/view/1034?eventStatus=">
                         <img src="./img/index/20.png"  width="600" height: auto alt="?????? ????????? ?????? ??????????????? ?????????" class="pic"> 
                         <div class="hv_box">
                             <h3 class="pic_tit">?????? ????????? ?????? ??????????????? ?????????</h3>
                             <p class="pic_com">&nbsp;20 YEARS SHOWCASE&nbsp;</p>
                         </div>
                     </a>
                 </li>
                 <li>
                     <a href="https://www.lush.co.kr/event/view/1031?eventStatus=3&page=1&where=CONT_SUBJECT&query=&_csrf=21636d61-c34a-4f10-939d-e6626911bef0">
                         <img src="./img/index/letter.png"  width="600" height: auto alt="?????? ????????? ?????? ??????????????? ?????????" class="pic"> 
                         <div class="hv_box">
                             <h3 class="pic_tit">?????? ????????? ?????? ??????????????? ?????????</h3>
                             <p class="pic_com">&nbsp;????????? ????????? ??????????????? ??????!&nbsp;</p>
                         </div>
                     </a>
                 </li>        
                 <li>
                    <a href="https://www.lush.co.kr/event/view/1032?eventStatus=">
                        <img src="./img/index/halloween.PNG"  width="600" height: auto alt="?????? ????????? ?????? ??????????????? ?????????" class="pic">
                        <div class="hv_box">
                            <h3 class="pic_tit">?????? ????????? ?????? ??????????????? ?????????</h3>
                            <p class="pic_com">&nbsp;2022 ????????? ????????? ??????&nbsp;</p>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="https://www.lush.co.kr/event/view/1019?eventStatus=">
                        <img src="./img/index/artfare.PNG"  width="600" height: auto alt="?????? ????????? ?????? ??????????????? ?????????" class="pic">
                        <div class="hv_box">
                            <h3 class="pic_tit">?????? ????????? ?????? ??????????????? ?????????</h3>
                            <p class="pic_com">&nbsp;?????? ????????????&nbsp;</p>
                        </div>
                    </a>
                </li>         
             </ul>
         </div>
     </section>
     <section class="page" id="page3">
         <div class="page_wrap">
             <h2 class="page_tit">BEST</h2> 
             <ul class="banner_wraper">
                 <li><a href="https://www.lush.co.kr/products/view/1000001504?dc=standard"><img src="./img/thumb/1supermilk.png" alt="?????????01" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/1000001455?dc=standard"><img src="./img/thumb/2beautysleep.png" alt="?????????02" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/1000001344?dc=standard"><img src="./img/thumb/3orange.png" alt="?????????03" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/1000001226?dc=standard"><img src="./img/thumb/4sleepybubblebar.png" alt="?????????04" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/1000000662?dc=standard"><img src="./img/thumb/5sleepysoap.png" alt="?????????05" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/508?dc=standard"><img src="./img/thumb/6sleepyshowergel.png" alt="?????????06" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/342?dc=standard"><img src="./img/thumb/7theolivebranchshowergel.png" alt="?????????07" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/333?dc=standard"><img src="./img/thumb/8rosearganbodyconditioner.png" alt="?????????08" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/246?dc=standard"><img src="./img/thumb/9dirtybodyspray.png" alt="?????????09" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/238?dc=standard"><img src="./img/thumb/10dirtyspringwashshowergel.png" alt="?????????10" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/220?dc=standard"><img src="./img/thumb/11sleepybodylotion.png" alt="?????????11" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/205?dc=standard"><img src="./img/thumb/12teatreewatertoner.png" alt="?????????12" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/190?dc=standard"><img src="./img/thumb/13outbackmatesoap.png" alt="?????????13" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/174?dc=standard"><img src="./img/thumb/14intergalactic.png" alt="?????????14" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/150?dc=standard"><img src="./img/thumb/15butterball.png" alt="?????????15" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/97?dc=standard"><img src="./img/thumb/16maskofmagnaminty.png" alt="?????????16" class="thumb"></a></li>
                 <li><a href="https://www.lush.co.kr/products/view/93?dc=standard"><img src="./img/thumb/17rubrubrub.png" alt="?????????17" class="thumb"></a></li>
             </ul>
         </div>
     </section>
 </div>

<script type="text/javascript">

            //client rolling banner
   window.onload = function() {
            var bannerLeft=0;
            var first=1;
            var last;
            var imgCnt=0;
            var $img = $(".banner_wraper img");
            var $first;
            var $last;

            $img.each(function(){   // 5px ???????????? ?????? ?????? ?????? ??????
                $(this).css("left",bannerLeft);
                bannerLeft += $(this).width()+8;
                $(this).attr("id", "banner"+(++imgCnt));  // img??? id ?????? ??????
            });

            
            if( imgCnt > 9){                //?????? 9??? ???????????? ????????????



                last = imgCnt;

                setInterval(function() {
                    $img.each(function(){
                        $(this).css("left", $(this).position().left-1); // 1px??? ???????????? ??????
                    });
                    $first = $("#banner"+first);
                    $last = $("#banner"+last);
                    if($first.position().left < -200) {    // ?????? ?????? ?????? ?????? ?????? ??????
                        $first.css("left", $last.position().left + $last.width()+1 );
                        first++;
                        last++;
                        if(last > imgCnt) { last=1; }   
                        if(first > imgCnt) { first=1; }
                    }
                }, 99);   //?????? ?????? ???????????? ????????? ????????? ??? ??????.(?????? 1px ???????????? ????????? ???????????? 

//???????????? ??????????????????           

 }

};

</script>
<footer class="ft">
<%@ include file="footer.jsp" %>
</footer>
</div>
</body>
</html>