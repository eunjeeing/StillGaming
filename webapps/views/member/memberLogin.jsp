<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Anime Template">
    <meta name="keywords" content="Anime, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Still Gaming | 로그인</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"
    rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Amiko' rel='stylesheet'>
    <!-- Css Styles -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/plyr.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/resources/css/style.css" type="text/css">
    
        <script src="<%= request.getContextPath() %>/resources/js/jquery-3.3.1.min.js"></script>
    
<style>


html, body {
	background: #EAEAEA;
	color : black;
}

#eye {
	margion-left: 50px;
	color: #b7b7b7;
	position: absolute;
	left: 335px;
	top: 13px;
}


</style>

</head>
<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

	<%@ include file="../common/header.jsp" %>

    <!-- Login Section Begin -->
<div style="background: #EAEAEA; color:black;">
<br />
<br />
<br />
<br />
<br />
    <section class="login spad" >
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="login__form">
                        <h3 class="wow fadeIn" data-wow-delay="0.6s" style="color: black;">Login</h3>
                        
                        <form id="loginForm" action="/StillGaming/login.me" method="post">
                        
                            <div class="input__item" >
                                <input type="text" name="memberId" placeholder="ID" >
                            	<span class="icon_id"></span>
                            </div>
                            
                            <div class="input__item">
                                <span class="icon_lock"></span>
                                <input type="password" name="memberPwd" id="memberPwd" placeholder="Password">
                            	<span class="fa fa-eye" id="eye" ></span>
                            </div>
                            <button type="submit" onclick='login()' class="site-btn">Login Now</button>
                            
                        </form>
                    
                        <a href="memberSearch.jsp" class="forget_pass" style="color: black; text-align: right;">아이디 | 비밀번호 찾기</a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login__register">
                        <br />
                        <br />
                        <br />
                        <h5 style="color: black;">Dont’t Have An Account?</h5>
                        <br />
                        <a href="memberJoin.jsp" class="primary-btn">Register Now</a>
                    </div>
                    </div>
                </div>
           </div>  
<br />
<br />
<br />
<br />
<br />
<br />

      </section>
</div>
    <!-- Login Section End -->

	<%@ include file="../common/footer.jsp" %>
	
	<script>
	function login(){
		$('#loginForm').submit();
	}

		$(document).ready(function(){
		    $('#eye').on('click',function(){
		        $('input').toggleClass('active');
		        if($('input').hasClass('active')){
		            $(this).attr('class',"fa fa-eye-slash")
		            .prev('input').attr('type','text');
		        }else{
		            $(this).attr('class',"fa fa-eye")
		            .prev('input').attr('type','password');
		        }
		    });
		});


	</script>

    <!-- Js Plugins -->
    <script src="<%= request.getContextPath() %>/resources/js/bootstrap.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/js/player.js"></script>
    <script src="<%= request.getContextPath() %>/resources/js/jquery.nice-select.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/js/mixitup.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/js/jquery.slicknav.js"></script>
    <script src="<%= request.getContextPath() %>/resources/js/owl.carousel.min.js"></script>
    <script src="<%= request.getContextPath() %>/resources/js/main.js"></script>


</body>

</html>